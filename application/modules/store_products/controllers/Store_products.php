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
    $this->default['page_nav']   = "Products";     
    $this->default['headline']    = !is_numeric($update_id) ? "Manage Products" : "Update Product Details";
    $this->default['page_header'] = !is_numeric($update_id) ? "Add New Prodcut" : "Update Product Details";
    $this->default['add_button']  = "Add New Product";
    $this->default['flash'] = $this->session->flashdata('item');   
}




/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
  ==================================================== */

function manage($sub_cat_id)
{

    $data['products'] = $this->get_where_custom('sub_cat_id', $sub_cat_id, 'short_desc');
    $prod_fields = $data['products']->result()[0];

    $str =  explode(" ",$prod_fields->parent_cat);
    $parent_dir = strtolower(join("_",$str));
    $main_category_dir = "public/images/jkingsley/jdmed/products/".$parent_dir;
checkField($main_category_dir,1);

    $data['main_category_dir'] = $main_category_dir;
    $data['sub_cat'] = $prod_fields->sub_cat;
    $data['parent_cat'] = $prod_fields->parent_cat;

    $data['add_items']    = true;
    $data['custom_jscript'] = [];
    $data['page_url'] = "manage";
    $data['view_module'] = 'store_products';
    $data['title'] = "Manage Products";

    $this->default['page_title'] = "Manage Products";
    $data['default'] =  $this->default;  

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
