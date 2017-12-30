<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Mdl_perfectmodel to Mdl_[Name]
class Mdl_youraccount extends MY_Model
{

function __construct( ) {
    parent::__construct();

}

function get_table() {
	// table name goes here	
    $table = "store_accounts";
    return $table;
}



/* ===================================================
    Add custom model functions here
   =================================================== */

function confirm_userid_email_unique($col1, $value1, $col2, $value2){
    $table = $this->get_table();
    $this->db->where($col1, $value1);
    $query_usename=$this->db->get($table)->num_rows();

    $this->db->where($col2, $value2);
    $query_email=$this->db->get($table)->num_rows();

    return [$query_usename, $query_email];
}


function get_with_double_condition($col1, $value1, $col2, $value2) {
    $table = $this->get_table();
    $this->db->where($col1, $value1);
    $this->db->or_where($col2, $value2);
    $query=$this->db->get($table);
    return $query;
}


/* ===============================================
    David Connelly's work from mdl_perfectmodel
    is in applications/core/My_Model.php which
    is extened here.
  =============================================== */




}// end of class