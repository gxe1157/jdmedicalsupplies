<?php
class Cart extends MX_Controller 
{

function __construct() {
    parent::__construct();
    $this->load->module('site_security');    
}

function index()
{
    // quit(0);
    $data['flash'] = $this->session->flashdata('item');

    $third_bit = $this->uri->segment(3);
    if ($third_bit!='') {
        //check that the token is cool, then get the session ID
        $session_id = $this->_check_and_get_session_id($third_bit);
    } else {
        $session_id = $this->session->cart_id;
    }

    $shopper_id = $this->site_security->_get_user_id();

    if (!is_numeric($shopper_id)) {
        $shopper_id = 0;
    }

    $table = 'store_basket';
    $data['query'] = $this->_fetch_cart_contents($session_id, $shopper_id, $table);

    //count the number of items in the cart
    $data['num_rows'] = $data['query']->num_rows();
    $data['showing_statement'] = $this->_get_showing_statement($data['num_rows']);

    $data['view_module'] = 'cart';    
    $data['page_url'] = 'cart';

    $this->load->module('templates');
    $this->templates->public_main($data);
}


function _check_and_get_session_id($checkout_token)
{
    $session_id = $this->_get_session_id_from_token($checkout_token);
    if ($session_id=='') {
        redirect(base_url());
    }
    //check to see if this session ID appears on store_basket table
    $this->load->module('store_basket');
    $query = $this->model_name->get_view_data_custom('session_id', $session_id, 'store_basket', null);    
    $num_rows = $query->num_rows();

    if ($num_rows<1) {
        redirect(base_url());
    }
    return $session_id;
}

function _create_checkout_token($session_id)
{
    $encrypted_string = $this->site_security->_encrypt_string($session_id);
    //remove dodgy characters
    $checkout_token = str_replace('+', '-plus-', $encrypted_string);
    $checkout_token = str_replace('/', '-fwrd-', $checkout_token);
    $checkout_token = str_replace('=', '-eqls-', $checkout_token);
    return $checkout_token;
}

function _get_session_id_from_token($checkout_token)
{
    //remove dodgy characters
    $session_id = str_replace('-plus-', '+', $checkout_token);
    $session_id = str_replace('-fwrd-', '/', $session_id);
    $session_id = str_replace('-eqls-', '=', $session_id);
    $session_id = $this->site_security->_decrypt_string($session_id);
    return $session_id;
}

function submit_choice()
{
    $submit = $this->input->post('submit', TRUE);
    if ($submit=="No Thanks") {
        $checkout_token = $this->input->post('checkout_token', TRUE);
        redirect('cart/index/'.$checkout_token);
    } elseif ($submit=="Yes - Let's Do It") {
        redirect('youraccount/start');
    }
}

function go_to_checkout()
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

    if ((!is_numeric($shopper_id)) AND ($third_bit=='')) {
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
    $data['checkout_token'] = $this->_create_checkout_token($session_id);
    $this->load->view('checkout_btn_fake', $data);
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
             " WHERE $table.shopper_id='$shopper_id' and $table.session_id='$session_id'";
    } else {
        $where_condition = " WHERE $table.session_id='$session_id'";
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

function test()
{
    $string = "Hello blue sky";
    $encrypted_string = $this->site_security->_encrypt_string($string);
    $decrypted_string = $this->site_security->_decrypt_string($encrypted_string);

    echo "string is $string<hr>";
    echo "encrypted string is $encrypted_string<hr>";
    echo "decrypted string is $decrypted_string<hr>";
}

function test2()
{
    $string = "Hello blue sky";

    $third_bit = $this->uri->segment(3);
    if ($third_bit!='') {
        $encrypted_string = $third_bit;
    } else {
        $encrypted_string = $this->site_security->_encrypt_string($string);
    }

    $decrypted_string = $this->site_security->_decrypt_string($encrypted_string);

    echo "string is $string<hr>";
    echo "encrypted string is $encrypted_string<hr>";
    echo "decrypted string is $decrypted_string<hr>";

    //create new encrypted string
    $new_encrypted_string = $this->site_security->_encrypt_string($string);
    echo anchor('cart/test2/'.$new_encrypted_string, 'refresh');
}


}