<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_changepasswordmaster extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	function Getchangepasswordmaster()
    {
		$username = $this->session->userdata('username');
        $this->db->where('username', $username);
        return $this->db->from('tbl_administrator')
    		->get();
    }

	
	
	public function updatedatachangepasswordmaster($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('tbl_administrator', $data);
	}

}