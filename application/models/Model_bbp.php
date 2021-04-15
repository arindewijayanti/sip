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
        $this->db->order_by('id_bbp', 'DESC');
        return $this->db->from('tbl_bbp')
          ->get()
          ->result();
    }

	function GetBBP($id_rekening,$tanggalmulai,$tanggalselesai) 
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_bbp.id_opd', $id_opd);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bbp')
		  ->join('tbl_rekening','tbl_rekening.id_rekening=tbl_bbp.id_rekening')
          ->get()
          ->result();
    }

	function Gethasilatas($id_rekening,$tahun) 
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->where('id_opd', $id_opd);
		$this->db->where('id_rekening', $id_rekening);		
		$this->db->from('tbl_rekening');
		return $this->db->get()
		->row_array();
    }
	function Getpagu($id_rekening,$tahun) 
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->where('id_opd', $id_opd);
		$this->db->where('tahun', $tahun);
		$this->db->where('id_rekening', $id_rekening);		
		$this->db->from('tbl_apbd');
		return $this->db->get()
		->row_array();
    }

	function GetTransaksiHarianBBP($tanggal) 
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_bbp.id_opd', $id_opd);
		$this->db->where('tanggal', $tanggal);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bbp')
          ->get()
          ->result();
    }

	function GetTransaksiHarian($tanggal)
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->select('SUM(kredit) as totalpenerimaanbbp,SUM(debet) as totalpengeluaranbbp');
        $this->db->where('tbl_bbp.id_opd', $id_opd);
		$this->db->where('tanggal', $tanggal);
        $this->db->from('tbl_bbp');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiH($tanggal)
    {
        $id_opd = $this->session->userdata('id_opd');
        $batasawal = date('Y-01-01', strtotime($tanggal)); 
        $this->db->select('SUM(kredit) as totalpenerimaanbbp,SUM(debet) as totalpengeluaranbbp');
        $this->db->where('tbl_bbp.id_opd', $id_opd);
		$this->db->where('tanggal <=', $tanggal);
		$this->db->where('tanggal >=', $batasawal);
        $this->db->from('tbl_bbp');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiHmin1($tanggal)
    {
        $id_opd = $this->session->userdata('id_opd');
		$batasawal = date('Y-01-01', strtotime($tanggal)); 
        $batasakhir = date('Y-m-d', strtotime('-1 days', strtotime($tanggal))); 
        $this->db->select('SUM(kredit) as totalpenerimaanbbp,SUM(debet) as totalpengeluaranbbp');   
        $this->db->where('tbl_bbp.id_opd', $id_opd);
		$this->db->where('tanggal >=', $batasawal);
		$this->db->where('tanggal <=', $batasakhir);
        $this->db->from('tbl_bbp');
        return $this->db->get()->row_array();	  
    }

    function GetTransaksisemua($tanggal)
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->select('SUM(kredit) as totalpenerimaanbbp,SUM(debet) as totalpengeluaranbbp');
        $this->db->where('tbl_bbp.id_opd', $id_opd);
		$this->db->where('tanggal <=', $tanggal);
        $this->db->from('tbl_bbp');
        return $this->db->get()->row_array();	  
    }
	

}