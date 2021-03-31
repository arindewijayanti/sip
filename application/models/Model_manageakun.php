<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_manageakun extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function menambahdatamanageakun($data)
	{
		$this->db->insert('user', $data);
	}
	
	public function updatedatamanageakun($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
	}

	public function deletedatamanageakun($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user');
	}

}