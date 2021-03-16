<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_saldobank extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function menambahdatasaldobank($data)
	{
		$this->db->insert('tbl_saldobank', $data);
	}
	
	public function updatedatasaldobank($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('tbl_saldobank', $data);
	}

	public function deletedatasaldobank($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('tbl_saldobank');
	}

}