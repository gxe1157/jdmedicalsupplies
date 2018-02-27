<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('login_init'))
{
	function login_init( ) {
	    $ci =& get_instance();
	    $ci->load->module('site_security');     

	    $userid = $ci->site_security->_get_user_id();	    
	    $userid = is_numeric( $userid ) ? $userid : 0; // This will return userid

	    $login_data = $ci->model_name->get_login_byid($userid)->result();

		$default['admin_id'] = $userid;	    /* this user is logged */
	    $default['status']= $userid > 0 ? 1 : 0;
	    $default['admin_name']= $userid>0 ? $login_data[0]->username : '';
	    $default['avatar_admin']= $userid>0 ? $login_data[0]->avatar_name : '';
 	    $default['is_admin']= $userid>0 ? $login_data[0]->is_admin : '';
	    $default['page_title'] = "Admin Login";

	    return $default;
	}
}

if ( ! function_exists('checkArray'))
{
	function checkArray( $array = array(), $exit){
	    echo "<pre>";
	    print_r($array);
	    echo "</pre>";
	    if( empty($exit) ){
	        exit();  
	    }
	}
}

if ( ! function_exists('checkTrue'))
{
	function checkTrue( $fld = null, $exit){
		$state = $fld ? "true" : "false";
	    echo "<h4>fld value| ".$state." |</h4>";
	    if( empty($exit) ){
	        exit();  
	    }
	    return $state;
	}
}

if ( ! function_exists('checkField'))
{
	function checkField( $fld = null, $exit){
	    echo "<h4>fld| ".$fld." |</h4>";
	    if( empty($exit) ){
	        exit();  
	    }
	}
}

if ( ! function_exists('quit'))
{
	function quit($output = null, $exit = null){
	    echo('<h3>Debug Position: '.$output.'</h3>');
	    if( empty($exit) ) exit();  
	}
}

if ( ! function_exists('base_dir'))
{
	function base_dir(){
    	$base_dir = explode('application', APPPATH);
    	return $base_dir[0];
	}
}


if ( ! function_exists('getToday'))
{
	function getToday(){
		$d = getdate(); // php funtion
		If( $d['mon']<10 ){$d['mon']="0".$d['mon'];}
		If( $d['mday']<10 ){$d['mday']="0".$d['mday'];} 
		return $d['mon']."-".$d['mday']."-".$d['year'];
	}
}

if ( ! function_exists('SQLformat_date'))
{
	function SQLformat_date($date){
	    $temp=$date[6].$date[7].$date[8].$date[9].'-'.$date[0].$date[1].'-'.$date[3].$date[4];
	    return $temp;
	}
}

if ( ! function_exists('format_date'))
{
	function format_date($date){
	    if(empty($date)) $date ="0000/00/00";
	    $temp=$date[5].$date[6].'/'.$date[8].$date[9].'/'.$date[0].$date[1].$date[2].$date[3];
	    return ($temp == '00/00/0000' || $temp == '//') ? null : $temp;
	}
}


if ( ! function_exists('convert_timestamp'))
{
	function convert_timestamp($timestamp, $format)	{ 
     
	     switch ($format) {
	         case 'full':
	         //FULL // Friday 18th of February 2011 at 10:00:00 AM       
	         $the_date = date('l jS \of F Y \a\t h:i:s A', $timestamp);
	         break;          
	         case 'cool':
	         //FULL // Friday 18th of February 2011          
	         $the_date = date('l jS \of F Y', $timestamp);
	         break;                  
	         case 'datepicker_us':
	         //DATEPICKER  // 2/18/11         
	         $the_date = date('m\/d\/Y', $timestamp); 
	         break;  
	     }
	     return $the_date;
	}
}


if ( ! function_exists('required_fields'))
{
	function required_fields($column_rules){
        $field_name = '';		
	    foreach ($column_rules as $key => $value) {
	        if( $column_rules[$key]['rules'] ){            
	            $field_name = $column_rules[$key]['field'];
	            $req_flds[$field_name] = '<span style="font-size: 1.2em">*</span>';
	        }
	    }
	    return $req_flds;
	}
}

if ( ! function_exists('validation_errors'))
{
	function validation_errors($column_rules){
	    //$row as each individual field array 
	    foreach($column_rules as $row){
	        $field = $row['field'];         //getting field name
	        $error = form_error($field);    //getting error for field name
	                                        //form_error() is inbuilt function

	        //if error is their for field then only add in $errors_array array
	        if($error)
	        $errors_array[$field] = $error;
	     
	    }
	    // return $errors_array;
	    $data['errors_array'] = $errors_array;
	    return $errors_array;
	}

}

if ( ! function_exists('last_referer'))
{
	function last_referer() {
	   $current_file = explode('/', $_SERVER['HTTP_REFERER']);
	   $array_count = count($current_file);
	   $new_array = $current_file[ $array_count-2 ]."/".$current_file[ $array_count -1];
	   return $new_array;
	}
}
                        
if ( ! function_exists('fatal_error'))
{
	function fatal_error( $code ) {
	// redirect and send email to webadmin.
		
	   die("<h3>We seem to be having techincal difficulties. Contact web developer and provide this error code: ".$code."</h3");

	   // send email
	}
}
