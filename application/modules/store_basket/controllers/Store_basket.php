<?php
class Store_basket  extends MY_Controller
{


/* model name goes here */
var $mdl_name = 'Mdl_store_basket';
var $store_controller = 'store_basket ';

var $column_rules = array(
    array('field' => '---', 'label' => '---', 'rules' => '---')        
);
// use like this.. in_array($key, $columns_not_allowed ) === false )
var  $columns_not_allowed = array( 'create_date' );


function __construct() {
    parent::__construct();

}



/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
   =================================================== */

function add_to_basket()
{
    $submit = $this->input->post('submit', TRUE);
    if ($submit=="Submit") {
        //process the form
        $this->load->library('form_validation');
        $this->form_validation->set_rules('item_color', 'Item color', 'numeric');
        $this->form_validation->set_rules('item_size', 'Item Size', 'numeric');
        $this->form_validation->set_rules('item_qty', 'Item Quantity', 'required|numeric');
        $this->form_validation->set_rules('item_id', 'Item ID', 'required|numeric');

        if ($this->form_validation->run() == TRUE) {
            //cool
            $data = $this->_fetch_the_data();
            $this->_insert($data);
            redirect('cart');
        } else {
            //uncool
            $refer_url = $_SERVER['HTTP_REFERER'];
            $error_msg = validation_errors("<p style='color: red;'>", "</p>");
            $this->session->set_flashdata('item', $error_msg);
            redirect($refer_url);
        }
    }
}

function _fetch_the_data()
{
    //gathers together all of the data, so that we can do a table insert
    $this->load->module('site_security');
    $this->load->module('store_items');

    $item_id = $this->input->post('item_id', TRUE);
    $item_data = $this->store_items->fetch_data_from_db($item_id);
    $item_price = $item_data['item_price'];
    $item_qty = $this->input->post('item_qty', TRUE);
    $item_size = $this->input->post('item_size', TRUE);
    $item_color = $this->input->post('item_color', TRUE);
    $shopper_id = $this->site_security->_get_user_id();

    if (!is_numeric($shopper_id)) {
        $shopper_id = 0;
    }

    $data['session_id'] = $this->session->session_id;
    $data['item_title'] = $item_data['item_title'];
    $data['price'] = $item_price;
    $data['tax'] = '0';
    $data['item_id'] = $item_id;
    $data['item_size'] = $this->_get_value('size', $item_size);
    $data['item_qty'] = $item_qty;
    $data['item_color'] = $this->_get_value('color', $item_color);
    $data['date_added'] = time();
    $data['shopper_id'] = $shopper_id;
    $data['ip_address'] = $this->input->ip_address();
    return $data;
}

function _get_value($value_type, $update_id)
{
    //NOTE: value_type can be 'color' or 'size'
    if ($value_type=='size') {
        $this->load->module('store_item_sizes');
        $query = $this->store_item_sizes->get_where($update_id);
        foreach($query->result() as $row) {
            $item_size = $row->size;
        }
        if (!isset($item_size)) {
            $item_size = '';
        }
        $value = $item_size;
    } else {
        //fetch the name of the color
        $this->load->module('store_item_colors');
        $query = $this->store_item_colors->get_where($update_id);
        foreach($query->result() as $row) {
            $item_color = $row->color;
        }
        if (!isset($item_color)) {
            $item_color = '';
        }
        $value = $item_color;        
    }
    return $value;
}


function remove()
{
    $update_id = $this->uri->segment(3);
    $allowed = $this->_make_sure_remove_allowed($update_id);
    if ($allowed==FALSE) {
        redirect('cart');
    }

    $update_id = $this->uri->segment(3);
    $this->_delete($update_id);
    redirect('cart');
}

function _make_sure_remove_allowed($update_id)
{
    $query = $this->get_where($update_id);
    foreach($query->result() as $row) {
        $session_id = $row->session_id;
        $shopper_id = $row->shopper_id;
    }

    if (!isset($shopper_id)) {
        return FALSE;
    }

    $customer_session_id = $this->session->session_id;
    $this->load->module('site_security');
    $customer_shopper_id = $this->site_security->_get_user_id();

    if (($session_id==$customer_session_id) OR ($shopper_id==$customer_shopper_id)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

function test()
{
    $session_id = $this->session->session_id;
    echo $session_id;
    echo "<hr>";
    $this->load->module('site_security');
    $shopper_id = $this->site_security->_get_user_id();
    echo "You are shopper ID ".$shopper_id;
}


/* ===============================================
    Call backs go here...
  =============================================== */


/* ===============================================
    David Connelly's work from perfectcontroller
    is in applications/core/My_Controller.php which
    is extened here.
  =============================================== */


} // End class Controller
