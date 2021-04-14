<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_sk extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
	}

	public function menambahdatask($data)
	{
		$this->db->insert('tbl_sk', $data);
	}
	
	public function updatedatask($data, $kode_rekening)
	{
		$this->db->where('kode_rekening', $kode_rekening);
		$this->db->update('tbl_sk', $data);
	}

	public function deletedatask($kode_rekening)
	{
		$this->db->where('kode_rekening', $kode_rekening);
		$this->db->delete('tbl_sk');
	}

	function GetSK1($tanggal) 
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_sk.id_opd', $id_opd);
		$this->db->where('tanggal_sk <=', $tanggal);
		$this->db->where('tanggal_skberakhir >=', $tanggal);
		$this->db->where('gol', '1');
		  return $this->db->from('tbl_sk')
			->get()
			->row();
    }

	function GetSK2($tanggal) 
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_sk.id_opd', $id_opd);
		$this->db->where('tanggal_sk <=', $tanggal);
		$this->db->where('tanggal_skberakhir >=', $tanggal);
		$this->db->where('gol', '2');
		  return $this->db->from('tbl_sk')
			->get()
			->row();
    }


}