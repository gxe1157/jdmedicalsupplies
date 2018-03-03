<?php
class Authorize_net extends MX_Controller 
{

private $debug = 0;

function __construct() {
parent::__construct();
   $this->load->library('MyAuthorize');

}

function myauthorize()
{
	/* Init vars */
	$cart_total = 0;
    $remove_data =['Submit', 'submit', '__ci_last_regenerate', 'cart_id'];

	$data = $_SESSION;
	foreach ($remove_data as $value)
					unset( $data[$value]);

	/* get basket items */
    list($data['query'], $data['shipping'], $data['tax_total'],
    	 $data['cart_total'], $data['grand_total'] )= $this->get_rates();

	/* process payment */
    list($data['reponse_code'], $data['response']) =
    		 $this->myauthorize->chargerCreditCard($data);

    if($this->debug == 1)
    	$this->display_totals($data);

	/* reponse_code 0=>failed, 1->approved 3->settings failure */ 
    $data['view_module'] = 'authorize_net';    
    $data['page_url'] = $data['reponse_code'] == 1 ? 'thankyou' : 'cancel';

	$data['data'] = $data;

    $this->load->module('templates');
    $this->templates->public_main($data);    
}

function get_rates()
{
	$line_is_taxable = 1; // get_taxable ( y/n )
	$taxRate = '.05';     // get_tax_rate	
    $shipping = '15.00';  // get_shipping
	$tax_shipping = 0;    // get_tax_shipping ( y/n )

	$this->load->module('cart');
	$session_id = $_SESSION['cart_id'];
	$shopper_id = '0';
    $table = 'store_basket';
    $query = $this->cart->_fetch_cart_contents($session_id, $shopper_id, $table);

    foreach ($query->result() as $key => $value) {
    	$sale_line_item = $value->price*$value->item_qty;
    	$cart_total = number_format($cart_total+$sale_line_item,2);
    	if($line_is_taxable)
        	$taxable_line_items = number_format($total_tax_line+$sale_line_item,2);
    }

    /* Final computation */
    $taxable_shipping = $tax_shipping == 0 ? 0 : $shipping;
    $total_taxable = $taxable_line_items+$taxable_shipping;
    $tax_total = number_format($total_taxable*$taxRate,2);
    $grand_total = number_format($cart_total+$shipping+$tax_total,2);

    return [ $query, $shipping, $tax_total, $cart_total, $grand_total ];

}

function display_totals(&$data)
{
	quit($data['shipping'].' | '.$data['tax_total'].' | '.$data['cart_total'].' | '.$data['grand_total'], 1);

	checkField($data['reponse_code'],1);
	checkArray($data['response'],0);

}


}