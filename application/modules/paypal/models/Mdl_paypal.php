<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Mdl_paypal extends CI_Model
{

function __construct() {
parent::__construct();
}

function get_table() {
    $table = "paypal";
    return $table;
}

}