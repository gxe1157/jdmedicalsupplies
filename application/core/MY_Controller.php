<?php (defined('BASEPATH')) OR exit('No direct script access allowed');

class MY_Controller extends MX_Controller
{

function __construct()
{
  parent::__construct();

  $this->load->module('site_security');  
  $this->load->library('form_validation');
  $this->form_validation->CI =& $this;

  /* ===============================================================
    model name is assigned from $this->mdl_name to  'model_name' which is a constant
   =============================================================== */
   if( $this->mdl_name != 'mdl_' ) $this->load->model( $this->mdl_name, 'model_name');

}


/* ===============================================
   Add DRY funtions  // Added By Evelio Velez 04-2017
   =============================================== */

function send_mail($from, $subject, $message)     
{

    if( ENV != 'local' ) {
        // send email to jdmedical
        $email       = 'info@jdmedicalsupplies.org';
        $admin_email = 'webmaster@411mysite.com';
        $from        = $_POST['email'];

        $this->load->library('email');
        $this->email->from( $from);
        $this->email->to($email);
        $this->email->cc();
        $this->email->bcc($admin_email);

        $this->email->subject($subject);
        $this->email->message($message);

        $this->email->send();
    }
    // if ( ! $this->email->send()) {
    //         // Generate log error
    // }
}


function _security_check()
{
    $this->load->library('session');
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();
}

function _numeric_check($update_id)
{
    if( !is_numeric($update_id) )
        redirect('site_security/not_allowed');
}

function _set_flash_msg($flash_msg)
{
    $value = '<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
    $this->session->set_flashdata('item', $value);
}

function _set_flash_danger_msg($flash_msg)
{
    $value = '<div style="border: 5px solid #578EBE; padding:10px; background-color: #f7d1b2; color: #000; font-size: 1.25em;">'.$flash_msg.'</div>';
    $this->session->set_flashdata('item', $value);
}


function _get_column_names( $key_value )  // we will use for $key_value only "field" or "label"
{
    foreach ($this->column_rules as $key => $value) {
        if( $key_value == 'field' ) {
            $data[] = $this->column_rules[$key][$key_value];
        } else {
            $field  = $this->column_rules[$key]['field'];
            $data[$field] = $this->column_rules[$key]['label'];
        }
    }
    // $this->lib->checkArray($data, 1);
    return $data;
}


function fetch_data_from_post()
{
    $field_names = $this->_get_column_names('field');
    $data = $this->model_name->_fetch_data_from_post($field_names);
    return $data;
}

function fetch_data_from_db($update_id)
{
    $field_names = $this->_get_column_names('field');
    $data = $this->model_name->_fetch_data_from_db($update_id, $field_names);

//    $this->lib->checkArray($data,0);
    if( !isset($data) ) {
        // No records found send to manage item page
        redirect( 'store_items/manage');
    }
    return $data;
}

function _get_cat_title( $update_id )
{
    $data = $this->fetch_data_from_db( $update_id );
    $cat_title = $data['cat_title'];
    return $cat_title;
}



/* ===============================================
   Below is Perfect Controller From David Connelly
   =============================================== */

function get($order_by)
{
    $query = $this->model_name->get($order_by);
    return $query;
}

function get_with_limit($limit, $offset, $order_by)
{
    if ((!is_numeric($limit)) || (!is_numeric($offset))) {
        die('Non-numeric variable!');
    }

    $query = $this->model_name->get_with_limit($limit, $offset, $order_by);
    return $query;
}

function get_where($id)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable! '.$id);
    }

    $query = $this->model_name->get_where($id);
    return $query;
}

function get_where_custom($col, $value, $order_by = null)
{
    $query = $this->model_name->get_where_custom($col, $value, $order_by);
    return $query;
}


function _insert($data)
{
    $this->model_name->_insert($data);
    return $this->model_name->_get_insert_id(); // added 07-22-17 Evelio   
}

function _update($id, $data)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable!');
    }

    $rows_updated = $this->model_name->_update($id, $data);
    return $rows_updated;
}

function _delete($id)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable!');
    }

    $rows_deleted = $this->model_name->_delete($id);
    return $rows_deleted;
}

function count_where($column, $value)
{
    $count = $this->model_name->count_where($column, $value);
    return $count;
}

function get_max()
{
    $max_id = $this->model_name->get_max();
    return $max_id;
}

function _custom_query($mysql_query)
{
    $query = $this->model_name->_custom_query($mysql_query);
    return $query;
}



}
