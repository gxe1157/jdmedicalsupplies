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
// checkField( $item_id.' | '.$item_color.' | '.$item_size.' | '.$session_id, 0);
    $table = $this->get_table();
    $this->db->where('item_id', $item_id);
    $this->db->where('item_color', $item_color);  
    $this->db->where('item_size', $item_size);  
    $this->db->where('session_id', $session_id);            
    $query = $this->db->get($table);

    return $query;
}

function _delete_cart($session_id){
    $table = $this->get_table();
    $this->db->where('session_id', $session_id);   
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
