<?php
class Templates extends MX_Controller
{

public $items_in_cart;

function __construct()
{
    parent::__construct();

    $this->load->module('store_basket');    
    $this->items_in_cart = $this->store_basket->items_in_cart();
}


function public_main( $data = array() )
{
    $this->load->helper('store_items/store_prd_helper');    
    $data['menu_prd_drop_down']  = get_all_prd_cats_for_dropdown();
    $data['title']      = $data['page_title'];
    $data['contents']   = $data['page_url']  ? :'main';

    /* Shopping Cart Data */
    $item = $this->items_in_cart == 1 ? ' Item' : ' Items';
    $data['cart_info'] = $this->items_in_cart.$item;
    $data['user_id'] = !is_numeric($this->session->user_id) ? 0 : $this->session->user_id;

    if( !isset($data['view_module']) ){
        $data['view_module']= $this->uri->segment(2) =='' ?
                         'partials' : $this->uri->segment(1);
    }
    $this->load->view('public/html_master_view', $data);
}


function admin( $data = array() )
{
    if( !isset( $data['view_module'] ) )
        $data['view_module']= $this->uri->segment(1);

    $this->load->view('admin/admin', $data);
}


// function _draw_breadcrumbs($data)
// {
//     // NOTE: template, current_page_title, breadcrumbs_array are needed
//     if( $data['breadcrumbs_array'] )
//         $this->load->view('public_bootstrap/breadcrumbs_public_bootstrap', $data);
// }


} // end Templates

