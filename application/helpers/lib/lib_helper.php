<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

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

if ( ! function_exists('checkField'))
{
	function checkField( $fld = null, $exit){
		echo "<h4>fld| ".$fld." |</h4>";
		if( empty($exit) ){
			exit();  
		}
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

if ( ! function_exists('required_fields'))
{
	function req_flds($column_rules){
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
