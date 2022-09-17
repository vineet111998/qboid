<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HowtoPlay extends CI_Controller {

	public function index()
	{
			$gameId=$this->input->get('gameId');
		$sql="SELECT mgd_url FROM mst_game_data where mgd_mg_id='{$gameId}'";
		$query=$this->db->query($sql)->result_array();
		// print_r($query);
		// die;
		// // echo $gameId; die();
		$this->data['gameData']=$query;
		
		$this->load->view('howtoplay', $this->data);
	}
}
