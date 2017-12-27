<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class Store_products extends MY_Controller 
{

/* model name goes here */
var $mdl_name = 'mdl_store_products';
var $main_controller = 'store_products';

var $column_rules = array(
        array('field' => ' ... ', 'label' => ' ... ', 'rules' => ' ... ')
);

public $default = [];


function __construct() {
    parent::__construct();

    /* get product data */
    $update_id = $this->uri->segment(3);
    $this->default['flash'] = $this->session->flashdata('item'); 
    $this->load->helper('store_items/store_prd_helper');      
}



/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
  ==================================================== */

function manage($sub_cat_id)
{
    list($parent_dir, $parent_cat_title, $parent_cat_id) = parent_cat_folder($sub_cat_id);
    $sub_cat_title = sub_cat_title($sub_cat_id);

    $main_category_dir = "public/images/products/".$parent_dir;

    $data['products'] = $this->get_where_custom('sub_cat_id', $sub_cat_id, 'short_desc');
    $data['main_category_dir'] = $main_category_dir;
    $data['sub_cat'] = $sub_cat_title;
    $data['parent_cat'] = $parent_cat_title;

    $data['custom_jscript'] = [];
    $data['page_url'] = "manage";
    $data['view_module'] = 'store_products';
    $data['title'] = "Manage Products";

    $this->load->module('templates');
    $this->templates->public_main($data);            
}

function view($item_id)
{

    $results_set = $this->model_name->get_view_data_custom( 'id', $item_id, 'store_items', null)->result();
    $sub_cat_id = strtolower($results_set[0]->sub_cat_id);    
    $image_name = strtolower($results_set[0]->active_image);
    list($parent_dir, $parent_cat_title, $parent_cat_id) = parent_cat_folder($sub_cat_id);
    $image_name = $parent_dir."/".$image_name;


    $data['update_id'] = $item_id;
    $data['active_image'] = $image_name;
    $data['item_description'] = $results_set[0]->description;
    $data['item_title'] = $results_set[0]->short_desc;

    $data['custom_jscript'] = [];
    $data['page_url'] = "view";
    $data['view_module'] = 'store_items';
    // $data['title'] = "Add to Basket";

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
