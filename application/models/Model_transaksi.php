<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_transaksi extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
	}

	function GetTransaksi() 
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
        $this->db->order_by('id_transaksi', 'ASC');
        return $this->db->from('tbl_transaksi')
           ->get();
    }

	public function menambahdatatransaksi($data)
	{
		$this->db->insert('tbl_transaksi', $data);
	}
	
	public function updatedatatransaksi($data, $id_transaksi)
	{
		$this->db->where('id_transaksi', $id_transaksi);
		$this->db->update('tbl_transaksi', $data);
	}

	public function deletedatatransaksi($id_transaksi)
	{
		$this->db->where('id_transaksi', $id_transaksi);
		$this->db->delete('tbl_transaksi');
	}

	
	function GetTransaksiHarian($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
        $this->db->select('*');
        $this->db->order_by('id_transaksi', 'ASC');
		$this->db->where('tanggal', $tanggal);
		$this->db->where('keterangan', "Transaksi Utama");
        return $this->db->from('tbl_transaksi')
    		->get()
          	->result();
    }

	function GetTransaksiHarianTambahan($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
        $this->db->select('*');
        $this->db->order_by('id_transaksi', 'ASC');
		$this->db->where('tanggal', $tanggal);
		$this->db->where('keterangan', "Transaksi Tambahan");
        return $this->db->from('tbl_transaksi')
    		->get()
          	->result();
    }

	function GetTransaksiHarianRegister($tanggal)
    {	
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
        $this->db->select('SUM(penerimaan) as totalpenerimaanharian,SUM(pengeluaran) as totalpengeluaranharian');
        $this->db->order_by('id_transaksi', 'ASC');
		$this->db->where('tanggal', $tanggal);
        $this->db->from('tbl_transaksi');
    	return $this->db->get()->row_array();
    }

	function GetTransaksiHmin1($tanggal)
    {
		$batasawal = date('Y-01-01', strtotime($tanggal)); 
        $batasakhir = date('Y-m-d', strtotime('-1 days', strtotime($tanggal))); 
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('SUM(penerimaan) as totalpenerimaan,SUM(pengeluaran) as totalpengeluaran');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
		$this->db->where('tanggal <=', $batasakhir);
		$this->db->where('tanggal >=', $batasawal);
        $this->db->from('tbl_transaksi');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksiH($tanggal)
    {
		$batasawal = date('Y-01-01', strtotime($tanggal)); 
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('SUM(penerimaan) as totalpenerimaan,SUM(pengeluaran) as totalpengeluaran');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
		$this->db->where('tanggal <=', $tanggal);
		$this->db->where('tanggal >=', $batasawal);
        $this->db->from('tbl_transaksi');
        return $this->db->get()->row_array();	  
    }

	function GetTransaksisemua($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('SUM(penerimaan) as totalpenerimaan,SUM(pengeluaran) as totalpengeluaran');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
		$this->db->where('tanggal <=', $tanggal);
        $this->db->from('tbl_transaksi');
        return $this->db->get()->row_array();	  
    }
	
	function GetTransaksiBulanan($tanggalmulai, $tanggalselesai)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('tanggal', 'ASC');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
        return $this->db->from('tbl_transaksi')
    		->get()
          	->result();
    }

	function GetTransaksiBulananBBP($tanggalmulai, $tanggalselesai)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('id_bbp', 'ASC');
        $this->db->where('tbl_bbp.id_opd', $id_opd);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
        return $this->db->from('tbl_bbp')
    		->get()
          	->result();
    }

	function GetTransaksiBulananBPP($tanggalmulai, $tanggalselesai)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('id_bpp', 'ASC');
        $this->db->where('tbl_bpp.id_bpp', $id_opd);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
        return $this->db->from('tbl_bpp')
    		->get()
          	->result();
    }

	function GetSaldoBank($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('saldo');
        $this->db->where('tbl_saldobank.id_opd', $id_opd);
		$this->db->where('tanggal =', $tanggal);
		$this->db->from('tbl_saldobank');
		$this->db->limit('1');
		return $this->db->get()->row_array();	
	}

	function GetUraianRekon($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('id_selisihrekon', 'ASC');
        $this->db->where('tbl_selisihrekon.id_opd', $id_opd);
		$this->db->where('tanggal_selisih <=', $tanggal);
        return $this->db->from('tbl_selisihrekon')
    		->get()
          	->result();
    }

	function GetUraianA($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('id_selisihrekon', 'ASC');
        $this->db->where('tbl_selisihrekon.id_opd', $id_opd);
		$this->db->where('kode_keterangan', 'A');
		$this->db->where('tanggal_selisih <=', $tanggal);
        return $this->db->from('tbl_selisihrekon')
    		->get()
          	->result();
    }

	function GetUraianB($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('id_selisihrekon', 'ASC');
        $this->db->where('tbl_selisihrekon.id_opd', $id_opd);
		$this->db->where('kode_keterangan', 'B');
		$this->db->where('tanggal_selisih <=', $tanggal);
        return $this->db->from('tbl_selisihrekon')
    		->get()
          	->result();
    }

	function GetUraianC($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('id_selisihrekon', 'ASC');
        $this->db->where('tbl_selisihrekon.id_opd', $id_opd);
		$this->db->where('kode_keterangan', 'C');
		$this->db->where('tanggal_selisih <=', $tanggal);
        return $this->db->from('tbl_selisihrekon')
    		->get()
          	->result();
    }

	function GetUraianD($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('id_selisihrekon', 'ASC');
        $this->db->where('tbl_selisihrekon.id_opd', $id_opd);
		$this->db->where('kode_keterangan', 'D');
		$this->db->where('tanggal_selisih <=', $tanggal);
        return $this->db->from('tbl_selisihrekon')
    		->get()
          	->result();
    }

	function GetUraian($tanggal)
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->order_by('id_selisihrekon', 'ASC');
        $this->db->where('tbl_selisihrekon.id_opd', $id_opd);
		$this->db->where('tanggal_selisih <=', $tanggal);
        return $this->db->from('tbl_selisihrekon')
    		->get()
          	->result();
    }



	function GetTransaksiBulananmaster($id_opd,$tanggalmulai, $tanggalselesai)
    {
        $this->db->select('*');
        $this->db->order_by('id_transaksi', 'ASC');
        $this->db->where('tbl_transaksi.id_opd', $id_opd);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
        return $this->db->from('tbl_transaksi')
    		->get()
          	->result();
    }

	function GetTransaksiBulananBBPmaster($id_opd,$tanggalmulai, $tanggalselesai)
    {
        $this->db->select('*');
        $this->db->order_by('id_bbp', 'ASC');
        $this->db->where('tbl_bbp.id_opd', $id_opd);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
        return $this->db->from('tbl_bbp')
    		->get()
          	->result();
    }

	function GetTransaksiBulananBPPmaster($id_opd,$tanggalmulai, $tanggalselesai)
    {
        $this->db->select('*');
        $this->db->order_by('id_bpp', 'ASC');
        $this->db->where('tbl_bpp.id_bpp', $id_opd);
		$this->db->where('tanggal >=', $tanggalmulai);
		$this->db->where('tanggal <=', $tanggalselesai);
        return $this->db->from('tbl_bpp')
    		->get()
          	->result();
    }
}