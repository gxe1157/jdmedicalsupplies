<?php
class payeezy extends MX_Controller 
{

function __construct() {
parent::__construct();

    $this->load->helper('store_accounts/gateway_flds_helper');
    $this->column_rules = get_fields();
}



/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
   =================================================== */

function _draw_checkout_btn($query)
{
    $this->load->module('site_settings');
    $this->load->module('site_security');
    $this->load->module('shipping');

    $data['custom'] = $this->site_security->_encrypt_string($session_id);
    $data['payeezy_email'] = $this->site_settings->_get_paypal_email();
    $data['currency_code'] = $this->site_settings->_get_currency_code();

    if( ENV != 'local' )
        $data['form_location'] = "https://demo.globalgatewaye4.firstdata.com/payment";    
    else
        $data['form_location'] = "store_orders"; /* use to debug - skip gateway goto "payeezy/confirmation" */

    $data['payeezy'] = $this->payeezy_config($query);
    $this->load->view('checkout_btn', $data);

}


function confirmation()
{
    // checkArray( $_REQUEST,0);
    /* payeezy response */

    $_REQUEST['x_response_code'] = '1';    
    if( $_REQUEST['x_response_code'] == '1') {
        /* post payment information */
        $data['Authorization_Num'] = $_REQUEST['Authorization_Num'] ? : 0;
        $data['Bank_Message']      = $_REQUEST['Bank_Message'] ? : 0;
        $data['CardHoldersName']   = $_REQUEST['CardHoldersName'] ? : 0;;
        $data['Card_Number']       = $_REQUEST['Card_Number'] ? : 0;
        $data['Client_IP']         = $_REQUEST['Client_IP'] ? : 0;;
        $data['payment_method']    = $_REQUEST['TransactionCardType'] ? : 0;
        $data['payment_amount']    = $_REQUEST['DollarAmount'] ? : 0;
        $data['transaction_id']    = $_REQUEST['Transaction_Tag'] ? : 0;

        $data['shopper_id'] = '';   // user_id
        $data['username'] = '';  // email       
        $data['transaction_type'] = 'e_store';

        $data['cart_id']  = $this->session->cart_id;
        $data['ip_address']  = $this->input->ip_address();
        $data['create_date'] = time();
        $data['modified_date'] = 0;
        $data['admin_id'] = 0;

        $this->load->module('store_orders');
        list($data['shopper_id'], $data['sales_order_no']) = 
                    $this->store_orders->payment_details('payments', $data);

        $this->thankyou($data);
    } else {
        $this->cancel();        
    } 
}


function thankyou($data)
{
    $this->load->module('store_orders');
    $shopper_is = $data['shopper_id'];
    $sales_order_no = $data['sales_order_no'];

    $query = $this->store_orders->fetch_sales_order($sales_order_no, $shopper_id);
    $data['account_data'] = $query->result();
    $data['query'] = $query;
    

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


function payeezy_config($query)
{
    $shippingRate = $this->shipping->_get_shipping();
    $taxRate      = $this->shipping->_get_tax();
    $tax_shipping = $this->shipping->_get_tax_opt();    

    foreach($query->result() as $row) {
        $session_id  = $row->cart_id;                
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

function check_out_proof( $session_id, $shippingRate, $taxRate, $cart_total, $total_tax_line, $tax_total )
{

    echo '<h5>session: '.$session_id.'<br />cart_total: '.$cart_total.'<br />taxable_total: '.$total_tax_line.'<br />tax [ '.($taxRate*100).'% ]: '.$tax_total.'<br />shipping: '.$shippingRate.'<br />x_amount: '.number_format($cart_total+$tax_total+$shippingRate,2).'</h5>';
}


} /************/ 