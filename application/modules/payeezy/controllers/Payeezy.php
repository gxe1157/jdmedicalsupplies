<?php
class payeezy extends MX_Controller 
{

function __construct() {
parent::__construct();

    $this->load->helper('store_accounts/gateway_flds_helper');
    $this->column_rules = get_fields();
}


function goto_gateway()
{

checkArray($_POST , 1);

    $this->load->library('form_validation');
    $this->form_validation->set_rules( $this->column_rules );

    if($this->form_validation->run() == TRUE) {
        quit('Ready to go to gateway');
        $data['form_location'] = "https://demo.globalgatewaye4.firstdata.com/payment";
        
    } else {
        $data = $this->build_data($data);

        $data['check1'] = array_key_exists("ship_ground", $_POST) ? 'checked' : ''  ;
        $data['check2'] = array_key_exists("ship_2days", $_POST) ? 'checked' : ''  ;
        $data['check3'] = array_key_exists("ship_nextday", $_POST) ? 'checked' : ''  ;

        $data['val_errors'] = count(validation_errors());
        $data['view_module'] = 'cart';    
        $data['page_url'] = 'pay_now';

        $this->load->module('templates');
        $this->templates->public_main($data);   
    }

}

function _draw_checkout_btn($query)
{
    $this->load->module('site_settings');
    $this->load->module('site_security');
    $this->load->module('shipping');

    $data['custom'] = $this->site_security->_encrypt_string($session_id);
    $data['payeezy_email'] = $this->site_settings->_get_paypal_email();
    $data['currency_code'] = $this->site_settings->_get_currency_code();

    if( ENV != 'local' )
        $data['form_location'] = "payeezy/goto_gateway";
    else
        $data['form_location'] = "goto_gateway" ; /* use to debug - skip gateway */

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
    // $data['_REQUEST'] = $_REQUEST;    

    if( $_REQUEST['x_response_code'] == '1') {
        /* post payment information */
        $data['Authorization_Num'] = $_REQUEST['Authorization_Num'];
        $data['Bank_Message']      = $_REQUEST['Bank_Message'];
        $data['CardHoldersName']   = $_REQUEST['CardHoldersName'];
        $data['Card_Number']       = $_REQUEST['Card_Number'];
        $data['Client_IP']         = $_REQUEST['Client_IP'];
        $data['payment_method']    = $_REQUEST['TransactionCardType'];
        $data['payment_amount']    = $_REQUEST['DollarAmount'];
        $data['transaction_id']    = $_REQUEST['Transaction_Tag'];

        $data['order_number'] = '';
        $data['user_id'] = '';
        $data['username'] = '';        
        $data['transaction_type'] = 'e_store';

        $data['session_id']  = $this->session->cart_id;
        $data['ip_address']  = $this->input->ip_address();
        $data['create_date'] = time();
        $data['modified_date'] = 0;
        $data['admin_id'] = 0;

        $this->load->module('store_orders');
        $payment_id = $this->store_orders->payment_details('payments', $data);

        $this->thankyou($data);
    } else {
        $this->cancel();        
    } 

}

function thankyou($data = null)
{
    build_data($data);
                                                        // if( isset($this->session->cart_id) ) {
                                                        //     $session_id = $this->session->cart_id;
                                                        //  } else {
                                                        //     redirect('cart/cart');
                                                        // }    

                                                        // $this->load->module('site_security');
                                                        // $shopper_id = $this->site_security->_get_user_id();
                                                        // if (!is_numeric($shopper_id))
                                                        //         $shopper_id = 0;

                                                        // $this->load->module('cart');
                                                        // $table = 'store_basket';
                                                        // $data['query'] = $this->cart->_fetch_cart_contents($session_id, $shopper_id, $table);

    $data['view_module'] = 'payeezy';    
    $data['page_url'] = 'thankyou';

    $this->load->module('templates');
    $this->templates->public_main($data);    
}


function build_data($data = array())
{
    if( isset($this->session->cart_id) ) {
        $session_id = $this->session->cart_id;
     } else {
        redirect('cart/cart');
    }    

    $this->load->module('site_security');
    $shopper_id = $this->site_security->_get_user_id();
    if (!is_numeric($shopper_id))
            $shopper_id = 0;

    $this->load->module('cart');
    $table = 'store_basket';
    $data['query'] = $this->cart->_fetch_cart_contents($session_id, $shopper_id, $table);
    return $data;
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