<?php
class Authorize_net extends MX_Controller 
{

function __construct() {
parent::__construct();
   $this->load->library('MyAuthorize');
}


function index()
{

   $detCus	= '10.25';
   $this->myauthorize->chargerCreditCard($detCus);
quit('done');

    $data['view_module'] = 'authorize_net';    
    $data['page_url'] = 'form';

    $this->load->module('templates');
    $this->templates->public_main($data);    
}


}