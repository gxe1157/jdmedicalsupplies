<?php
class payeezy extends MX_Controller 
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

    $data['custom'] = $this->site_security->_encrypt_string($session_id);
    $data['payeezy_email'] = $this->site_settings->_get_paypal_email();
    $data['currency_code'] = $this->site_settings->_get_currency_code();

    $on_test_mode = $this->_is_on_test_mode();
    if ($on_test_mode==TRUE) {
        $data['form_location'] = "https://demo.globalgatewaye4.firstdata.com/payment";
    } else {
        $data['form_location'] = '';
    }

    $data['payeezy'] = $this->payeezy_config($query);
    $this->load->view('checkout_btn', $data);

}

function payeezy_config($query)
{
    $shippingRate = $this->shipping->_get_shipping();
    $taxRate      = $this->shipping->_get_tax();
    $tax_shipping = $this->shipping->_get_tax_opt();    

    foreach($query->result() as $row) {
        $session_id  = $row->session_id;                
        $line_item_total = number_format($row->price*$row->item_qty,2);
        $cart_total = number_format($cart_total+$line_item_total,2);

        $line_is_taxable = 1;
        if($line_is_taxable)
           $total_tax_line  = number_format($total_tax_line+$line_item_total,2);
    }

    /* Compute Total taxes */ 
    $shipping_tax = $tax_shipping == 0 ? 0 : $shippingRate;
    $total_tax_line = $total_tax_line+$shipping_tax;
    $tax_total  = number_format($total_tax_line*$taxRate,2);

    // $this->check_out_proof( $session_id, $shippingRate, $taxRate, $cart_total, $total_tax_line, $tax_total );

    $x_amount = number_format( $cart_total+$tax_total+$shippingRate,2); 

    $payeezy['x_login'] = "HCO-FULL-468";  //  Take from Payment Page ID in Payment Pages interface
    $payeezy['transaction_key'] = "H1cCqmSAEZVN0HDrc_qz"; // Take from Payment Pages configuration interface
    $payeezy['x_currency_code'] = "USD"; // Needs to agree with the currency of the payment page
    srand(time()); // initialize random generator for x_fp_sequence
    $payeezy['x_fp_sequence'] = rand(1000, 100000) + 123456;
    $payeezy['x_fp_timestamp'] = time(); // needs to be in UTC. Make sure webserver produces UTC

    // The values that contribute to x_fp_hash 
    $payeezy['x_amount'] = number_format($x_amount,2);   
    $payeezy['hmac_data'] = $payeezy['x_login'] . "^" . $payeezy['x_fp_sequence'] . "^" . $payeezy['x_fp_timestamp'] . "^" . $payeezy['x_amount'] . "^" . $payeezy['x_currency_code'];
    $payeezy['x_fp_hash'] = hash_hmac('MD5', $payeezy['hmac_data'], $payeezy['transaction_key']);

    unset($payeezy['hmac_data']);
    unset($payeezy['transaction_key']);

    return $payeezy;
}

function confirmation()
{
    // checkArray( $_REQUEST,1);
    /* payeezy response */
    $data['_REQUEST'] = $_REQUEST;    
    $data['view_module'] = 'payeezy';        

    if( $_REQUEST['x_response_code'] == '1') {
        // $this->load->module('store_basket');
        // $rows_updated = $this->update_orders();
        // $rows_deleted = $this->store_basket->clear_cart();
        // if($rows_deleted<1) fatal_error();

        $data['page_url'] = 'thankyou';
    } else {
        $this->cancel($data);        
        $data['page_url'] = 'cancel';
    } 

    $this->load->module('templates');
    $this->templates->public_main($data);    

}

function receipt_page(){

    $data['view_module'] = 'payeezy';    
    $data['page_url'] = 'receipt_page';

    $this->load->module('templates');
    $this->templates->public_main($data);    
}

function thankyou($data)
{
    $data['view_module'] = 'payeezy';    
    $data['page_url'] = 'thankyou';
// send email with receipt;

    $this->load->module('templates');
    $this->templates->public_main($data);    
}


function cancel()
{
    $data['view_module'] = 'payeezy';    
    $data['page_url'] = 'cancel';

    $this->load->module('templates');
    $this->templates->public_main($data);    
}

function check_out_proof( $session_id, $shippingRate, $taxRate, $cart_total, $total_tax_line, $tax_total )
{

    echo '<h5>session: '.$session_id.'<br />cart_total: '.$cart_total.'<br />taxable_total: '.$total_tax_line.'<br />tax [ '.($taxRate*100).'% ]: '.$tax_total.'<br />shipping: '.$shippingRate.'<br />x_amount: '.number_format($cart_total+$tax_total+$shippingRate,2).'</h5>';
}


} /************/ 