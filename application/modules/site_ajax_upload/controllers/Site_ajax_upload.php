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

function _get_image_info($userid)
{
  /* Check userid account to verify passcode here */ 
    $image_list = array();
    $users_images = array();

    /* Get image categories */
    $query = $this->get_where_custom('parent_cat', 0);
    foreach($query->result() as $row){
        $image_list[$row->id] = $row->role;
    }
    //echo "image_list: ".count($image_list);

    if( count($image_list) > 0 )  {
      /* assign images to categories */
      $query = $this->get_where_custom('userid', $userid);
      foreach($query->result() as $row){
          $role = $image_list[$row->parent_cat]; 
          $img_uploaded = explode("_", $row->image);
          /* minimize image name conflicts by verifing userid attached to image name.*/
          if( $userid != $img_uploaded[0] ){ 
              die('.......... ERROR .............. prg: site_ajax_upload | '.$row->image);
              $users_images[ $role ] = array( $row->id, '');
          } else {
              $users_images[ $role ] = array( $row->id, $row->image);
          }
      }
    }
    return array($image_list, $users_images);    
}


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

    /* check mysql for img_name */
    $is_uploaded = $this->is_already_uploaded($update_id, $imagename, $upload_folder);

    $config['file_name'] = $imagename; // set the name here
    $this->upload->initialize($config);

    if( $this->upload->do_upload('file') ) {
      $data = $this->upload->data();
      $data['success'] = 1;
      $imagename .=$data['file_ext'];  
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
    $table_data = ['prd_img_name' => $imagename, 'prd_img_org_name' => $orig_name ];
    $this->model_name->update_data($update_id, 'store_items', $table_data );    
}

function is_already_uploaded($update_id, $imagename, $img_path)
{

    $is_found = false;
    $img_on_file ='';
    is_numeric($update_id);

    /* check if image on file */ 
    $mysql_query = "SELECT prd_img_name FROM `store_items` WHERE `id` =".$update_id;
    $result_set  = $this->model_name->_custom_query($mysql_query)->result();

    $img_on_file = $result_set[0]->prd_img_name;      
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



// function _generate_thumbnail($file_name)
// {
//     $config['image_library'] = 'gd2';
//     $config['source_image']  = './public/big_pic/'.$file_name;
//     $config['new_image']     = './public/small_pic/'.$file_name;
//     $config['create_thumb']  = FALSE;
//     $config['maintain_ratio']= TRUE;
//     $config['width']         = 200;
//     $config['height']        = 200;

//     $this->load->library('image_lib', $config);
//     $this->image_lib->resize();
// }



// function ajax_remove_avatar()
// {
//     // $this->_security_check();
//     $this->load->module('site_security');
//     $userid = $this->site_security->_make_sure_logged_in();
    
//     $imagename = 'annon_user.png';
//     $this->_update_img_data($imagename, $userid);

//     $data['file_name'] = $imagename;   
//     echo json_encode($data);    

// }


// function in_array($haystack, $needle)
// {
//    foreach($haystack as $first_key => $array) {
//       foreach( $array as $sec_key=>$value){
//         if( $needle == $value ){
//             return true;
//         }
//       }
//    }
//    return false;
// }

// function test()
// {

//   echo "<h1>test</h1>";

//   list( $image_list, $users_images ) = $this->_get_image_info(1); 

//   $isFound = $this->in_array($users_images, '1_Chrysanthemum.jpg' );

//   echo $isFound == true ? 'found dupes':' Nope..';

// }

function ajax_upload()
{
  // $this->_security_check();

  sleep(1);
  $this->load->module('site_security');
  $userid = $this->site_security->_make_sure_logged_in();

  list( $image_list, $users_images ) = $this->_get_image_info($userid); 

  $vector = $_FILES['file'];
  foreach($vector as $key1 => $value1) 
      foreach($value1 as $key2 => $value2) 
          $result[$key2][$key1] = $value2; 
  $uploaded_files = $result;

  if( count($uploaded_files) > 0) {
    // $output = '';
    $config["upload_path"]   = './upload/';
    $config['allowed_types'] = 'jpeg|jpg|png|gif';
    $config['max_size']      = '1024';

    $this->load->library('upload', $config);

    for($display_position = 0; $display_position<count($uploaded_files); $display_position++) {

      if( !empty($uploaded_files[$display_position]["name"]) ) {
        $_FILES["file"]["name"] = $uploaded_files[$display_position]["name"];
        $_FILES["file"]["type"] = $uploaded_files[$display_position]["type"];
        $_FILES["file"]["tmp_name"] = $uploaded_files[$display_position]["tmp_name"];
        $_FILES["file"]["error"] = $uploaded_files[$display_position]["error"];
        $_FILES["file"]["size"] = $uploaded_files[$display_position]["size"];

        $imagename = $userid.'_'.$uploaded_files[$display_position]["name"];
        $config['file_name'] = $imagename; // set the name here
        $this->upload->initialize($config);

        $isFound = $this->in_array($users_images, $imagename );
        if( $isFound ) {
            /* Duplicate found... Do Not Upload */
            $response[$display_position] = array(
              "error_mess"=> ''
            );

        } else {

              if($this->upload->do_upload('file')) {
                  /* pload is successful - update mySQL */
                  $data = $this->upload->data();

                  $row_data = array(  
                    'userid' => $userid,
                    'parent_cat' => $display_position+1,
                    'image' => $data['file_name'],
                    'path'  => $data['full_path'],
                    'size'  => $data['file_size'],
                    'width_height'=> $data['image_size_str'],
                    'create_date'=> time()  // timestamp for database
                  );

                  /* Insert data and get record id */
                  $update_id = $this->_insert($row_data);
                  $response[$display_position] = array(
                    "position"  => $display_position+1,
                    "update_id" => $update_id,                  
                    "file_name" => $data["client_name"],
                    "file_ext"  => $data["file_ext"],
                    "file_size" => $data["file_size"],
                    "image_type"=> $data["image_type"],
                    "image_size_str"=>$data["image_size_str"],
                    "error_mess"=> ''
                  );

              } else {
                  /* Upload has failed....*/
                  $data = '';
                  $data = "<p>The filetype/size you are attempting to upload is not allowed. The max-size for files is ".$config['max_size']." kb and accepted file formats are ".$config['allowed_types'].".</p>";

                  $response[$display_position] = array(
                    "file_name" => '',            
                    "position"  =>$display_position+1,
                    "error_mess"=> $data,
                  );

              }
            } // end if 
          } // end Duplicate
    } // end foreach
    echo json_encode($response);
  }
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
