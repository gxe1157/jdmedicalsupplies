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
}



/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
  ==================================================== */

function manage($sub_cat_id)
{

    $this->load->helper('store_items/store_prd_helper');    
    list($parent_dir, $parent_cat_title) = parent_cat_folder($sub_cat_id);
    $sub_cat_title = sub_cat_title($sub_cat_id);

    $main_category_dir = "public/images/jkingsley/jdmed/products/".$parent_dir;

    $data['products'] = $this->get_where_custom('sub_cat_id', $sub_cat_id, 'short_desc');
    $data['main_category_dir'] = $main_category_dir;
    $data['sub_cat'] = $sub_cat_title;
    $data['parent_cat'] = $parent_cat_title;

    $data['custom_jscript'] = [];
    $data['page_url'] = "manage";
    $data['view_module'] = 'store_products';
    // $data['title'] = "Manage Products";

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
