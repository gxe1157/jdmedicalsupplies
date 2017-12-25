<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class Store_vendors extends MY_Controller 
{

/* model name goes here */
public $mdl_name = 'Mdl_store_vendors';
public $main_controller = 'store_vendors';

public $column_rules = [];

// used like this.. in_array($key, $columns_not_allowed ) === false )
public $columns_not_allowed = array( 'create_date' );
public $default = array();

function __construct() {
    parent::__construct();

    /* is user logged in */
    $this->default = login_init();    

    /* get user data */
    $update_id = $this->uri->segment(3);
    $results_set = $this->model_name->get_view_data_custom('id', $update_id,'user_login', null)->result();

    $this->load->helper('store_vendors/form_flds_helper');
    $this->column_rules = get_fields();

    $this->default['page_nav'] = "Vendor Accounts";     
    $this->default['username'] = count($results_set) > 0 ? $results_set[0]->username : '';

    /* user status */
    $this->default['user_status'] = count($results_set) > 0 ? $results_set[0]->status : '';   
    $this->default['user_is_delete'] = count($results_set) > 0 ? $results_set[0]->is_delete : 0;        

    /* page settings */
    $this->default['headline']    = !is_numeric($update_id) ? "Manage Vendors" : "Update Vendor Details";
    $this->default['page_header'] = !is_numeric($update_id) ? "Add New Vendor" : "Update Vendor Details";
    $this->default['add_button']  = "Add New Vendor";
    $this->default['flash'] = $this->session->flashdata('item');

    $this->site_security->_make_sure_logged_in();
}


/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
   ==================================================== */

function manage() 
{

    $data['query'] = $this->get('company');
    // $data['columns'] = $this->model_name->get_login_data();

    $data['custom_jscript'] = [ 'public/js/datatables.min',
                                'public/js/site_datatable_loader',
                                'public/js/format_flds'];

    $data['page_url'] = "manage";
    $data['view_module'] = "store_vendors";    
    $data['title'] = "Manage Vendor Accounts";
    $this->default['page_title'] = "Manage Vendor Accounts";
    $data['default'] =  $this->default;  

    $this->load->module('templates');
    $this->templates->admin($data);        

}


function create() 
{
    $update_id = $this->uri->segment(3);
    $submit = $this->input->post('submit', TRUE);

    if ($submit=="Cancel")
        redirect('store_vendors/manage');

    if ($submit=="Submit") {
        //process the form
        $this->load->library('form_validation');
        $this->form_validation->set_rules( $this->column_rules );

        if ($this->form_validation->run() == TRUE) {
            //get the variables
            $data = $this->fetch_data_from_post();

            if (is_numeric($update_id)) {
                //update the item details
                $this->_update($update_id, $data);
                $flash_msg = "The account details were successfully updated.";
                $value = '<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
            } else {
                //insert a new item
                    $data['date_made'] = time();
                    $update_id = $this->_insert($data); //get the ID of the new item
                    $flash_msg = "The account was successfully added.";
                    $value = '<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
            }
            $this->session->set_flashdata('item', $value);
            redirect('store_vendors/create/'.$update_id);

        }
    }

    if( ( is_numeric($update_id) ) && ($submit != "Submit") ) {
        $data['columns'] = $this->fetch_data_from_db($update_id);
    } else {
        $data['columns'] = $this->fetch_data_from_post();
    }

    $data['columns_not_allowed'] = $this->columns_not_allowed;
    // $data['labels'] = $this->_get_column_names('label');
    $data['fld_data'] = $this->_build_flds();

    $data['update_id'] = $update_id;
    $data['page_url'] = "create";

    $this->default['page_title'] = "Manage Vendor Accounts";
    $data['default'] =  $this->default;  


    $this->load->module('templates');
    $this->templates->admin($data);

}

function _build_flds()
{
    foreach ($this->column_rules as $key => $value) {
        $is_required = substr($this->column_rules[$key]['rules'],0,8 );
        $is_req_output ='<i class="fa fa-asterisk"
                         style="font-size: .6em;color:red;"
                         aria-hidden="true"></i>';


        $field  = $this->column_rules[$key]['field'];
        $fld_data[$field] = [
            'label' => $this->column_rules[$key]['label'],
            'required' => $is_required == 'required' ? $is_req_output : '',
            'icon' => $this->column_rules[$key]['icon']
        ];
    }
    return $fld_data;
}


/* ===============================================
    Callbacks go here
  =============================================== */





/* ===============================================
    David Connelly's work from perfectcontroller
    is in applications/core/My_Controller.php which
    is extened here.
  =============================================== */


} // End class Controller
