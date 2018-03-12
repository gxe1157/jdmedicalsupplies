<?php
class Cart extends MX_Controller 
{

private $gateway_company = '';

function __construct() {
    parent::__construct();
    $this->load->module('site_security');
    $this->gateway_company = 'authorize_net';

}


/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
   =================================================== */
   
function index()
{
    $data['flash'] = $this->session->flashdata('item');
    $session_id = $this->session->cart_id;
    $shopper_id = $this->site_security->_get_user_id();

    if (!is_numeric($shopper_id))
            $shopper_id = 0;

    $table = 'store_basket';
    $data['query'] = $this->_fetch_cart_contents($session_id, $shopper_id, $table);

    //count the number of items in the cart
    $data['num_rows'] = $data['query']->num_rows();
    $data['showing_statement'] = $this->_get_showing_statement($data['num_rows']);

    $data['view_module'] = 'cart';    
    $data['show_state'] = 'none'; // billto ans shipto box at pay_now.php

    $data['payment_gateway'] = $this->gateway_company;
    $data['page_url'] = uri_string()=='process_payment' ? 'pay_now':'cart';

    $this->load->module('templates');
    $this->templates->public_main($data);
}

function checkout()
{

    $shopper_id = $this->site_security->_get_user_id();

    if (is_numeric($shopper_id)) {
        redirect('cart');
    }

    $data['checkout_token'] = $this->uri->segment(3);
    $data['flash'] = $this->session->flashdata('item');
    $data['view_module'] = 'cart';    
    $data['page_url'] = "go_to_checkout";

    $this->load->module('templates');
    $this->templates->public_main($data);
}


function _attempt_draw_checkout_btn($query)
{
    $data['query'] = $query;
    $shopper_id = $this->site_security->_get_user_id();
    $third_bit = $this->uri->segment(3);
    $uri = uri_string();

    if ((!is_numeric($shopper_id)) AND ($third_bit=='') AND ($uri != 'billTo_shipTo') AND ($uri != 'process_payment') ){
        $this->_draw_checkout_btn_fake($query);
    } else {
        $this->_draw_checkout_btn_real($query);
    }
}

function _draw_checkout_btn_fake($query)
{
    foreach($query->result() as $row) {
        $session_id = $row->session_id;
    }
    // $data['checkout_token'] = $this->_create_checkout_token($session_id);
    $this->load->view('checkout_btn_fake');
}

function _draw_checkout_btn_real($query)
{
    $this->load->module('payeezy');
    $this->payeezy->_draw_checkout_btn($query);
}

function _draw_cart_contents($query, $user_type)
{
    //NOTE: user_type can be 'public' or 'admin'
    $this->load->module('site_settings');
    $this->load->module('shipping');

    $data['currency_symbol'] = $this->site_settings->_get_currency_symbol();
    $data['taxRate'] = $this->shipping->_get_tax();
    $data['tax_shipping'] = $this->shipping->_get_tax_opt(); // Some states tax shipping.
    $data['shipping'] = $this->shipping->_get_shipping();
    $data['query'] = $query;

    /* Set view cart option here */ 
    $view_file = $user_type=='public' ? 'cart_contents_public' : 'cart_contents_admin';
    $this->load->view($view_file, $data);
}

function _get_showing_statement($num_items)
{
    if ($num_items==1) {
        $showing_statement = "You have one item in your shopping basket.";
    } else {
        $showing_statement = "You have ".$num_items." items in your shopping basket.";
    }
    return $showing_statement;
}

function _fetch_cart_contents($session_id, $shopper_id, $table)
{
    //fetch the contents of the shopping cart
    $this->load->module('store_basket');
    $mysql_query = "
        SELECT $table.*, 
            store_items.active_image, 
            store_items.prd_url
        FROM $table LEFT JOIN store_items ON $table.item_id = store_items.id";

    if ($shopper_id>0) {
        $where_condition =
             " WHERE $table.shopper_id='$shopper_id' and $table.cart_id='$session_id'";
    } else {
        $where_condition = " WHERE $table.cart_id='$session_id'";
    }

    $mysql_query.=$where_condition;
    $query = $this->store_basket->_custom_query($mysql_query);
    return $query;
}

function _draw_add_to_cart($item_id)
{
    $this->load->module('store_item_colors');

    //fetch the color options for this item
    $submitted_color = $this->input->post('submitted_color', TRUE);
    if ($submitted_color=="") {
        $color_options[''] = "Select...";
    }

    $query = $this->model_name->get_view_data_custom('item_id', $item_id, 'store_item_colors', null);
    $data['num_colors'] = $query->num_rows();
    foreach ($query->result() as $row) {
        $color_options[$row->id] = $row->color;
    }

    //fetch the size options for this item
    $submitted_size = $this->input->post('submitted_size', TRUE);
    if ($submitted_size=="") {
        $size_options[''] = "Select...";
    }

    $query = $this->model_name->get_view_data_custom('item_id', $item_id, 'store_item_sizes', null);    
    $data['num_sizes'] = $query->num_rows();
    foreach ($query->result() as $row) {
        $size_options[$row->id] = $row->size;
    }

    $data['submitted_color'] = $submitted_color;
    $data['submitted_size'] = $submitted_size;
    $data['color_options'] = $color_options;
    $data['size_options'] = $size_options;
    $data['item_id'] = $item_id;
    $this->load->view('add_to_cart', $data);
}


function goto_gateway()
{
    $this->load->helper('store_accounts/gateway_flds_helper');
    $this->column_rules = get_fields();

    /* This is to control variables on post to client side */
    $edit_mode = $this->uri->segment(2);
    if( !empty($edit_mode) ) {
        $ship_method = $_SESSION['ship_method'];
        $_POST = $_SESSION;
        $_POST[$ship_method] = 1; // Should be one ship method 

        unset($_POST['__ci_last_regenerate']);
        unset($_POST['cart_id']);
        unset($_POST['submit']);
        unset($_SESSION['ship_method']);
    }

    $ready_gateway = 0;

    $submit = $this->input->post('submit',true);
    if($submit == 'Submit'){
        $this->load->library('form_validation');
        $this->form_validation->set_rules( $this->column_rules );

        if($this->form_validation->run() == TRUE) {
            // save to session
            $data = $this->input->post(null,true);
            list( $chkbx_array, $chkbx_selected, $chkbx_name, $chkbx_text ) = $this->checkbox();
            $data['ship_method'] = $chkbx_name;

            $this->session->set_userdata($data);
            unset($_SESSION['ship_ground']);
            unset($_SESSION['ship_2days']);
            unset($_SESSION['ship_nextday']);                        
            redirect('cart/get_payment_method/1');                         
        }

    }

    $data = $this->build_data($data);        
    $data['ready_gateway'] = $ready_gateway;
    $data['show_state'] ='block';

    list( $data['chkbx_array'], $data['chkbx_selected'], $data['chkbx_name'], $data['chkbx_text'] ) = $this->checkbox();

    $data['payment_gateway'] = $this->gateway_company;
    $data['view_module'] = 'cart';    
    $data['page_url'] = 'pay_now';

    $this->load->module('templates');
    $this->templates->public_main($data);   
}

function get_payment_method()
{
    $ship_method = $_SESSION['ship_method'];
    $data = $_SESSION;
    unset($data['__ci_last_regenerate']);
    unset($data['cart_id']);
    unset($data['submit']);
    unset($_SESSION['ship_method']);

    $check_gateway = 1;
    $data = $this->build_data($data);        
    $data['ready_gateway'] = $check_gateway == '1' ? 1 : $data['ready_gateway'];
    $data['show_state'] ='block';

    list( $data['chkbx_array'], $data['chkbx_selected'], $data['chkbx_name'], $data['chkbx_text'] ) = $this->checkbox();

    $data['payment_gateway'] = $this->gateway_company;
    $data['view_module'] = 'cart';    
    $data['page_url'] = 'pay_now';

    $this->load->module('templates');
    $this->templates->public_main($data);   

}


function checkbox()
{
    $chkbx_name = ["ship_ground", "ship_2days","ship_nextday"];
    $chkbx_text = ["Ground", "2 Days", "Next Day"];

    $chkbx_array[] = ( isset($_POST['ship_ground']) &&  !empty($_POST['ship_ground'] ) ) ? 'checked="checked"' : '';
    $chkbx_array[] = ( isset($_POST['ship_2days']) &&  !empty($_POST['ship_2days'] ) ) ?  'checked="checked"' : '';
    $chkbx_array[] = ( isset($_POST['ship_nextday']) &&  !empty($_POST['ship_nextday'] ) ) ? 'checked="checked"' : '';
    
    foreach ($chkbx_array as $key => $value) {
        if( $value == 'checked="checked"'){
            $chkbx_selected = $key;   
        }
    }
    return [ $chkbx_array, $chkbx_selected, $chkbx_name[$chkbx_selected], $chkbx_text[$chkbx_selected] ];
}


function build_data($data = array())
{
    if( isset($this->session->cart_id) ) {
        $session_id = $this->session->cart_id;
     } else {
        redirect('cart/cart');
    }    

    $this->load->module('site_security');
    $shopper_id = $this->site_security->_get_user_id();
    if (!is_numeric($shopper_id))
            $shopper_id = 0;

    $table = 'store_basket';
    $data['query'] = $this->_fetch_cart_contents($session_id, $shopper_id, $table);
    return $data;
}





// function test()
// {
//     $string = "Hello blue sky";
//     $encrypted_string = $this->site_security->_encrypt_string($string);
//     $decrypted_string = $this->site_security->_decrypt_string($encrypted_string);

//     echo "string is $string<hr>";
//     echo "encrypted string is $encrypted_string<hr>";
//     echo "decrypted string is $decrypted_string<hr>";
// }

// function test2()
// {
//     $string = "Hello blue sky";

//     $third_bit = $this->uri->segment(3);
//     if ($third_bit!='') {
//         $encrypted_string = $third_bit;
//     } else {
//         $encrypted_string = $this->site_security->_encrypt_string($string);
//     }

//     $decrypted_string = $this->site_security->_decrypt_string($encrypted_string);

//     echo "string is $string<hr>";
//     echo "encrypted string is $encrypted_string<hr>";
//     echo "decrypted string is $decrypted_string<hr>";

//     //create new encrypted string
//     $new_encrypted_string = $this->site_security->_encrypt_string($string);
//     echo anchor('cart/test2/'.$new_encrypted_string, 'refresh');
// }

// function _check_and_get_session_id($checkout_token)
// {
//     $session_id = $this->_get_session_id_from_token($checkout_token);
//     if ($session_id=='') {
//         redirect(base_url());
//     }
//     //check to see if this session ID appears on store_basket table
//     $this->load->module('store_basket');
//     $query = $this->model_name->get_view_data_custom('session_id', $session_id, 'store_basket', null);    
//     $num_rows = $query->num_rows();

//     if ($num_rows<1) {
//         redirect(base_url());
//     }
//     return $session_id;
// }

// function _create_checkout_token($session_id)
// {
//     $encrypted_string = $this->site_security->_encrypt_string($session_id);
//     //remove dodgy characters
//     $checkout_token = str_replace('+', '-plus-', $encrypted_string);
//     $checkout_token = str_replace('/', '-fwrd-', $checkout_token);
//     $checkout_token = str_replace('=', '-eqls-', $checkout_token);
//     return $checkout_token;
// }

// function _get_session_id_from_token($checkout_token)
// {
//     //remove dodgy characters
//     $session_id = str_replace('-plus-', '+', $checkout_token);
//     $session_id = str_replace('-fwrd-', '/', $session_id);
//     $session_id = str_replace('-eqls-', '=', $session_id);
//     $session_id = $this->site_security->_decrypt_string($session_id);
//     return $session_id;
// }



}// end cart