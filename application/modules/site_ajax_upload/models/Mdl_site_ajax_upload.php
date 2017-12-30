<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Mdl_perfectmodel to Mdl_[name]
class Mdl_site_ajax_upload extends MY_Model
{

function __construct( ) {
    parent::__construct();

}

function get_table() {
	// table name goes here	
    $table = "users_upload";
    return $table;
}

/* ===================================================
    Add custom model functions here
   =================================================== */
          
function update_data( $update_id, $table_name, $table_data )
{

    $this->db->where('id', $update_id);
    $this->db->update( $table_name, $table_data);

}


/* ===============================================
    David Connelly's work from mdl_perfectmodel
    is in applications/core/My_Model.php which
    is extened here.
  =============================================== */




}