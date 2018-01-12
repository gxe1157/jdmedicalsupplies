<?php
class Youraccount extends MY_Controller 
{

/* model name goes here */
public $mdl_name = 'Mdl_youraccount';
public $main_controller = 'youraccount';

public $column_rules = array(
        array('field' => 'username', 'label' => 'Username',
              'rules' => 'required|min_length[5]|max_length[60]|is_unique[store_accounts.username]'),
        array('field' => 'email', 'label' => 'Email',
              'rules' => 'required|valid_email|max_length[120]'),
        array('field' => 'pword', 'label' => 'Password',
              'rules' => 'required|min_length[6]|max_length[35]'),
        array('field' => 'repeat_pword', 'label' => 'Repeat Password',
              'rules' => 'required|matches[pword]')
);

// used like this.. in_array($key, $columns_not_allowed ) === false )
public $columns_not_allowed = array( 'create_date' );

function __construct() {
    parent::__construct();
    // $this->load->library('form_validation');
    // $this->form_validation->CI =& $this;
}

function homebase()
{
  quit('Home..........  '.uri_string());
}

function start()
{
    $data = $this->fetch_data_from_post();
    $data['flash'] = $this->session->flashdata('item');
    $data['page_url'] = "start";
    $this->load->module('templates');
    $this->templates->public_main($data);
}


function welcome()
{
    $this->load->module('site_security');
    $this->site_security->_make_sure_logged_in();

    $data['flash'] = $this->session->flashdata('item');
    $data['page_url'] = "welcome";
    $this->load->module('templates');
    $this->templates->public_main($data);
}

function logout()
{
    unset($_SESSION['user_id']);
    $this->load->module('site_cookies');
    $this->site_cookies->_destroy_cookie();
    redirect(base_url());
}

function login()
{
    $data['log_source'] = uri_string() == 'youraccount/myLogin' ? 'myLogin' : 'storeLogin';
    $data['username'] = $this->input->post('username', TRUE);
    $data['page_url'] = "login";
    $this->load->module('templates');
    $this->templates->public_main($data);
}

function submit_login()
{

    $submit = $this->input->post('submit', TRUE);
    $login_source = $this->input->post('log_source', TRUE);

    if ($submit=="Submit") {
        //process the form
        // $this->form_validation->set_rules('username', 'Username', 'required|min_length[5]|max_length[60]');
        //process the form
        $this->form_validation->set_rules('username', 'Username', 'required|min_length[5]|max_length[60]|callback_username_check');

        $this->form_validation->set_rules('pword', 'Password', 'required|min_length[6]|max_length[35]');

        if ($this->form_validation->run() == TRUE) {
            //figure out the user_id
            $col1 = 'username';
            $value1 = $this->input->post('username', TRUE);
            $col2 = 'email';
            $value2 = $this->input->post('username', TRUE);
            $query = $this->model_name->get_with_double_condition('store_accounts', $col1, $value1, $col2, $value2);

            foreach($query->result() as $row) {
                $user_id = $row->id;
            }

            $remember = $this->input->post('remember', TRUE);
            if ($remember=="remember-me") {
                $login_type = "longterm";
            } else {
                $login_type = "shortterm";
            }

            $data['last_login'] = time();
            $this->model_name->_update($user_id, $data);
            //send them to the private page
            $this->_in_you_go($user_id, $login_type, $login_source);

        } else {
            $this->login();
            // echo validation_errors();
            // on fail 3 times use capcha after 3 more attempts then suspend
        }
    }

}


function submit()
{
    $submit = $this->input->post('submit', TRUE);
    if ($submit=="Submit") {

        //process the form
        $this->form_validation->set_rules( $this->column_rules );
        if ($this->form_validation->run() == TRUE) {
            //get the variables
            $this->_process_create_account();
            //$data['flash'] = $this->session->flashdata('item');
            redirect('youraccount/login');

        } else {
            $this->start();
        }
    }
}

function _process_create_account()
{
    $data = $this->fetch_data_from_post();

    unset($data['repeat_pword']);
    $pword = $data['pword'];
    $this->load->module('site_security');
    $data['pword'] = $this->site_security->_hash_string($pword);
    $this->model_name->_insert($data);

}

function _in_you_go($user_id, $login_type, $login_source)
{
    //NOTE: the login_type can be longterm or shortterm
    if ($login_type=="longterm") {
        //set a cookie
        $this->load->module('site_cookies');
        $this->site_cookies->_set_cookie($user_id);
    } else {
        //set a session variable
        $this->session->set_userdata('user_id', $user_id);
    }

    // update cart and divert to cart
    // checkField($login_source,0);
    if( $login_source != 'myLogin' )
        $this->_attempt_cart_divert();

    //send the user to the private page
    redirect('youraccount/welcome');

}

function _attempt_cart_divert()
{
    $customer_session_id = $this->session->cart_id;
    $user_id = $this->session->user_id;

    $col1  = 'session_id';
    $value1= $customer_session_id;
    $col2  = 'shopper_id';
    $value2= '0';

    $query = $this->model_name->get_with_double_condition('store_basket', $col1, $value1, $col2, $value2);
    $num_rows = $query->num_rows();  
          
    if($num_rows>0){
        //update cart database
        $mysql_query = "update store_basket set shopper_id=".$user_id."
                        where session_id='".$customer_session_id."'";

        $query = $this->model_name->_custom_query($mysql_query);
        redirect('cart');
    }
}

function fetch_data_from_post()
{
    $data['username'] = $this->input->post('username', TRUE);
    $data['email'] = $this->input->post('email', TRUE);
    $data['pword'] = $this->input->post('pword', TRUE);
    $data['repeat_pword'] = $this->input->post('repeat_pword', TRUE);
    return $data;
}


function test1()
{
    $your_name = "David";
    $this->session->set_userdata('your_name', $your_name);
    echo "The session variable was set.";

echo "<hr>";
    echo anchor('youraccount/test2', 'Get (display) the session variable')."<br>";
    echo anchor('youraccount/test3', 'Unset (destry) the session variable')."<br>";
}

function test2()
{
    $your_name = $this->session->userdata('your_name');
    if ($your_name!="") {
        echo "<h1>Hello $your_name</h1>";
    } else {
        echo "No session variable has been set for your_name";
    }

echo "<hr>";
    echo anchor('youraccount/test1', 'Set the session variable')."<br>";
    echo anchor('youraccount/test3', 'Unset (destry) the session variable')."<br>";
}

function test3()
{
    unset($_SESSION['your_name']);
    echo "The session variable was unset.";

    echo "<hr>";
    echo anchor('youraccount/test1', 'Set the session variable')."<br>";
    echo anchor('youraccount/test2', 'Get (display) the session variable')."<br>";
}


/* ===============================================
    Call backs go here...
   =============================================== */

function username_check($str) 
{

  $error_msg = "You did not enter a correct username and/or password.";

  $col1 = 'username';
  $value1 = $str;
  $col2 = 'email';
  $value2 = $str;
  $query = $this->model_name->get_with_double_condition('user_login', $col1, $value1, $col2, $value2);    

  //    $query = $this->model_name->get_with_double_condition('store_accounts',$col1, $value1, $col2, $value2);
  

    $num_rows = $query->num_rows();

    if ($num_rows<1) {
        $this->form_validation->set_message('username_check', $error_msg);
        return FALSE;        
    }

    foreach($query->result() as $row) {
        $pword_on_table = $row->pword;
    }

    $pword = $this->input->post('pword', TRUE);
    $result = $this->site_security->_verify_hash($pword, $pword_on_table);

    if ($result==TRUE) {
        return TRUE;
    } else {
        $this->form_validation->set_message('username_check', $error_msg);
        return FALSE;         
    }
}


} /* ========= */