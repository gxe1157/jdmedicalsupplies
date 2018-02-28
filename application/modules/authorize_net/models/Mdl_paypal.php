<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Mdl_authorize_net extends CI_Model
{

function __construct() {
parent::__construct();
}

function get_table() {
    $table = "authorize_net";
    return $table;
}

}