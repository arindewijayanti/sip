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

}