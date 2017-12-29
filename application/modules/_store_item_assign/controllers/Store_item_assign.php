<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class Store_item_assign extends MY_Controller 
{

/* model name goes here */
var $mdl_name = 'mdl_store_item_assign';

public $store_db_column = 'webpage_id';
public $default =[];

function __construct( )
{
    parent::__construct();
    /* is user logged in */
    $this->default = login_init();  
    $this->default['flash'] = $this->session->flashdata('item');
    $this->default['page_header'] = "Assign Product to Webpage";
    $this->site_security->_make_sure_logged_in(); 
    // checkField($this->uri->uri_string(),1);
}

/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
  ==================================================== */


function update( $item_id )
{
    $assigned_categories = [];
    $sub_categories = [];

    $this->_numeric_check( $item_id );

    // category values
    list( $query, $sub_categories, $webpages ) =
            $this->_get_category_info($item_id);

    $data['query'] = $query;
    $data['options'] = $sub_categories;
    $data['webpages'] = $webpages;
    $data['webpage_id']  = $this->input->post('webpage_id',TRUE);

    $data['options_hdr'] = 'Assign to Webpage';    
    $data['update_id'] = $item_id;    
    $data['num_rows']  = $data['query']->num_rows();
    $data['store_db_column'] = $this->store_db_column;

    $data['custom_jscript'] = [ 'public/js/datatables.min',
                                'public/js/site_datatable_loader',
                                'public/js/format_flds'
                                ];

    $data['page_url'] = "update";
    $data['title'] = "Manage Assign Products";

    $this->default['page_nav'] = "Update Assign Products";
    $data['default'] =  $this->default;  

    $this->load->module('templates');
    $this->templates->admin($data);        
}


function _get_category_info( $item_id )
{
    // get webpages
    $webpage_query =
        $this->model_name->get_view_data_custom( 'assign_items', 0, 'webpages', $orderby = null);
    foreach ($webpage_query->result() as $row) {
       $sub_categories[$row->page_title] = $row->id;
       $webpages[ $row->id ] = $row->page_title;       
    }

    // get an array of all assigned to item_id from store_item_assign
    $query = $this->get_where_custom('item_id', $item_id , $this->store_db_column);

    $assigned_categories = ['0' => "Please Select ..."];
    foreach ($query->result() as $row) {
       $assigned_categories[$row->id] = $row->webpage_id;
    }

    if( count($assigned_categories) == 1 ){
        $assigned_categories ="";
    } else {
        // Item has been assigned to at least one catergory
        $sub_categories = array_diff( $sub_categories, $assigned_categories );
    }

    $sub_categories = array_flip($sub_categories);                
    return [$query, $sub_categories, $webpages];
}


function submit( $item_id )
{
    $this->_numeric_check($item_id);    
    $this->_security_check();    

    $submit = $this->input->post('submit', TRUE);
    $webpage_id = trim($this->input->post('webpage_id', TRUE));

    if($submit == "Finished"){
        redirect('store_items/create/'.$item_id);

    } elseif ($submit == "Submit" ){
        // Insert new option
        if($webpage_id!=''){

            $data['item_id'] = $item_id;
            $data[ 'webpage_id'] = $webpage_id;
            $this->_insert($data);

            $page_title = $this->model_name->_get_page_title( $webpage_id );
            $this->_set_flash_msg("The item was successfully assigned to the ".$page_title." webpage");
        }
    }

    redirect( $this->uri->segment(1).'/update/'.$item_id);
}

function delete( $update_id )
{
    $this->_numeric_check($update_id);    
    $this->_security_check();    

    $item_id = $this->model_name->_get_item_id($update_id);
    $this->_delete($update_id);

    $page_title = $this->model_name->_get_page_title( $update_id );
    $this->_set_flash_msg("The ".$page_title." webpage has been un-assigned from this item");    
    redirect($this->uri->segment(1).'/update/'.$item_id);
    // $this->update($item_id);    
}



/* ===============================================
    Call backs go here...
  =============================================== */


/* ===============================================
    David Connelly's work from perfectcontroller
    is in applications/core/My_Controller.php which
    is extened here.
  =============================================== */


}