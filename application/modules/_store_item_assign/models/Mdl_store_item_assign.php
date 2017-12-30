<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Mdl_perfectmodel to Mdl_[Name]
class Mdl_store_item_assign extends MY_Model
{

function __construct( ) {
    parent::__construct();

}

function get_table() {
	// table name goes here	
    $table = "store_item_assign";
    return $table;
}

/* ===================================================
    Add custom model functions here
   =================================================== */

function _get_page_title($id){
    $data = $this->db->get_where('webpages', array('id' => $id) )->result()[0];
    $page_title = $data->page_title;
    return $page_title;
}    

function _get_item_id($id){
    $data = $this->db->get_where('store_item_assign', array('id' => $id) )->result()[0];
    $item_id = $data->item_id;
    return $item_id ;
}    


/* ===============================================
    David Connelly's work from mdl_perfectmodel
    is in applications/core/My_Model.php which
    is extened here.
  =============================================== */


}