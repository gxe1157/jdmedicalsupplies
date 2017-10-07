<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class App_form extends MY_Controller 
{

/* model name goes here */
var $mdl_name = 'mdl_app_form';
var $main_controller = 'app_form';

var $column_rules = array(
    array('field' => 'business_name', 'label' => 'Medical Practice Name', 'rules' => 'required'),
    array('field' => 'medical_field', 'label' => 'Type of Medical Field', 'rules' => 'required'),
    array('field' => 'address1', 'label' => 'Address 1', 'rules' => 'required'),
    array('field' => 'address2', 'label' => 'Address 2', 'rules' => ''),
    array('field' => 'city', 'label' => 'City', 'rules' => ''),    
    array('field' => 'state', 'label' => 'State', 'rules' => ''),        
    array('field' => 'zip', 'label' => 'Zip', 'rules' => ''),        
    array('field' => 'contact_name', 'label' => 'Contact Name', 'rules' => 'required'),        
    array('field' => 'email', 'label' => 'Email Address', 'rules' => 'required|valid_email|max_length[100]'),       
    array('field' => 'phone', 'label' => 'Phone', 'rules' => 'required')    
 
);

var  $columns_not_allowed = array();


function __construct() {
    parent::__construct();
    $this->load->module('site_captcha');    
}


/* ===================================================
    Controller functions goes here. Put all DRY
    functions in app_forms/core/My_Controller.php
  ==================================================== */

function app_form_thankyou()
{

    $data['custom_jscript'] = '';
    $data['page_url']       = 'app_form_thankyou';
    $data['page_title']     = 'Insurance Application';
    $data['view_module']    = 'app_form';
    $data['title']          = 'Insurance Quote';

    $this->load->module('templates');
    $this->templates->public_main($data);

}

function index()
{
    $captcha_isValid = true;

    $submit = $this->input->post('submit', TRUE);
    if( $submit == "Cancel") redirect( base_url().'/');                

    if($submit == "Submit" ){
        // Insert new option
        $this->load->library('form_validation');
        $this->form_validation->set_rules( $this->column_rules );

        if($this->form_validation->run() == TRUE) {
          $email_data = $this->fetch_data_from_post();       
          $email_data['create_date'] = SQLformat_date(getToday());

          $this->_insert($email_data);
          $this->_set_flash_msg("The quick quote was has been sent.");          

          /* Send Email */
          if( ENVIRONMENT == 'production'){
              // $email = $this->input->post( 'email', TRUE);
              // $this->send_mail($email, 'activate', $paypal_trans_id);     
              // $this->email_message($email_data);     
          }

          redirect( $this->main_controller.'/app_form_thankyou');            
        } else {
            //$row as each individual field array 
            foreach($this->column_rules as $row){
                $field = $row['field'];          //getting field name
                $error = form_error($field);    //getting error for field name
                                                //form_error() is inbuilt function

                //if error is their for field then only add in $errors_array array
                if($error)
                $errors_array[$field] = $error;
             
            }
            // return $errors_array;
            $data['errors_array'] = $errors_array;            
        }

    }

    $data['columns'] = $this->fetch_data_from_post();
    $data['req_flds'] = required_fields($this->column_rules);    
    $data['columns_not_allowed'] = $this->columns_not_allowed;
    $data['labels']    = $this->_get_column_names('label');  
    $data['captcha_html'] = $this->site_captcha->_create_captcha();
    $data['captcha_isValid'] = $captcha_isValid;

    $data['custom_jscript'] = '';
    $data['page_url']       = 'app_form';
    $data['page_title']     = 'Insurance Application';
    $data['view_module']    = 'app_form';
    $data['title']          = 'Insurance Application';

    $this->load->module('templates');
    $this->templates->public_main($data);
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
