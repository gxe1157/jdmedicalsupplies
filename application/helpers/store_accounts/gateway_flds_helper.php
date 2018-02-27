<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* store_account.php */


if ( ! function_exists('get_fields'))
{
  function get_fields( )
  {
      // is_unique[store_accounts.email]
      $site_user_rules = array(
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
              'field' => 'company',
              'label' => 'Company',
              'rules' =>'',
              'icon'  => 'user',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),
            array(
              'field' => 'address',
              'label' => 'Address',
              'rules' =>'required|min_length[3]|max_length[100]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),            
            array(
              'field' => 'city',
              'label' => 'City',
              'rules' =>'required|min_length[3]|max_length[40]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),            
            array(
              'field' => 'state',
              'label' => 'State',
              'rules' =>'required|min_length[2]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),            
            array(
              'field' => 'zip',
              'label' => 'Zip code',
              'rules' =>'required|numeric|min_length[5]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),            
            // array(
            //   'field' => 'country',
            //   'label' => 'Country',
            //   'rules' =>'min_length[3]|max_length[100]',
            //   'icon'  => 'flag',
            //   'placeholder'=>'',
            //   'input_type' => 'text', // text, password or drop_down_sel
            //   // 'input_options' => '0',
            // ),            
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
              'field' => 'email',
              'label' => 'Email',
              'rules' => 'required|valid_email|max_length[200]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' =>'text'
              // 'input_options' => '0'
            ),
            array(
              'field' => 'shipto_first_name',
              'label' => 'First Name',
              'rules' =>'required|min_length[3]|max_length[40]',
              'icon'  => 'user',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),
            array(
              'field' => 'shipto_last_name',
              'label' => 'Last Name',
              'rules' =>'required|min_length[3]|max_length[40]',
              'icon'  => 'user',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),
            array(
              'field' => 'shipto_company',
              'label' => 'Company',
              'rules' =>'',
              'icon'  => 'user',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),
            array(
              'field' => 'shipto_address',
              'label' => 'Address',
              'rules' =>'required|min_length[3]|max_length[100]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),            
            array(
              'field' => 'shipto_city',
              'label' => 'City',
              'rules' =>'required|min_length[3]|max_length[40]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),            
            array(
              'field' => 'shipto_state',
              'label' => 'State',
              'rules' =>'required|min_length[2]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),            
            array(
              'field' => 'shipto_zip',
              'label' => 'Zip code',
              'rules' =>'required|numeric|min_length[5]',
              'icon'  => 'envelope',
              'placeholder'=>'',
              'input_type' => 'text', // text, password or drop_down_sel
              // 'input_options' => '0',
            ),            
            // array(
            //   'field' => 'country',
            //   'label' => 'Country',
            //   'rules' =>'min_length[3]|max_length[100]',
            //   'icon'  => 'flag',
            //   'placeholder'=>'',
            //   'input_type' => 'text', // text, password or drop_down_sel
            //   // 'input_options' => '0',
            // ),            
      );
            
 	  return $site_user_rules;

  }// get_fields


} // endif