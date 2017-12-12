<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Rename Perfectcontroller to [Name]
class Default_module extends MX_Controller
{


function __construct() {
    parent::__construct();

}


function index()
{

	$first_bit = trim($this->uri->segment(1) );
	$this->load->module('webpages');

	$query = $this->webpages->get_where_custom('page_url', $first_bit);
	$num_rows = $query->num_rows();

	if($num_rows > 0) {
		$items_query = [];
		$ids = [];
		$parent_cat_dir = [];
		//we have found content... load page
		foreach($query->result() as $row ){
			$page_id = $row->id;
			$data['page_url'] = strtolower($row->page_url);
			$data['page_title'] = $row->page_title;
			$data['page_keywords'] = $row->page_keywords;
			$data['page_description'] = $row->page_description;
			$data['page_content'] = $row->page_content;
		}

		/* This will add product data to _html_aside_right of static pages */ 
	    $items_query = $this->model_name->get_view_data_custom( 'webpage_id', $page_id, 'store_item_assign', $orderby = null);
		$num_rows = $items_query->num_rows();

        if( $num_rows > 0 ){
        	foreach ($items_query->result() as $row )
        			 $ids[] = $row->item_id;
			$data['items_query'] = $this->model_name->get_with_many('store_items', $ids )->result();
        }
		/* End - This will add product data to _html_aside_right of static pages */ 

	} else {
		// echo "<h1>Page Not Found 2 ".$first_bit."</h1>"; 
		$data['page_url'] = '404_page';
		$this->load->module('site_settings');
		$data['page_content'] = $this->site_settings->_get_page_not_found_msg();
	}

	$this->load->module('templates');
	$this->templates->public_main($data);
}

function admin( $data = array() )
{
   
    $this->load->module('site_security');
    // $this->site_security->_make_sure_is_admin();

    if( !isset( $data['view_module'] ) )
        $data['view_module']= $this->uri->segment(1);

    $this->load->view('admin/admin', $data);
}

function contact_form(){

	if( ENV != 'local' ) {
		// send email to jdmedical
		$email 		 = 'info@jdmedicalsupplies.org';
	    $admin_email = 'webmaster@411mysite.com';
	    $admin_email2= 'jpkinsley@gmail.com';	    
	    $from        = $_POST['email'];
	    $subject     = 'JD Medical Supplies: '.$_POST['subject'];
	    $message     = "Time Stamp : ".convert_timestamp( time(), 'full')."\n\n";
	    $message    .= "Message    : ".$_POST['message']."\n\n";

	    $this->load->library('email');
	    $this->email->from( $from);
	    $this->email->to($email);
	    $this->email->cc($admin_email2);
		$this->email->bcc($admin_email );

	    $this->email->subject($subject);
	    $this->email->message($message);

	    $this->email->send();
	}

	/* send to confimation page */
    redirect(base_url()."contactus-confirmation");
}

} // End class Controller
