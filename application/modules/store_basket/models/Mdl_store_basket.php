<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Mdl_perfectmodel to Mdl_[Name]
class Mdl_store_basket extends MY_Model
{

function __construct( ) {
    parent::__construct();
}

function get_table() {
    // table name goes here 
    $table = "store_basket";
    return $table;
}


/* ===================================================
    Add custom model functions here
   =================================================== */

function get_where_many( $item_id, $item_color, $item_size, $session_id ) {
// checkField( '|'.$item_id.'|'.$item_color.'|'.$item_size.'|'.$session_id.'|', 1);

    $table = $this->get_table();
    $array = array(
     'item_id' => $item_id,
     'item_color' => $item_color,
     'item_size' => $item_size,
     'cart_id' => $session_id
    );
    $this->db->where($array); 
    $query = $this->db->get($table);
    // checkArray($query->result(),0);

    return $query;
}

function _delete_cart($session_id){
    $table = $this->get_table();
    $this->db->where('cart_id', $session_id);   
    $this->db->delete($table);

    $rows_deleted = $this->db->affected_rows();
    return $rows_deleted;
}


/* ===============================================
    David Connelly's work from mdl_perfectmodel
    is in applications/core/My_Model.php which
    is extened here.
  =============================================== */




}// end of class
