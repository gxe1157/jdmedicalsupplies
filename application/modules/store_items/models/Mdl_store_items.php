<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Mdl_perfectmodel to Mdl_[name]
class Mdl_store_items extends MY_Model
{

function __construct( ) {
    parent::__construct();

}

function get_table() {
	// table name goes here	
    $table = "store_items";
    return $table;
}

/* ===================================================
    Add custom model functions here
   =================================================== */
   
// function _get_byId_useTable_custom( $update_id, $use_fields) {
//       $table = 'site_items'; 
//     $this->db->where( array('id' => $id));
//     $query =$this->db->get($table);
//     $data  = $this->_parse_db($query, $use_fields);
//     return $data;    
// }

function _delete_for_item( $item_id, $store_db_table ){
    // request is from Store_items.php to remove all item content
    $mysql_query = "delete from ".$store_db_table." where item_id=$item_id";
    $query = $this->_custom_query($mysql_query);
}

function _insert_manufacturer($data){
    $table = 'store_manufacturer';
    $this->db->insert($table, $data);
}


function _get_manufacturer($order_by){
    $table = 'store_manufacturer';
    $this->db->select('company');    
    $this->db->order_by($order_by);
    $query=$this->db->get($table);
    $manu_list = [];
    foreach ($query->result() as $key => $value) {
            $manu_list[$key] = $value->company;
    }
    return $manu_list;
}

/* ===============================================
    David Connelly's work from mdl_perctmodel
    is in applications/core/My_Model.php which
    is extened here.
  =============================================== */




}