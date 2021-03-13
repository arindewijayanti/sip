<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_bbp extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function menambahdatabbp($data)
	{
		$this->db->insert('tbl_bbp', $data);
	}
	
	public function updatedatabbp($data, $kode_bbp)
	{
		$this->db->where('kode_bbp', $kode_bbp);
		$this->db->update('tbl_bbp', $data);
	}

	public function deletedatabbp($kode_bbp)
	{
		$this->db->where('kode_bbp', $kode_bbp);
		$this->db->delete('tbl_bbp');
	}
	

}