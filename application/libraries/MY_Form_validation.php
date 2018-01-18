<?php
/** application/libraries/My_Form_validation **/

class My_Form_validation extends CI_Form_validation {
	public $CI;


public function is_unique($str, $field)
	{

		sscanf($field, '%[^.].%[^.]', $table, $field);

		$result_set = $this->CI->db->limit(1)->get_where($table, array($field => $str))->num_rows() === 0;

		if( $result_set === true ) {
			return true;
		} else {
			return false;			
		}

		/* Not working: $this->CI->db always reads false. */
		// return isset($this->CI->db)
		// 	? ($this->CI->db->limit(1)->get_where($table, array($field => $str))->num_rows() === 0)
		// 	: FALSE;
	}

public function is_valid($str, $field)
	{

		sscanf($field, '%[^.].%[^.]', $table, $field);

		$result_set = $this->CI->db->limit(1)->get_where($table, array($field => $str))->num_rows() === 1;
		if( $result_set === true ) {
			return true;
		} else {
			$error_msg = $field.' not found. Please try again.';
 			$this->CI->form_validation->set_message( 'is_valid', $error_msg);			
			return false;			
		}
	}


public function check_user($str, $field)
	{
		$error_msg = "Login failed. Invalid username or password, or you may be locked out.";

		sscanf($field, '%[^.].%[^.]', $table, $field);

		$col1 = 'username';
		$value1 = $str;
		$col2 = 'email';
		$value2 = $str;

		$results_set = $this->CI->model_name->get_with_double_condition( $table, $col1, $value1, $col2, $value2)->result();    

		if (count($results_set)<1) {
			$this->CI->form_validation->set_message('check_user', $error_msg);
			return FALSE;        
		}

		/* Safety check - if username or email is not unique */
		if (count($results_set)>1) fatal_error('VALFRM100');

		/* check password against table  */
		$pword = $this->CI->input->post('pword', TRUE);
		$pword_on_table = $results_set[0]->pword;
		$user_id = $results_set[0]->id;

  		$result = $this->CI->site_security->_verify_hash($pword, $pword_on_table);
// checkField($pword." | ".$pword_on_table,1);

		if ($result==TRUE) {
// checkField('passed',1);			
			$this->CI->session->set_userdata('user_id', $user_id);
			return TRUE;
		} else {
// checkField('failed',1);						
			$this->CI->form_validation->set_message('check_user', $error_msg);
			return FALSE;         
		}
	}

public	function password($pword) 
	{

	    $error_msg = "Password may not contain your username or email.";

	    $pos = strpos($this->_check_user, strtolower($pword)); // strpos($mystring, $findme);
	    if ($pos === false)
	        $pos = strpos($this->_check_email, strtolower($pword));

	    if ($pos==TRUE) {
	        $this->form_validation->set_message('password', $error_msg);                
	        return FALSE;  // means validation found password inside username or email.
	    } else {
	        $this->form_validation->set_message('password', $error_msg);                
	        return TRUE;         
	    }

	}

} // end My_Form_validation


