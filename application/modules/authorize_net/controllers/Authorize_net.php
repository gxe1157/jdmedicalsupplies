<?php
class Authorize_net extends MX_Controller 
{

function __construct() {
parent::__construct();
   $this->load->library('MyAuthorize');
}


function myauthorize()
{
    $remove_data =['Submit', 'submit', 'payment_gateway', '__ci_last_regenerate', 'cart_id',
     				'phone', 'email', 'ship_method', 'shipto_first_name', 'shipto_last_name',
     				'shipto_company', 'shipto_address', 'shipto_city', 'shipto_state',
     				'shipto_zip'];

	$data = array_merge($_POST, $_SESSION);
	foreach ($remove_data as $value)
					unset( $data[$value]);

    $data['amount'] = '10.25';

    list($reponse_code, $response) = $this->myauthorize->chargerCreditCard($data);
    $data['response'] = $reponse;
    $data['reponse_code'] = $reponse_code;

    $data['view_module'] = 'authorize_net';    
    $data['page_url'] = 'view';

    $this->load->module('templates');
    $this->templates->public_main($data);    
}


}