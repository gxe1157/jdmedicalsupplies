<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class Store_items extends MY_Controller
{

/* model name goes here */
public $mdl_name = 'mdl_store_items';
public $main_controller = 'store_items';

public $column_rules = array(
    // array('field' => 'parent_cat', 'label' => 'Category', 'rules' => ''),
    array('field' => 'parent_cat_id', 'label' => 'Category', 'rules' => ''),        
    array('field' => 'prd_name', 'label' => 'Product Name', 'rules' => ''),        
    array('field' => 'sub_cat_id', 'label' => 'Sub Category Id', 'rules' => 'required'),
    array('field' => 'sub_cat', 'label' => 'Sub Category name', 'rules' => ''),
    array('field' => 'manufacturer', 'label' => 'Manufacturer', 'rules' => ''),
    array('field' => 'short_desc', 'label' => 'Short Description', 'rules' => ''),
    array('field' => 'description', 'label' => 'Product Description', 'rules' => 'required'),

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
    array('field' => 'price', 'label' => 'Price', 'rules' => 'required'),
    array('field' => 'sale_price', 'label' => 'Sale Price', 'rules' => 'required')
);

//// use like this.. in_array($key, $columns_not_allowed ) === false )
PUBLIC  $columns_not_allowed = array( 'create_date' );
PUBLIC $default = [];
public $upload_img_base = 'public/images/jkingsley/jdmed/products/';    

function __construct() {
    parent::__construct();

    /* is user logged in */
    $this->default = login_init();  

    /* get product data */
    $update_id = $this->uri->segment(3);
    $this->default['page_nav']   = "Products";     
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
                                'public/js/format_flds'];

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

    $update_id = $this->uri->segment(3);
    $submit = $this->input->post('submit', TRUE);

    if( $submit == "Cancel" )
        redirect($this->main_controller.'/manage');

    if( $submit == "Submit" ) {
        $this->load->library('form_validation');
        $this->form_validation->set_rules( $this->column_rules );

        if($this->form_validation->run() == TRUE) {
            $data = $this->fetch_data_from_post();
            /* make search friendly url */
            $data['prd_url'] = url_title( $data['prd_name'] );
            if(is_numeric($update_id)){
                /* update the item details */
                $this->_update($update_id, $data);
                // checkArray($data,0);                
                $this->_set_flash_msg("The item details were sucessfully updated");
            } else {
                /* insert a new item and get new update Id */
                $update_id = $this->_insert($data); // get the ID of new item
                $this->_set_flash_msg("The item was sucessfully added");
            }
            redirect($this->main_controller.'/create/'.$update_id);
        }
        echo validation_errors("<p style='color: red;'>", "</p>");
        quit('failed validation',0);        

    }

    if( ( is_numeric($update_id) ) && ($submit != "Submit") ) {
        $data['columns'] = $this->fetch_data_from_db($update_id);
        //checkArray($data['columns'],0);
    } else {
        $data['columns'] = $this->fetch_data_from_post();
    }


    $this->load->module('store_cat_assign');
    list( $query, $data['assigned_categories'], $data['sub_categories'] )=
         $this->store_cat_assign->get_category_info($update_id);

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

    $this->load->helper('store_items/store_prd_helper');    
    list($parent_cat_name, $parent_cat_title) =
             parent_cat_folder($data['columns']['sub_cat_id']);    

    /* Set image name here */
    $file_location =
     base_url().$this->upload_img_base.$parent_cat_name.'/new_uploads/'.$data['columns']['active_image'];
     
    if( empty($data['columns']['active_image']) || file_exists( $file_location ) == FALSE) {
        $data['active_image'] = "http://via.placeholder.com/350x350";
    } else {
        $data['active_image'] = $file_location;
    }

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


// function view( $update_id )
// {
//     $this->_numeric_check( $update_id );
//     // fetch item details for pubic page
//     $data = $this->fetch_data_from_db( $update_id );

//     // build breadcrumbs_data
//     $preview = $this->uri->segment(4) == 'preview' ? true : false; // from store_items update - no breadcrumbs on preview
//     $breadcrumbs_data['template'] = 'public_bootstrap';
//     $breadcrumbs_data['current_page_title'] = $data['item_title'];
//     $breadcrumbs_data['breadcrumbs_array'] = $preview ? '' :  $this->_generate_breadcrumbs_array($update_id);

//     $data['breadcrumbs_data'] = $breadcrumbs_data;  //pass this array to data
//     $data['headline']  = "";
//     $data['view_module'] = "store_items";
//     $data['view_file'] = "view";
//     $data['update_id'] = $update_id;

//     $this->_render_view('public_bootstrap', $data);
// }

// function _get_item_id_from_item_url($item_url) {
//     $query   = $this->get_where_custom('item_url', $item_url);
//     $num_row = $query->num_rows();

//     // show_error('Page was found........... ' );
//     if($num_row == 0 ) show_404();

//     $item_id = $query->result()[0]->id;
//     return $item_id;
// }

// function _generate_breadcrumbs_array($update_id)
// {
//     $homepage_url = base_url();
//     $breadcrumbs_array[$homepage_url]  = 'Home';

//     //get $sub_cat_id for this item
//     $table = 'store_cat_assign';
//     $orderby = null;
//     $sub_cat_id = $this->_get_sub_cat_id('item_id', $update_id, $table, $orderby);

//     //use $sub_cat to get title and the url
//     $table = 'store_categories';
//     $orderby = null;
//     list($get_sub_title, $sub_cat_url ) = $this->_get_cat_data('id', $sub_cat_id, $table, $orderby);

//     $this->load->module('site_settings');
//     $item_segments = $this->site_settings->_get_items_segments();
//     $full_cat_url = base_url().$item_segments.$sub_cat_url;

//     $breadcrumbs_array[$full_cat_url]  = $get_sub_title;
//     return $breadcrumbs_array;
// }

// function _get_sub_cat_id( $col, $update_id, $table, $orderby )
// {
//   $query = $this->model_name->get_view_data_custom($col, $update_id, $table, $orderby);
//   $sub_cat_id = $query->result()[0]->cat_id;
//   return $sub_cat_id;
// }

// function _get_cat_data($col, $update_id, $table, $orderby)
// {
//   $query = $this->model_name->get_view_data_custom($col, $update_id, $table, $orderby);
//   $sub_cat_title = $query->result()[0]->cat_title;
//   $sub_cat_url = $query->result()[0]->category_url;
//   return array( $sub_cat_title, $sub_cat_url );
// }

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