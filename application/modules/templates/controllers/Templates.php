<?php
class Templates extends MX_Controller
{


function __construct()
{
    parent::__construct();

    // checkArray( gd_info(),1);


}


// function _draw_breadcrumbs($data)
// {
//     // NOTE: template, current_page_title, breadcrumbs_array are needed
//     if( $data['breadcrumbs_array'] )
//         $this->load->view('public_bootstrap/breadcrumbs_public_bootstrap', $data);
// }


function public_main( $data = array() )
{

    $data['title']       = $data['page_title'];
    $data['contents']    = $data['page_url']  ? :'main';
    // $data['menu_level']  = $menu_level;

    if( !isset($data['view_module']) ){
        $data['view_module']= $this->uri->segment(2) =='' ?
                         'partials' : $this->uri->segment(1);
    }
    $this->load->view('public/html_master_view', $data);
}


function admin( $data = array() )
{
    // $this->load->module('site_security');
    // $this->site_security->_make_sure_is_admin();

    if( !isset( $data['view_module'] ) )
        $data['view_module']= $this->uri->segment(1);

    $this->load->view('admin/admin', $data);
}

function public_bootstrap($data = null)
{
  if( !isset( $data['view_module'] ) )
        $data['view_module']= $this->uri->segment(1);

    $this->load->view('public_bootstrap/public_bootstrap', $data);
}


} // end Templates

