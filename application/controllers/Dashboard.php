<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function index()
	{
		$sql="SELECT * FROM mst_games";
		$query=$this->db->query($sql)->result_array();
		$this->data['gameData']=$query;
		
		$this->load->view('dashboard',$this->data);
	}
}
