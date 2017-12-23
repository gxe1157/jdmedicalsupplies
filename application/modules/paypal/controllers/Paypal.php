<?php
class Paypal extends MX_Controller 
{

function __construct() {
parent::__construct();
}

function _is_on_test_mode()
{
    return TRUE; //set this to FALSE if we are live!
}

function _draw_checkout_btn($query)
{
    $this->load->module('site_settings');
    $this->load->module('site_security');
    $this->load->module('shipping');

    foreach($query->result() as $row) {
        $session_id = $row->session_id;
    }

    $on_test_mode = $this->_is_on_test_mode();

    if ($on_test_mode==TRUE) {
        $data['form_location'] = 'https://www.sandbox.paypal.com/cgi-bin/webscr';
    } else {
        $data['form_location'] = 'https://www.paypal.com/cgi-bin/webscr';
    }

    $data['shipping'] = $this->shipping->_get_shipping();
    $data['custom'] = $this->site_security->_encrypt_string($session_id);
    $data['paypal_email'] = $this->site_settings->_get_paypal_email();
    $data['currency_code'] = $this->site_settings->_get_currency_code();
    $data['query'] = $query;
    $this->load->view('checkout_btn', $data);
}

}