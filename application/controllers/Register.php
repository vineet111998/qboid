<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Register extends CI_Controller {

	public function index()
	{
		$this->load->view('register');

		if(isset($_GET['id']))
		{
			$productKey=$this->input->get('id');
			$sql="SELECT mp_id FROM mst_product WHERE mp_key='$productKey'";
			$productList=$this->db->query($sql)->result_array();
			if(count($productList)<=0)
			{
				$this->db->trans_begin();

				$this->db->query("INSERT INTO mst_product VALUES('','$productKey')");

				if ($this->db->trans_status() === FALSE)
				{
				        $this->db->trans_rollback();
				}
				else
				{
				        $this->db->trans_commit();
				}
			}

		}

		
	}

	public function checkForRegistration()
	{
		$useremail=$this->input->post('useremail');
		$sql="SELECT * FROM mst_user WHERE mu_email	= '$useremail'";
		$checkMail=$this->db->query($sql)->result_array();
		if(count($checkMail)<=0)
			echo 0;
		else
		{
			$user_data['email']=$checkMail[0]['mu_email'];
    	    $user_data['userid']=$checkMail[0]['mu_id'];
        	$user_data['name']=$checkMail[0]['mu_name'];
        	$user_data['emailStatus']=$checkMail[0]['mu_emaiVerification'];
        	$user_data['login_status']=TRUE;
        	$this->session->set_userdata($user_data);
        	session_write_close();
			echo 1;
		}
	}

	public function requestOTP()
	{
		$useremail=$this->input->post('useremail');
		$otpRequest=$this->verifyEmail($useremail);
		echo json_encode($otpRequest);
	}

	public function registerUser(){
		$useremail=$this->input->post('useremail');
		$q1=$this->input->post('q1');
		$q2=$this->input->post('q2');
		$name=$this->input->post('name');
		$number=$this->input->post('number');
		$verify=$this->input->post('verify');
		$productKey='noid';
		$date=date('Y-m-d H-i-s');
		if(isset($_GET['id']))
		{
			$productKey=$this->input->get('id');
		}
		$sql="SELECT mp_id FROM mst_product WHERE mp_key='$productKey'";
		$productList=$this->db->query($sql)->result_array();
		if(count($productList)>0)
			{
				$data=$productList[0]['mp_id'];

				$this->db->trans_begin();
				$this->db->query("INSERT INTO mst_user VALUES('',$data,'$name','$number','$useremail',$verify,'$date')");
				$insert_id=$this->db->insert_id();
			
				$this->db->query("INSERT INTO mst_user_profile VALUES('',$insert_id,'$q1','$q2')");
				if ($this->db->trans_status() === FALSE)
				{
				        $this->db->trans_rollback();
				        echo 0;
				}
				else
				{
				        $this->db->trans_commit();
				        $user_data['email']=$useremail;
			    	    $user_data['userid']=$insert_id;
			        	$user_data['name']=$name;
			        	$user_data['emailStatus']=$verify;
			        	$user_data['login_status']=TRUE;
			        	$this->session->set_userdata($user_data);
			        	session_write_close();
			        	echo 1;
				}
			}
	}

}
