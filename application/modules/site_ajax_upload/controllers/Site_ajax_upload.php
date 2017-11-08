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

public $upload_img_base ='';

function __construct() {
    parent::__construct();
    // $this->_security_check();  
    $this->upload_img_base ='./public/images/products/';    
}


/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
   =================================================== */

function ajax_remove_one()
{
    sleep(1);
    $update_id  = $this->input->post('update_id', TRUE);
    $sub_cat_id = $this->input->post('sub_cat_id', TRUE);

    /* full upload path */
    $upload_path = $this->_build_upload_folder($sub_cat_id);

    list($file_name)= $this->_get_image_name($update_id);
    $file_location  = $upload_path.$file_name;

    $this->_delete_file($file_location);   
    echo json_encode($data);
}


function ajax_upload_one()
{

    sleep(1);
    // $update_id = $this->site_security->_make_sure_logged_in();
    $update_id  = $this->input->post('update_id', TRUE);
    $part_num   = $this->input->post('part_num', TRUE);
    $sub_cat_id = $this->input->post('sub_cat_id', TRUE);

    /* set image as part number and add ext name */
    $uploaded_file = explode('.', $_FILES['file']['name'] );
    $imagename = rtrim($part_num);
    $imagename .= '.'.$uploaded_file[1];

    /* full upload path */
    $upload_path = $this->_build_upload_folder($sub_cat_id);

    /* check mysql for active_image */
    $is_uploaded = $this->_is_already_uploaded($update_id, $imagename, $upload_path);

    if( $is_uploaded == false ){
        $this->load->library('upload', $config);
        $config["upload_path"]   = $upload_path;
        $config['allowed_types'] = 'jpeg|jpg|png|gif';
        $config['max_size']      = '2048';
        $config['overwrite']     = true;
        $config['file_name'] = $imagename; // set the name here
        $this->upload->initialize($config);

        if( $this->upload->do_upload('file') ) {
          $data = $this->upload->data();
          $data['success'] = 1;
          // $imagename .=$data['file_ext'];  // add ext to filename
          $orig_name = $data['client_name'];

          $this->_update_img_data($imagename, $update_id, $orig_name, $upload_path);
        } else {
          // display errors 
          $error_mmesage = "<p>The filetype/size you are attempting to upload is not allowed. The max-size for files is ".$config['max_size']." kb and accepted file formats are ".$config['allowed_types'].".</p>";

          $data['success'] = 0;
          $data['error_mess'] = $error_mmesage;

        }
    } else {
          $error_mmesage = "<p>File is already uploaded.";
          $data['success'] = 0;
          $data['error_mess'] = $error_mmesage;
    }

    $data['is_uploaded'] = $is_uploaded;
    $data['upload_path'] = $upload_path;    // use to debug
    echo json_encode($data);    
    return;      
}


function _update_img_data($imagename, $update_id, $orig_name)
{
    /* Update database */
    $table_data = ['active_image' => $imagename, 'prd_img_org_name' => $orig_name ];
    $this->model_name->update_data($update_id, 'store_items', $table_data );    
}


function _is_already_uploaded($update_id, $imagename, $img_path)
{

    $img_on_file = $this->_get_image_name($update_id); 
    $is_found = ( $imagename == $img_on_file ) ? true : false; 

    if( $is_found == false){
        /* remove image on file */
        $file_location  = $img_path.$img_on_file;
        $this->_delete_file($file_location);   
    }

    return $is_found;
}

function _get_image_name($update_id)
{
    $mysql_query = "SELECT active_image FROM `store_items` WHERE `id` =".$update_id;
    $result_set  = $this->model_name->_custom_query($mysql_query)->result();
    $img_on_file = $result_set[0]->active_image;      

    return $img_on_file;
}

function _delete_file($file_location)
{
    /* delete image file */
    if( file_exists( $file_location ) && !is_dir($file_location) ){   
        if (!unlink($file_location)) {
            // send to log and email......
            $error_mmesage = 'Error: File did delete. Nofity Developer. ';
            $data['success'] = 0;
            $data['error_mess'] = $error_mmesage;
        }
    }      
}


function _build_upload_folder($sub_cat_id)
{
    $this->load->helper('store_items/store_prd_helper');    
    list($parent_cat_name, $parent_cat_title, $parent_cat_id) = parent_cat_folder($sub_cat_id);

    $prd_folder = $parent_cat_name;
    $upload_path = $this->upload_img_base.$prd_folder;

    return $upload_path;
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
