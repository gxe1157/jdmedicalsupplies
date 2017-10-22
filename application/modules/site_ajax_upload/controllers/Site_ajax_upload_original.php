<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class Site_ajax_upload extends MY_Controller
{

/* model name goes here */
var $mdl_name = 'Mdl_site_ajax_upload';
var $store_controller = 'site_ajax_upload';

var $column_rules = array(
    array('field' => '---', 'label' => '---', 'rules' => '---')        
);

// use like this.. in_array($key, $columns_not_allowed ) === false )
var  $columns_not_allowed = array( 'create_date' );

public $upload_img_base ='./public/images/jkingsley/jdmed/products/';

function __construct() {
    parent::__construct();
}


/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
   =================================================== */

function ajax_remove()
{
    // $this->_security_check();
    sleep(1);

    $id = $_POST['id'];  // image_id
    $query = $this->get_where_custom('id', $id);
    $results = $query->result();
    $file_name = $results[0]->image;
    $file_location = './upload/'.$file_name;
    $file_name = explode("_",$file_name);

    $this->_delete($id);

    /* get absolute path to file */
    if( file_exists( $file_location ) ) {
        unlink($file_location);
        $response = array(
          "position"  => $_POST['position'],
          "remove_name" => $file_name[1],
          "error_mess" => ''          
        );
    } else {
        $response = array(
          "position"  => $_POST['position'],
          "remove_name" => $file_location,
          "error_mess" => 'We can not remove the file at this time... Try again later... '
        );
    }      

    echo json_encode($response);
}


function ajax_upload_one()
{
    sleep(1);
    // $update_id = $this->site_security->_make_sure_logged_in();
    $update_id  = $this->input->post('update_id', TRUE);
    $part_num   = $this->input->post('part_num', TRUE);

    /* full upload path */
    $prd_folder = 'medical_supplies/new_uploads/';    
    $upload_folder = $this->upload_img_base.$prd_folder;

    $this->load->library('upload', $config);
    $config["upload_path"]  = $upload_folder;
    $config['allowed_types']= 'jpeg|jpg|png|gif';
    $config['max_size']     = '2048';
    $config['overwrite']    = true;
    $imagename = rtrim($part_num);

    /* check mysql for active_image */
    $is_uploaded = $this->is_already_uploaded($update_id, $imagename, $upload_folder);

    $config['file_name'] = $imagename; // set the name here
    $this->upload->initialize($config);

    if( $this->upload->do_upload('file') ) {
      $data = $this->upload->data();
      $data['success'] = 1;
      $imagename .=$data['file_ext'];  // add ext to filename
      $orig_name = $data['client_name'];

      $this->_update_img_data($imagename, $update_id, $orig_name, $upload_folder);
    } else {
      // display errors 
      $error_mmesage = "<p>The filetype/size you are attempting to upload is not allowed. The max-size for files is ".$config['max_size']." kb and accepted file formats are ".$config['allowed_types'].".</p>";

      $data['success'] = 0;
      $data['error_mess'] = $error_mmesage;

    }
    echo json_encode($data);    
}


function _update_img_data($imagename, $update_id, $orig_name)
{
    /* Update database */
    $table_data = ['active_image' => $imagename, 'prd_img_org_name' => $orig_name ];
    $this->model_name->update_data($update_id, 'store_items', $table_data );    
}

function is_already_uploaded($update_id, $imagename, $img_path)
{

    $is_found = false;
    $img_on_file ='';
    is_numeric($update_id);

    /* check if image on file */ 
    $mysql_query = "SELECT active_image FROM `store_items` WHERE `id` =".$update_id;
    $result_set  = $this->model_name->_custom_query($mysql_query)->result();

    $img_on_file = $result_set[0]->active_name;      
    $is_found = ( $imagename == $img_on_file ) ? true : false; 

    if( $is_found == false){
        $this->error_mess['is_found'] = 'no image available';      
        $file_location  = $img_path.$img_on_file;
          if( !is_dir($file_location) ){   
             $this->delete_file($file_location);   
          }  
    }
    return $is_found;
}


function delete_file($file_location)
{
    /* check for image on server's drive */
    if( file_exists( $file_location ) )
            unlink($file_location);
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
