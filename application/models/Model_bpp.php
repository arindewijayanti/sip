<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_bpp extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function menambahdatabpp($data)
	{
		$this->db->insert('tbl_bpp', $data);
	}
	
	public function updatedatabpp($data, $kode_bpp)
	{
		$this->db->where('kode_bpp', $kode_bpp);
		$this->db->update('tbl_bpp', $data);
	}

	public function deletedatabpp($kode_bpp)
	{
		$this->db->where('kode_bpp', $kode_bpp);
		$this->db->delete('tbl_bpp');
	}

	function GetTransaksiHarianBPP($tanggal) 
    {
		$this->db->where('tanggal =', $tanggal);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bpp')
          ->get()
          ->result();
    }

	function GetTransaksiH($tanggal)
    {
        $this->db->select('SUM(penerimaan) as totalpenerimaanbpp,SUM(pengeluaran) as totalpengeluaranbpp');
		$this->db->where('tanggal <=', $tanggal);
        $this->db->from('tbl_bpp');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiHmin1($tanggal)
    {
        $this->db->select('SUM(penerimaan) as totalpenerimaanbpp,SUM(pengeluaran) as totalpengeluaranbpp');
		$this->db->where('tanggal <', $tanggal);
        $this->db->from('tbl_bpp');
        return $this->db->get()->row_array();	  
    }

}