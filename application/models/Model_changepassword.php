<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_changepassword extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	function Getchangepassword()
    {
		$username = $this->session->userdata('username');
        $this->db->where('username', $username);
        return $this->db->from('user')
    		->get();
    }

	public function menambahdatachangepassword($data)
	{
		$this->db->insert('user', $data);
	}
	
	public function updatedatachangepassword($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
	}

	public function updatedataresetpassword($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
	}

	public function deletedatachangepassword($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user');
	}

}