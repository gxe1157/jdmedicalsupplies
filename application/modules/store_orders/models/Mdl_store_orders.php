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

  
// INSERT INTO `payments` (`id`, `order_number`, `user_id`, `username`, `Authorization_Num`, `Bank_Message`, `CardHoldersName`, `Card_Number`, `payment_method`, `payment_amount`, `transaction_id`, `transaction_type`, `Client_IP`, `session_id`, `ip_address`, `create_date`, `modified_date`, `admin_id`) VALUES (NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');


/* ===================================================
    Add custom model functions here
   =================================================== */

function insert_payment_details($table, $table_data){
  $this->db->insert($table, $table_data);

  /* get record id number after insert completed */ 
  $payment_id =  $this->db->query('SELECT LAST_INSERT_ID() as last_id')->row()->last_id;
  return $payment_id;    
}

function insert_data( $payments, $user_login, $user_main )
{
  // user_login
  $table1  = 'user_login';
  // update payment table
  $table2  = 'site_payments';
  // user_main
  $table3  = 'user_main';

  $this->db->trans_start();
      $this->db->insert( $table1, $user_login);
      $user_id = $this->model_name->_get_insert_id();

      /* update payments array */
      $payments['user_id']  = $user_id;
      $this->db->insert( $table2, $payments);

      /* update user_main array */
      $user_main['user_id'] = $user_id;
      $this->db->insert( $table3, $user_main);    

      /* Create with tables with user_id and hold for future updates */
      $reserved_table_rows = array('user_address', 'user_mail_to', 'user_info',
       'user_employment_le', 'user_employment_prv_sector', 'user_children' );

      foreach ($reserved_table_rows as $table ) {
        $new_id = $this->db->insert( $table, array('user_id' => $user_id, 'create_date' => time() ));
      }  

  $this->db->trans_complete();

  if ($this->db->trans_status() === FALSE) {
      /*-*/    
      // generate an error... or use the log_message() function to log your error
      // redirect to payment did not go through.. Start over.            
      redirect( $this->main_controller.'/user_payment_declined');
  }
  
}


/* ===============================================
    David Connelly's work from mdl_perfectmodel
    is in applications/core/My_Model.php which
    is extened here.
  =============================================== */




}// end of class
