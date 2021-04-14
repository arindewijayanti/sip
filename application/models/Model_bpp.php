<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_bpp extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	public function menambahdatabpp($data)
	{
		$this->db->insert('tbl_bpp', $data);
	}
	
	public function updatedatabpp($data, $id_bpp)
	{
		$this->db->where('id_bpp', $id_bpp);
		$this->db->update('tbl_bpp', $data);
	}

	public function deletedatabpp($id_bpp)
	{
		$this->db->where('id_bpp', $id_bpp);
		$this->db->delete('tbl_bpp');
	}

    function GetBPP($tanggalmulai,$tanggalselesai)
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_bpp.id_opd', $id_opd);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
		return $this->db->from('tbl_bpp')
			->get()
          	->result();
	}

	function GetTransaksiBPP() 
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_bpp.id_opd', $id_opd);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bpp')
          ->get()
          ->result();
    }

	function GetTransaksiHarianBPP($tanggal) 
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_bpp.id_opd', $id_opd);
		$this->db->where('tanggal', $tanggal);
        $this->db->order_by('tanggal', 'ASC');
        return $this->db->from('tbl_bpp')
          ->get()
          ->result();
    }

    function GetTransaksiHarian($tanggal)
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->select('SUM(penerimaan) as totalpenerimaanbpp,SUM(pengeluaran) as totalpengeluaranbpp');
        $this->db->where('tbl_bpp.id_opd', $id_opd);
        $this->db->from('tbl_bpp');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiH($tanggal)
    {
        $batasawal = date('Y-01-01', strtotime($tanggal)); 
        $id_opd = $this->session->userdata('id_opd');
        $this->db->select('SUM(penerimaan) as totalpenerimaanbpp,SUM(pengeluaran) as totalpengeluaranbpp');
        $this->db->where('tbl_bpp.id_opd', $id_opd);
		$this->db->where('tanggal <=', $tanggal);
		$this->db->where('tanggal >=', $batasawal);
        $this->db->from('tbl_bpp');
        return $this->db->get()->row_array();	  
    }

    function GetTransaksisemua($tanggal)
    {
        $id_opd = $this->session->userdata('id_opd');
        $this->db->select('SUM(penerimaan) as totalpenerimaanbpp,SUM(pengeluaran) as totalpengeluaranbpp');
        $this->db->where('tbl_bpp.id_opd', $id_opd);
		$this->db->where('tanggal <=', $tanggal);
        $this->db->from('tbl_bpp');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiHmin1($tanggal)
    {
        $id_opd = $this->session->userdata('id_opd');
		$batasawal = date('Y-01-01', strtotime($tanggal)); 
        $batasakhir = date('Y-m-d', strtotime('-1 days', strtotime($tanggal))); 
        $this->db->select('SUM(penerimaan) as totalpenerimaanbpp,SUM(pengeluaran) as totalpengeluaranbpp');
        $this->db->where('tbl_bpp.id_opd', $id_opd);
		$this->db->where('tanggal <=', $batasakhir);
		$this->db->where('tanggal >=', $batasawal);
        $this->db->from('tbl_bpp');
        return $this->db->get()->row_array();	  
    }

}