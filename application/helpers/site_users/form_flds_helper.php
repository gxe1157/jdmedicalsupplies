<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* site_user.php */

if ( ! function_exists('get_fields'))
{
  function get_fields( )
  {

      $site_user_rules = array(
            array(
              'field' => 'email',
              'label' => 'Email',
              'rules' => 'required|valid_email|max_length[200]|is_unique[store_accounts.email]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' =>'text'
              // 'input_options' => '0'
            ),
            array(
              'field' => 'first_name',
              'label' => 'First Name',
              'rules' =>'required|min_length[3]|max_length[40]',
              'icon'  => 'user',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),
            array(
              'field' => 'last_name',
              'label' => 'Last Name',
              'rules' =>'required|min_length[3]|max_length[40]',
              'icon'  => 'user',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),
            array(
              'field' => 'middle_name',
              'label' => 'Middle Name',
              'rules' =>'',
              'icon'  => 'user',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),
            array(
              'field' => 'phone',
              'label' => 'Phone',
              'rules' =>'',
              'icon'  => 'earphone',
              'placeholder'=>'(201) 999-9999',
              // 'input_value' => $display_value ? $results->phone : '',              
              'input_type' =>'text',
              'input_options'=>'0',
            ),
            array(
              'field' => 'cell_phone',
              'label' => 'Cell Phone',
              'rules' =>'',
              'icon'  => 'phone',
              'placeholder'=>'(201) 999-9999',
              // 'input_value' => $display_value ? $results->cell_phone : '',
              'input_type' =>'text',
              'input_options' => '0',          
            )
      );
            
 	  return $site_user_rules;

  }// get_fields

 
} // endif