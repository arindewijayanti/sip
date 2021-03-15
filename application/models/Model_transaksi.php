<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_transaksi extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function menambahdatatransaksi($data)
	{
		$this->db->insert('tbl_transaksi', $data);
	}
	
	public function updatedatatransaksi($data, $kode_transaksi)
	{
		$this->db->where('kode_transaksi', $kode_transaksi);
		$this->db->update('tbl_transaksi', $data);
	}

	public function deletedatatransaksi($kode_transaksi)
	{
		$this->db->where('kode_transaksi', $kode_transaksi);
		$this->db->delete('tbl_transaksi');
	}

	
	function GetTransaksiHarian($tanggal)
    {
        $this->db->select('*');
        $this->db->order_by('kode_transaksi', 'ASC');
		$this->db->where('tanggal', $tanggal);
        return $this->db->from('tbl_transaksi')
    		->get()
          	->result();
    }

	function GetTransaksiHmin1($tanggal)
    {
        $this->db->select('SUM(penerimaan) as totalpenerimaan,SUM(pengeluaran) as totalpengeluaran');
		$this->db->where('tanggal <', $tanggal);
        $this->db->from('tbl_transaksi');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiH($tanggal)
    {
        $this->db->select('SUM(penerimaan) as totalpenerimaan,SUM(pengeluaran) as totalpengeluaran');
		$this->db->where('tanggal <=', $tanggal);
        $this->db->from('tbl_transaksi');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiBulanan($bulan, $tahun)
    {
        $this->db->select('*');
        $this->db->order_by('kode_transaksi', 'ASC');
		$this->db->where('DATE_FORMAT(tanggal,"%m")', $bulan);
		$this->db->where('DATE_FORMAT(tanggal,"%Y")', $tahun);
        return $this->db->from('tbl_transaksi')
    		->get()
          	->result();
    }

	function GetSaldoBank($tanggal)
    {
        $this->db->select('saldo');
		$this->db->where('tanggal =', $tanggal);
		$this->db->from('tbl_saldobank');
		$this->db->limit('1');
		return $this->db->get()->row_array();	
	}

	function GetBPP($tahun)
    {
        $this->db->select('*');
		$this->db->where('DATE_FORMAT(tanggal,"%Y") =', $tahun);
		return $this->db->from('tbl_bpp')
			->get()
          	->result();
	}
}