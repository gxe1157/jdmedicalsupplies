<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


if ( ! function_exists('sub_cat_title'))
{
	function sub_cat_title($sub_cat_id)
	{
      	$ci =& get_instance();		
	    /* get the parent category title which id folder for porduct images */
	    $mysql_query = "SELECT cat_title FROM `store_categories` WHERE id ='".$sub_cat_id."'";
	    $results =  $ci->model_name->_custom_query($mysql_query)->result();

		return $results[0]->cat_title;
	}
}


if ( ! function_exists('parent_cat_folder'))
{
	function parent_cat_folder($sub_cat_id)
	{
      	$ci =& get_instance();		
	    /* get the parent category title which id folder for porduct images */
	    $mysql_query = "SELECT * FROM `store_categories` WHERE id = (SELECT `parent_cat_id` FROM `store_categories` WHERE id = '".$sub_cat_id."')";

	    $results =  $ci->model_name->_custom_query($mysql_query)->result();
		$parent_cat_title = $results[0]->cat_title;
	    $folder_name = explode(" ",$results[0]->cat_title);
	    $folder_name = strtolower(join("_",$folder_name)); // will output medical_supplies from medical supplies
	    $parent_cat_id = $results[0]->id;
	    return [ $folder_name, $parent_cat_title, $parent_cat_id ];
	}
}


if ( ! function_exists('get_all_prd_cats_for_dropdown'))
{	
	// table store store_cat_categories
	function get_all_prd_cats_for_dropdown()
	{
      	$ci =& get_instance();		

	    $sub_categories = [];
	    $parent_cat_title = [];

	    $query_parent_id = "SELECT * FROM store_categories
	                        where parent_cat_id = 0
	                        ORDER BY cat_title";
	    $query = $ci->db->query($query_parent_id);
	    foreach ($query->result() as $key  => $row) {    
	        $parent_cat_title[$row->id] = $row->cat_title;
	    }

	    $mysql_query = "SELECT * FROM store_categories
	                    where parent_cat_id != 0
	                    ORDER BY parent_cat_id, cat_title";

	    $query = $ci->db->query($mysql_query);

	    foreach ($query->result() as $row) {
	       $sub_categories[$parent_cat_title[ $row->parent_cat_id] ][$row->id] = $row->cat_title;
	    }

	// checkArray($sub_categories,1);
	    return $sub_categories;
	}
}