<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_rekening extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
        $this->load->library('session');
	}

	function GetRekening()
    {

		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_rekening.id_opd', $id_opd);
        $this->db->order_by('tbl_rekening.kode_rekening', 'ASC');
        return $this->db->from('tbl_rekening')
    		->get();
    }

	public function menambahdatarekening($data)
	{
		$this->db->insert('tbl_rekening', $data);
	}
	
	public function updatedatarekening($data, $id_rekening)
	{
		$this->db->where('id_rekening', $id_rekening);
		$this->db->update('tbl_rekening', $data);
	}

	public function deletedatarekening($id_rekening)
	{
		$this->db->where('id_rekening', $id_rekening);
		$this->db->delete('tbl_rekening');
	}

}