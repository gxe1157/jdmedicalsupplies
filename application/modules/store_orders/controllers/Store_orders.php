<?php
class Store_orders  extends MY_Controller
{


/* model name goes here */
var $mdl_name = 'Mdl_store_orders';
var $store_controller = 'store_orders';

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

function payment_details($table, $table_data)
{
    $payment_id = $this->model_name->insert_payment_details($table, $table_data);

}

function order_details( $payment_id, $data);        
{
        //$this->load->module('store_orders');
        // INSERT INTO mytbcopy SELECT * FROM mytb;

        // clear session->cart_id
        // clear basket
        // send email with receipt;

        // $this->load->module('store_basket');
        // $rows_updated = $this->update_orders();
        // $rows_deleted = $this->store_basket->clear_cart();
        // if($rows_deleted<1) fatal_error();

        // $data['page_url'] = 'thankyou';


    /* customer details */
    if( isset( $data['email']) ){

    } else {

    }
    




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
