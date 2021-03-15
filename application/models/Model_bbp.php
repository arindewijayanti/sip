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

	function GetBBP($kode_rekening) 
    {
		$this->db->where('tbl_buktipajak.kode_rekening', $kode_rekening);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bbp')
          ->join('tbl_buktipajak','tbl_buktipajak.kode_buktipajak=tbl_bbp.kode_buktipajak')
		  ->join('tbl_rekening','tbl_rekening.kode_rekening=tbl_buktipajak.kode_rekening')
          ->get()
          ->result();
    }

	function Gethasilatas($kode_rekening,$tahun) 
    {
		$this->db->where('kode_rekening', $kode_rekening);		
		$this->db->where('tahun', $tahun);
		$this->db->from('tbl_apbd');
		return $this->db->get()
		->result();
    }
	

}