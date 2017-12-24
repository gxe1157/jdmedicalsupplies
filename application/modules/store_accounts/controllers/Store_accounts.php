<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class Store_accounts extends MY_Controller 
{

/* model name goes here */
public $mdl_name = 'Mdl_store_accounts';
public $main_controller = 'store_accounts';

public $column_rules = [];
public $column_pword_rules  = array(
        array('field' => 'password', 'label' => 'Password',
              'rules' => 'required|min_length[6]|max_length[35]'),
        array('field' => 'confirm_password', 'label' => 'Confirm Password',
              'rules' => 'required|matches[password]')
);

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

    $this->load->helper('store_accounts/form_flds_helper');
    $this->column_rules = get_fields();

    $this->default['page_nav'] = "Customer Accounts";     
    $this->default['username'] = count($results_set) > 0 ? $results_set[0]->username : '';

    /* user status */
    $this->default['user_status'] = count($results_set) > 0 ? $results_set[0]->status : '';   
    $this->default['user_is_delete'] = count($results_set) > 0 ? $results_set[0]->is_delete : 0;        

    /* page settings */
    $this->default['headline']    = !is_numeric($update_id) ? "Manage Customers" : "Update Customer Details";
    $this->default['page_header'] = !is_numeric($update_id) ? "Add New Customer" : "Update Customer Details";
    $this->default['add_button']  = "Add New Customer";
    $this->default['flash'] = $this->session->flashdata('item');

    $this->site_security->_make_sure_is_admin();
}


/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
   ==================================================== */

function manage() 
{

    $data['query'] = $this->get('username');
    // $data['columns'] = $this->model_name->get_login_data();

    $data['custom_jscript'] = [ 'public/js/datatables.min',
                                'public/js/site_datatable_loader',
                                'public/js/format_flds'];

    $data['page_url'] = "manage";
    $data['view_module'] = "store_accounts";    
    $data['title'] = "Manage Customer Accounts";
    $this->default['page_title'] = "Manage Customer Accounts";
    $data['default'] =  $this->default;  

    $this->load->module('templates');
    $this->templates->admin($data);        

}


function create() 
{
    $update_id = $this->uri->segment(3);
    $submit = $this->input->post('submit', TRUE);

    if ($submit=="Cancel")
        redirect('store_accounts/manage');

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
                $this->session->set_flashdata('item', $value);
                redirect('store_accounts/create/'.$update_id);
            } else {
                //insert a new item
                list( $username_num, $email_num) = $this->model_name->confirm_userid_email_unique( 'username', $data['username'], 'email', $data['email'] );
                if( $username_num == 0 && $email_num == 0 ) { 
                    /* Success! Create New Record */
                    $data['date_made'] = time();
                    // $update_id = $this->_insert($data); //get the ID of the new item
                    $flash_msg = "The account was successfully added.";
                    $value = '<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
                } else {
                    if( $username_num > 0 )
                        $flash_msg = "The username ".$data['username']." is already taken.<br>Please select another username<br><br>";                        
                    if( $email_num > 0 )
                        $flash_msg .= "The email ".$data['email']." is already taken.<br>Please select another email.";                        

                    $value = '<div class="alert alert-danger" role="alert">'.$flash_msg.'</div>';

                }

                $this->session->set_flashdata('item', $value);
                redirect('store_accounts/create/'.$update_id);
            }
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

    $this->default['page_title'] = "Manage Customer Accounts";
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

function _generate_token($update_id)
{
    $data = $this->fetch_data_from_db($update_id);
    $date_made = $data['date_made'];
    $last_login = $data['last_login'];
    $pword = $data['pword'];

    $pword_length = strlen($pword);
    $start_point = $pword_length-6;
    $last_six_chars = substr($pword, $start_point, 6);
    
    if (($pword_length>5) AND ($last_login>0)) {
        $token = $last_six_chars.$date_made.$last_login;
    } else {
        $token = '';
    }

    return $token;
}

function _get_customer_id_from_token($token)
{
    $last_six_chars = substr($token, 0, 6); //last six from stored (hashed) pword
    $date_made = substr($token, 6, 10);
    $last_login = substr($token, 16, 10);
    
    $sql = "SELECT * FROM store_accounts WHERE date_made = ? AND pword LIKE ? AND last_login = ?";
    $query = $this->db->query($sql, array($date_made, '%'.$last_six_chars, $last_login));
    foreach($query->result() as $row) {
        $customer_id = $row->id;
    }

    if (!isset($customer_id)) {
        $customer_id = 0;
    }

    return $customer_id;
}

function _get_customer_name($update_id, $optional_customer_data=NULL)
{

    if (!isset($optional_customer_data)) {
        $data = $this->fetch_data_from_db($update_id);
    } else {
        $data['firstname'] = $optional_customer_data['firstname'];
        $data['lastname'] = $optional_customer_data['lastname'];
        $data['company'] = $optional_customer_data['company'];
    }
    
    if ($data=="") {
        $customer_name = "Unknown";
    } else {
        $firstname = trim(ucfirst($data['firstname']));
        $lastname = trim(ucfirst($data['lastname']));
        $company = trim(ucfirst($data['company']));

        $company_length = strlen($company);
        if ($company_length>2) {
            $customer_name = $company;
        } else {
            $customer_name = $firstname." ".$lastname;
        }
    }

    return $customer_name;
}

function update_pword() 
{

    $this->load->library('session');
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $update_id = $this->uri->segment(3);
    $submit = $this->input->post('submit', TRUE);

    if (!is_numeric($update_id)) {
        redirect('store_accounts/manage');
    } elseif ($submit=="Cancel") {
        redirect('store_accounts/create/'.$update_id);
    }

    if ($submit=="Submit") {
        //process the form
        $this->load->library('form_validation');
        $this->form_validation->set_rules('pword', 'Password', 'required|min_length[7]|max_length[35]');
        $this->form_validation->set_rules('repeat_pword', 'Repeat Password', 'required|matches[pword]');

        if ($this->form_validation->run() == TRUE) {
            //get the variables
            $pword = $this->input->post('pword', TRUE);
            $this->load->module('site_security');
            $data['pword'] = $this->site_security->_hash_string($pword);
     
            //update the item details
            $this->_update($update_id, $data);
            $flash_msg = "The account password was successfully updated.";
            $value = '<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
            $this->session->set_flashdata('item', $value);
            redirect('store_accounts/create/'.$update_id);
            
        }
    }

    $data['headline'] = "Update Account Password";
    $data['update_id'] = $update_id;
    $data['flash'] = $this->session->flashdata('item');
    $data['view_file'] = "update_pword";
    $this->load->module('templates');
    $this->templates->admin($data);
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
