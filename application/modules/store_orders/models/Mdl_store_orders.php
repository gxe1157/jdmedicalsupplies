<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Mdl_perfectmodel to Mdl_[Name]
class Mdl_store_orders extends MY_Model
{

function __construct( ) {
    parent::__construct();
}

function get_table() {
    // table name goes here 
    $table = "store_orders";
    return $table;
}


/* ===================================================
    Add custom model functions here
   =================================================== */

function insert_order_details($table, $table_data){

  checkArray($table_data,0);
  $this->db->insert($table, $table_data);
  /* get record id number after insert completed */ 
  $new_record =  $this->db->query('SELECT LAST_INSERT_ID() as last_id')->row()->last_id;
  return $new_record;    
}

function update_order_details($col, $value, $table, $table_data){
  $this->db->where($col, $value);
  $this->db->update($table, $table_data);
  $rows_updated = $this->db->affected_rows();
  return $rows_updated;    
}        

function fetch_order($sales_order_no, $shopper_id)
{

    $this->db->select('
        store_orders.*,
        store_orders.id as order_id,
        store_orders_details.*,
        store_orders_details.id as line_no,                
        store_accounts.*,
        store_accounts.id as account_id,
    ');

    $this->db->join('store_orders_details', 'store_orders_details.cart_id = store_orders.cart_id', 'left');
    $this->db->join('store_accounts', 'store_accounts.id = store_orders.shopper_id', 'left');
    $this->db->from('store_orders');
    $this->db->where( array("store_orders.id"=> $sales_order_no) );    

    $query = $this->db->get();
    return $query;

}



/* ===============================================
    David Connelly's work from mdl_perfectmodel
    is in applications/core/My_Model.php which
    is extened here.
  =============================================== */




}// end of class
