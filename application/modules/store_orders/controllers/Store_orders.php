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
function index()
{

quit(99,1);
  $query = $this->model_name->fetch_order( '29', '1');
  checkArray($query->result(),0);



}

function payment_details($table_data)
{
    $table = 'payments'; 
    $payment_id = $this->model_name->insert_order_details($table, $table_data);

quit(9);    
    list($shopper_id, $sales_order_no) = $this->order_details( $payment_id, $table_data);

    $payment_data['shopper_id'] = $shopper_id;
    $payment_data['sales_order'] = $sales_order_no;    
    $this->model_name->update_order_details('id', $payment_id, $table, $payment_data);
    return [$shopper_id, $sales_order_no];
}

function order_details( $payment_id, $data) 
{
    // checkArray($data,1);
    // echo "---------------------------------------------------------" ;
    // checkArray($_SESSION,1);

    if($_SESSION['cart_id'] != $data['cart_id'] ){
        fatal_error( 'store_orders-1' );
    }

    $cart_id = $_SESSION['cart_id'];
    unset($_SESSION['submit']);    
    unset($_SESSION['cart_id']);
    unset($_SESSION['__ci_last_regenerate']);

    /* create customer account if needed */
    $col = 'email';
    $col_value = trim($_SESSION['email']) ;
    $orderby = null;

    $table1  = 'store_accounts';
    $table2  = 'store_orders';
    foreach ($_SESSION as $key => $value) {
        if(strpos($key, 'shipto_') !== false) {
            $table_data2[$key] = $value;
        } else {
            $table_data1[$key] = $value;
        }
    }

    $results_set = $this->model_name->get_view_data_custom($col, $col_value, $table1, $orderby)->result();
    if( count($results_set) < 1 ) {
        /* SETUP NEW CUSTOMER ACCOUNT - Add shopper_id to shipping address  */
        $table_data1['create_date'] = time();   
        $table_data1['admin_id'] = 0;                        
        $shopper_id = $this->model_name->insert_order_details($table1, $table_data1);        
    } else {
        /* CUSTOMER EXIST - Add shopper_id to shipping address */        
        $shopper_id = $results_set[0]->id;
    }

    /* Store order and shipping Instruction */
    $table_data2['shopper_id'] = $shopper_id;        
    $table_data2['cart_id']    = $cart_id;   
    $table_data2['payment_id'] = $payment_id;
    $table_data2['create_date']= time();   
    $table_data2['admin_id']   = 0;                        
    $sales_order_id = $this->model_name->insert_order_details($table2, $table_data2);        

    /* Append from store baseket purchsed items to store order details */
    $sql = "INSERT INTO `store_orders` SELECT * FROM `store_basket` WHERE `cart_id` = '".$cart_id."'";
    $this->model_name->_custom_query($sql);

    /* Update shopper_id. It may be empty from store_basket table */
    $sql2 = "UPDATE `store_orders` SET `shopper_id`='".$shopper_id."', `create_date`='".time()."' WHERE `cart_id` ='".$cart_id."'";
    $this->model_name->_custom_query($sql2);

    /* remove order from basket and destory session */
    $sql3 = "DELETE FROM `store_basket` WHERE `cart_id` ='".$cart_id."'";
    $this->model_name->_custom_query($sql3);
    session_destroy();

    /* return new order id to update payment table */
    return [$shopper_id, $sales_order_id];

}
 
function fetch_sales_order($sales_order_no, $shopper_id)
{
    $query = $this->model_name->fetch_order($sales_order_no, $shopper_id);
    return $query;
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
