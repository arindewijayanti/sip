<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_rekening extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function menambahdatarekening($data)
	{
		$this->db->insert('tbl_rekening', $data);
	}
	
	public function updatedatarekening($data, $id_rekening)
	{
		$this->db->where('id_rekening', $id_rekening);
		$this->db->update('tbl_rekening', $data);
	}

	public function deletedatarekening($id_rekening)
	{
		$this->db->where('id_rekening', $id_rekening);
		$this->db->delete('tbl_rekening');
	}

}