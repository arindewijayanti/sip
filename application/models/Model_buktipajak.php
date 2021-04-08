<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_buktipajak extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	function GetBuktiPajak() 
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_buktipajak.id_opd', $id_opd);
        $this->db->order_by('id_buktipajak', 'ASC');
        return $this->db->from('tbl_buktipajak')
          ->join('tbl_rekening','tbl_rekening.id_rekening=tbl_buktipajak.id_rekening')
          ->get()
          ->result();
    }


	public function menambahdatabuktipajak($data)
	{
		$this->db->insert('tbl_buktipajak', $data);
	}
	
	public function updatedatabuktipajak($data, $id_buktipajak)
	{
		$this->db->where('id_buktipajak', $id_buktipajak);
		$this->db->update('tbl_buktipajak', $data);
	}

	public function deletedatabuktipajak($id_buktipajak)
	{
		$this->db->where('id_buktipajak', $id_buktipajak);
		$this->db->delete('tbl_buktipajak');
	}

}