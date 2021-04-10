<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_bbp extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	public function menambahdatabbp($data)
	{
		$this->db->insert('tbl_bbp', $data);
	}
	
	public function updatedatabbp($data, $id_bbp)
	{
		$this->db->where('id_bbp', $id_bbp);
		$this->db->update('tbl_bbp', $data);
	}

	public function deletedatabbp($id_bbp)
	{
		$this->db->where('id_bbp', $id_bbp);
		$this->db->delete('tbl_bbp');
	}

	function GetTransaksiBBP() 
    {
		
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_bbp.id_opd', $id_opd);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bbp')
         ->join('tbl_buktipajak','tbl_buktipajak.id_buktipajak=tbl_bbp.id_buktipajak')
          ->get()
          ->result();
    }

	function GetBBP($kode_rekening,$tanggalmulai,$tanggalselesai) 
    {
		$this->db->where('tbl_buktipajak.kode_rekening', $kode_rekening);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bbp')
          ->join('tbl_buktipajak','tbl_buktipajak.id_buktipajak=tbl_bbp.id_buktipajak')
		  ->join('tbl_rekening','tbl_rekening.kode_rekening=tbl_buktipajak.kode_rekening')
          ->get()
          ->result();
    }

	function Gethasilatas($kode_rekening,$tahun) 
    {
		$this->db->where('kode_rekening', $kode_rekening);		
		$this->db->from('tbl_rekening');
		return $this->db->get()
		->row_array();
    }
	function Getpagu($kode_rekening,$tahun) 
    {
		$this->db->where('tahun', $tahun);
		$this->db->where('kode_rekening', $kode_rekening);		
		$this->db->from('tbl_apbd');
		return $this->db->get()
		->row_array();
    }

	function GetTransaksiHarianBBP($tanggal) 
    {
		$this->db->where('tanggal', $tanggal);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bbp')
         ->join('tbl_buktipajak','tbl_buktipajak.id_buktipajak=tbl_bbp.id_buktipajak')
          ->get()
          ->result();
    }

	function GetTransaksiHarian($tanggal)
    {
        $this->db->select('SUM(kredit) as totalpenerimaanbbp,SUM(debet) as totalpengeluaranbbp');
		$this->db->where('tanggal', $tanggal);
        $this->db->from('tbl_bbp');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiH($tanggal)
    {
        $batasawal = date('Y-01-01', strtotime($tanggal)); 
        $this->db->select('SUM(kredit) as totalpenerimaanbbp,SUM(debet) as totalpengeluaranbbp');
		$this->db->where('tanggal <=', $tanggal);
		$this->db->where('tanggal >=', $batasawal);
        $this->db->from('tbl_bbp');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiHmin1($tanggal)
    {
		$batasawal = date('Y-01-01', strtotime($tanggal)); 
        $batasakhir = date('Y-m-d', strtotime('-1 days', strtotime($tanggal))); 
        $this->db->select('SUM(kredit) as totalpenerimaanbbp,SUM(debet) as totalpengeluaranbbp');   
		$this->db->where('tanggal >=', $batasawal);
		$this->db->where('tanggal <=', $batasakhir);
        $this->db->from('tbl_bbp');
        return $this->db->get()->row_array();	  
    }

    function GetTransaksisemua($tanggal)
    {
        $this->db->select('SUM(kredit) as totalpenerimaanbbp,SUM(debet) as totalpengeluaranbbp');
		$this->db->where('tanggal <=', $tanggal);
        $this->db->from('tbl_bbp');
        return $this->db->get()->row_array();	  
    }
	

}