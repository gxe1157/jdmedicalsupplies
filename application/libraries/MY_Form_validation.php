<?php
/** application/libraries/My_Form_validation **/

class My_Form_validation extends CI_Form_validation {
	public $CI;


public function is_unique($str, $field)
	{

		sscanf($field, '%[^.].%[^.]', $table, $field);
//echo "<h4>is_valid: ".$table." | ".$field." | ".$str."<h4>";
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
			$error_msg = 'Email not found. Please try again.';
 			$this->CI->form_validation->set_message( 'is_valid', $error_msg);			
			return false;			
		}
	}


public function check_username($str, $field)
	{
		$error_msg = "You did not enter a correct username and/or password.";

		sscanf($field, '%[^.].%[^.]', $table, $field);

		$col1 = 'username';
		$value1 = $str;
		$col2 = 'email';
		$value2 = $str;
		// echo "<h4>is_valid: ".$table." | ".$field." | ".$str." | <h4>";

		$query = $this->CI->model_name->get_with_double_condition( $table, $col1, $value1, $col2, $value2);    

		$num_rows = $query->num_rows();
		if ($num_rows<1) {
		  $this->CI->form_validation->set_message('check_username', $error_msg);
		  return FALSE;        
		}

		/* check password against table  */
		$pword = $this->CI->input->post('pword', TRUE);
        if( !empty($pword) ) {
			foreach($query->result() as $row){
				$pword_on_table = $row->pword;
				$user_id = $row->id;
			}

			// echo "<h4> ".$pword." | ".$pword_on_table." | ".$str." | <h4>";
	  		$result = $this->CI->site_security->_verify_hash($pword, $pword_on_table);
			if ($result==TRUE) {
			// quit('You passed...............',1)	;
				$this->session->set_userdata('user_id', $user_id);
				return TRUE;
			} else {
			quit('You failed...........   '.$pword_on_table,1)	;				
			  $this->CI->form_validation->set_message('check_username', $error_msg);
			  return FALSE;         
			}
        }
	}


} // end My_Form_validation


