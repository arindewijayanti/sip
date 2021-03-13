<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_buktipajak extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	function GetBuktiPajak() 
    {
        $this->db->order_by('kode_buktipajak', 'ASC');
        return $this->db->from('tbl_buktipajak')
          ->join('tbl_rekening','tbl_rekening.kode_rekening=tbl_buktipajak.kode_rekening')
          ->get()
          ->result();
    }


	public function menambahdatabuktipajak($data)
	{
		$this->db->insert('tbl_buktipajak', $data);
	}
	
	public function updatedatabuktipajak($data, $kode_buktipajak)
	{
		$this->db->where('kode_buktipajak', $kode_buktipajak);
		$this->db->update('tbl_buktipajak', $data);
	}

	public function deletedatabuktipajak($kode_buktipajak)
	{
		$this->db->where('kode_buktipajak', $kode_buktipajak);
		$this->db->delete('tbl_buktipajak');
	}

}