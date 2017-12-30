<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Mdl_store_vendors extends MY_Model
{

function __construct() {
parent::__construct();

}

function get_table() {
  // table name goes here 
  $table = "store_manufacturer";
  return $table;
}



/* ===================================================
    Add custom model functions here
   =================================================== */
// function insert_data($table, $data){
//     $this->db->insert($table, $data);
//     /* get record id number after insert completed */ 
//    $last_id =  $this->db->query('SELECT LAST_INSERT_ID() as last_id')->row()->last_id;
//    return $last_id;    
// }
         
// function update_data( $table_name, $table_data, $user_id )
// {
//   /* Check if user_id in table */
//   if( empty($user_id) ) $user_id = 0; //die('----- user_id is empty ------');

//   $this->db->where('id', $user_id);
//   $query=$this->db->get($table_name);
//   $num_rows = $query->num_rows();
  
//   if($num_rows>0){
//       /* update by user_id */    
//       $table_data['modified_date']= time();      
//       $table_data['admin_id'] = $user_id;
//       $this->db->where('id', $user_id);
//       $this->db->update( $table_name, $table_data);
//       // echo "update | ".$table_name."<br>";
//   } else {
//       /* insert new record */
//       die( 'User_id: '.$user_id.' for table ['.$table_name.'] tried Illegal record insert | Prg: users_application |');
//   }    

// }

/* ===============================================
    David Connelly's work from mdl_perfectmodel
    is in applications/core/My_Model.php which
    is extened here.
  =============================================== */




}// end of class