<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends CI_Controller {

	public function index()
	{
		$user_data=array('email','userid','name','emailStatus','login_status');
        $this->session->unset_userdata($user_data);
        session_write_close();
        $this->load->view('register');
	}
}
