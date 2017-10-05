<?php defined('BASEPATH') OR exit('No direct script access allowed');
 
/**
 * Description of Captcha
 *
 * @author http://www.roytuts.com
 * http://www.roytuts.com/adding-captcha-to-database-using-codeigniter/
 */
class Site_captcha extends MY_Controller
{
    /* model name goes here */
    var $mdl_name = 'mdl_site_captcha';
    var $main_controller = 'site_captcha';

    function __construct() {
        parent::__construct();

    }


/* ===================================================
    Controller functions goes here. Put all DRY
    functions in applications/core/My_Controller.php
  ==================================================== */

    // function index() {
    //     $data['captcha_html'] = $this->_create_captcha();
    //     if ($this->input->post('register')) {
    //         $this->form_validation->set_rules('pwd', 'Password', 'required');
    //         $this->form_validation->set_rules('cnf_pwd', 'Password Confirmation', 'required|matches[pwd]');
    //         $this->form_validation->set_rules('email', 'Email', 'required|valid_email');

    //         $this->form_validation->set_rules('not_robot', 'Captcha', 'required|callback__check_captcha');

    //         if ($this->form_validation->run()) {
    //             $data['captcha_html'] = $this->_create_captcha();
    //             $data['success'] = 'You have successfully registered';
    //         }
    //     }
    //     $this->load->view('captcha', $data);
    // }
 
    function _create_captcha() {
        $this->load->helper('captcha');
        $vals = array(
                'word'          => '',
                'img_path'      => './captcha/',
                'img_url'       => base_url().'captcha/',
                'font_path'     => './system/fonts/texb.ttf',
                'img_width'     => '200',
                'img_height'    => 50,
                'expiration'    => 7200,
                'word_length'   => 6,
                'font_size'     => 24,
                'img_id'        => 'Imageid',
                'pool'          => '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',

                // White background and border, black text and red grid
                'colors'        => array(
                        'background' => array(255, 255, 255),
                        'border' => array(255, 255, 255),
                        'text' => array(0, 0, 0),
                        'grid' => array(255, 40, 40)
                )
        );
        $cap = create_captcha($vals);
        $data = array(
                'captcha_time'  => $cap['time'],
                'ip_address'    => $this->input->ip_address(),
                'word'          => $cap['word']
        );

        $query = $this->db->insert_string('captcha', $data);
        $this->db->query($query);

        // echo 'Submit the word you see below:';
        // echo $cap['image'];
        // echo '<input type="text" name="captcha" value="" />';
        return $cap['image'];
    }
 

/* ===============================================
    Call backs go here...
  =============================================== */
    function _check_captcha($code) {
        // First, delete old captchas
        $expiration = time() - 7200; // Two hour limit
        $this->db->where('captcha_time < ', $expiration)
                ->delete('captcha');

        // Then see if a captcha exists:
        $sql = 'SELECT COUNT(*) AS count FROM captcha WHERE word = ? AND ip_address = ? AND captcha_time > ?';
        $binds = array($_POST['captcha'], $this->input->ip_address(), $expiration);
        $query = $this->db->query($sql, $binds);
        $row = $query->row();

        if ($row->count == 0) {
            $this->form_validation->set_message('_check_captcha',
                                                'You must submit the word that appears in the image.');
            return FALSE;
        }
        return TRUE;
    }



/* ===============================================
    David Connelly's work from perfectcontroller
    is in applications/core/My_Controller.php which
    is extened here.
  =============================================== */


} // End class Controller
