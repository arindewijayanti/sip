<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_apbd extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function menambahdataapbd($data)
	{
		$this->db->insert('tbl_apbd', $data);
	}
	
	public function updatedataapbd($data, $kode_rekening)
	{
		$this->db->where('kode_rekening', $kode_rekening);
		$this->db->update('tbl_apbd', $data);
	}

	public function deletedataapbd($kode_rekening)
	{
		$this->db->where('kode_rekening', $kode_rekening);
		$this->db->delete('tbl_apbd');
	}

}