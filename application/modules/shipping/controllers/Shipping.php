<?php
class Shipping extends MX_Controller 
{

function __construct() {
parent::__construct();
}

function _get_shipping()
{
    $shipping = '15.00';
    return $shipping;
}

function _get_tax_opt()
{
    $tax_shipping = 0;
    return $tax_shipping;
}

function _get_tax()
{
    $taxRate = '.05';
    return $taxRate;
}


}