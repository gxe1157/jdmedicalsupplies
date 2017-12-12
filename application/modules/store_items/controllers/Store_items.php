<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class Store_items extends MY_Controller
{

/* model name goes here */
public $mdl_name = 'mdl_store_items';
public $main_controller = 'store_items';

public $column_rules = array(
    array('field' => 'parent_cat_id', 'label' => 'Category', 'rules' => ''),        
    array('field' => 'prd_name', 'label' => 'Product Name', 'rules' => ''),        
    array('field' => 'sub_cat_id', 'label' => 'Sub Category Id', 'rules' => 'required'),
    array('field' => 'manufacturer', 'label' => 'Manufacturer', 'rules' => ''),
    array('field' => 'short_desc', 'label' => 'Short Description', 'rules' => 'required'),
    array('field' => 'description', 'label' => 'Product Description', 'rules' => ''),
    array('field' => 'prd_width', 'label' => 'Prd Width', 'rules' => ''),
    array('field' => 'prd_height', 'label' => 'Prd Height', 'rules' => ''),
    array('field' => 'prd_depth', 'label' => 'Prd Depth', 'rules' => ''),
    array('field' => 'prd_weight', 'label' => 'Prd Weight', 'rules' => ''),
    array('field' => 'prd_status', 'label' => 'Prd Status', 'rules' => ''),        
    array('field' => 'prd_image_status', 'label' => 'Prd Image Status', 'rules' => ''),
    array('field' => 'active_image', 'label' => 'Image Name', 'rules' => ''),        
    array('field' => 'part_num', 'label' => 'Part Number', 'rules' => 'required'),
    array('field' => 'upc', 'label' => 'UPC', 'rules' => ''),
    array('field' => 'sku', 'label' => 'SKU', 'rules' => ''),        
    array('field' => 'price', 'label' => 'Price', 'rules' => 'required|numeric'),
    array('field' => 'sale_price', 'label' => 'Sale Price', 'rules' => 'required|numeric')
);

//// use like this.. in_array($key, $columns_not_allowed ) === false )
PUBLIC  $columns_not_allowed = array( 'create_date' );
PUBLIC $default = [];
public $upload_img_base = 'public/images/products/';    

function __construct() {
    parent::__construct();

    /* is user logged in */
    $this->default = login_init();  

    /* get product data */
    $update_id = $this->uri->segment(3);
    $this->default['page_nav']    = "Products";     
    $this->default['headline']    = !is_numeric($update_id) ? "Manage Products" : "Update Product Details";
    $this->default['page_header'] = !is_numeric($update_id) ? "Add New Prodcut" : "Update Product Details";
    $this->default['add_button']  = "Add New Product";
    $this->default['flash'] = $this->session->flashdata('item');   
    $this->site_security->_make_sure_logged_in();     
}


/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
   =================================================== */


function manage()
{
    $this->load->helper('text');    

    $data['columns']      = $this->get('short_desc'); // get form fields structure
    $data['add_items']    = true;

    $data['custom_jscript'] = [ 'public/js/datatables.min',
                                'public/js/site_datatable_loader',
                                'public/js/format_flds' ];

    $data['page_url'] = "manage";
    $data['view_module'] = 'store_items';
    $data['title'] = "Manage Products";

    $this->default['page_title'] = "Manage Products";
    $data['default'] =  $this->default;  

    $this->load->module('templates');
    $this->templates->admin($data);            
}


function create()
{
    $this->load->helper('store_items/store_prd_helper');    

    $update_id = $this->uri->segment(3);
    $submit = $this->input->post('submit', TRUE);

    if( $submit == "Cancel" )
        redirect($this->main_controller.'/manage');

    if( $submit == "Submit" ) {
        $this->column_rules[2] = array('field' => 'sub_cat_id', 'label' => 'Sub Category Id',
                                           'rules' => 'required|numeric|greater_than[0]');
        $this->column_rules[3] = array('field' => 'manufacturer', 'label' => 'Manufacturer',
                                       'rules' => 'required|numeric|greater_than[0]');

        $this->form_validation->set_message('greater_than', 'The %s  field is required.');

        $this->load->library('form_validation');
        $this->form_validation->set_rules( $this->column_rules );

        if($this->form_validation->run() == TRUE) {
            $data = $this->fetch_data_from_post();
            unset($data['active_image']);  // image already uploaded
            $data['part_num'] =  trim( strtoupper($data['part_num']) );

            /* make search friendly url */
            // $data['prd_url'] = url_title( $data['prd_name'] );
            $data['prd_name'] = '';
            
            if(is_numeric($update_id)){
                /* update the item details */
                $data['modified_date'] = time();
                list($parent_cat_name, $parent_cat_title, $data['parent_cat_id']) =
                     parent_cat_folder($data['sub_cat_id']);                  

                $this->_update($update_id, $data);
                $this->_set_flash_msg("The item details were sucessfully updated");
            } else {
                /* insert a new item and get new update Id */
                $data['create_date'] = time();                
                $data['parent_cat_id'] = 0;                
                $data['prd_status'] = 1;                                                
                $data['active_image'] = '';
                $data['prd_image_status'] = 1;
                $update_id = $this->_insert($data); // get the ID of new item

                /* insert assign cat id */                
                $data_cat_id['item_id'] = $update_id;
                $data_cat_id[ 'cat_id'] = $data['sub_cat_id'];
                $this->model_name->_insert_cat_assign( $data_cat_id );

                $this->_set_flash_msg("The item was sucessfully added");
            }
            redirect($this->main_controller.'/create/'.$update_id);
        }

    }

    if( ( is_numeric($update_id) ) && ($submit != "Submit") ) {
        $data['columns'] = $this->fetch_data_from_db($update_id);
    } else {
        $data['columns'] = $this->fetch_data_from_post();
        $data['columns']['active_image'] = basename($_POST['current_img']);
    }


    $this->load->module('store_cat_assign');
    list( $query, $data['assigned_categories'], $data['sub_categories'] ) =
          $this->store_cat_assign->get_category_info($update_id);

    if( !is_numeric($update_id) ) {
        /* Add New Record to Items datbase */ 
        $data['assigned_categories'] = ['0' => 'Please Select ...'];
        foreach ($data['sub_categories'] as $key => $value) {
            $data['assigned_categories'][$key] = $value;
        }
    }    

    list($parent_cat_name, $parent_cat_title, $parent_cat_id) =
            parent_cat_folder($data['columns']['sub_cat_id']);    

    /* Set image name here */
    $data['active_image'] = 
        base_url().$this->upload_img_base.$parent_cat_name.'/'.$data['columns']['active_image'];

    if( !file_exists( $this->upload_img_base.$parent_cat_name.'/'.$data['columns']['active_image'] ) ||
                      empty($data['columns']['active_image']) ) {

        $data['columns']['prd_image_status'] = 0;
        $data['active_image'] = 
               base_url().'public/images/site_img/no_image.jpg';
    }

    $data['manufactures_list'] = $this->model_name->_get_manufacturer('company');
    $data['columns_not_allowed'] = $this->columns_not_allowed;
    $data['labels'] = $this->_get_column_names('label');

    $data['update_id'] = $update_id;    
    $data['custom_jscript'] = [ 'sb-admin/js/jquery.cleditor.min',
                                'public/js/format_flds',
                                'public/js/model_js',     
                                'public/js/site_ajax_upload',                             
                                'public/js/site_cleditor_loader',
                                'public/js/store_items_details'                                      
                              ];    

    $data['page_url'] = "create";
    $data['view_module'] = 'store_items';
    $data['title'] = "Update User Details";

    // $this->default['page_title'] = 'Update Product Details';
    $data['default'] =  $this->default;  
    $data['update_id'] = $update_id;

    $this->load->module('templates');
    $this->templates->admin($data);       

}


function delete( $update_id )
{
    $this->_numeric_check($update_id);

    $submit = $this->input->post('submit', TRUE);
    if( $submit =="Cancel" ){
        redirect($this->store_controller.'/create/'.$update_id);
    } elseif( $submit=="Yes - Delete item" ){
        /* get item title from store_items table */
        $row_data = $this->fetch_data_from_db($update_id);
        $data['item_title'] = $row_data['item_title'];
        $data['small_img']  = $row_data['small_pic'];

        $this->_process_delete($update_id);
        $this->_set_flash_msg("The item ".$data['item_title'].", was sucessfully deleted");

        redirect($this->store_controller.'/manage');
    }

}

function _process_delete( $update_id )
{
    /* delete item colors */
    $this->model_name->_delete_for_item( $update_id, 'store_item_colors');
    /* delete item sizes */
    $this->model_name->_delete_for_item( $update_id, 'store_item_sizes');

    /* delete bic_pic and small_pic ( unlink ) */
    $data = $this->fetch_data_from_db($update_id);
    $big_pic = $data['big_pic'];
    $small_pic = $data['small_pic'];
    $big_pic_path = './public/big_pic/'.$big_pic;
    $small_pic_path = './public/small_pic/'.$small_pic;

    /* remove the images */
    if(file_exists($big_pic_path)) {
        unlink($big_pic_path);
    }

    if(file_exists($small_pic_path)) {
        unlink($small_pic_path);
    }
    /* delete item */
     $this->_delete( $update_id );
}

function deleteconf( $update_id )
{
    $this->_numeric_check($update_id);
    $this->_security_check();

    /* get item title and small img from store_items table */
    $row_data = $this->fetch_data_from_db($update_id);
    $data['item_title'] = $row_data['item_title'];
    $data['small_img']  = $row_data['small_pic'];

    $data['headline']  = "Delete Item";
    $data['view_file'] = "deleteconf";
    $data['update_id']  = $update_id;

    $this->_render_view('admin', $data);
}

function modal_post_ajax()
{
    $data = $this->input->post( null, TRUE);
    $this->model_name->_insert_manufacturer($data);
 
    echo 1;
    return;
}

function ajaxPost(){
    $data['item_setup']   = $this->input->post('item_setup', TRUE);
    $update_id   = $this->input->post('update_id', TRUE);    
    $this->_update( $update_id, $data);

    echo "Id: ".$update_id." Selected: ".$data['item_setup'];
    return;
}

/* ===============================================
    Call backs go here...
  =============================================== */

function item_check($str) {
    $item_url = url_title($str);
    $mysql_query = "select * from store_items where item_title='$str' and item_url='$item_url'";

    $update_id = $this->uri->segment(3);
    if(is_numeric($update_id)) {
        // this is an update
        $mysql_query .= " and id!='$update_id'";
    }

    $query = $this->_custom_query($mysql_query);
    $num_rows = $query->num_rows();

    if( $num_rows > 0 ){
        $this->form_validation->set_message('item_check', 'The Item Title you selected is not available.');
        return FALSE;
    } else {
        return TRUE;
    }

}

/* ===============================================
    David Connelly's work from perfectcontroller
    is in applications/core/My_Controller.php which
    is extened here.
  =============================================== */


} // End class Controller
