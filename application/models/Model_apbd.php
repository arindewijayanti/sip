<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_apbd extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	function GetApbd()
    {

		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_apbd.id_opd', $id_opd);
        $this->db->order_by('tbl_apbd.id_rekening', 'ASC');
        return $this->db->from('tbl_apbd')
            ->join('tbl_rekening','tbl_rekening.id_rekening=tbl_apbd.id_rekening')     
    		->get();
    }

	public function menambahdataapbd($data)
	{
		$this->db->insert('tbl_apbd', $data);
	}
	
	public function updatedataapbd($data, $id_apbd)
	{
		$this->db->where('id_apbd', $id_apbd);	
		$this->db->update('tbl_apbd', $data);
	}

	public function deletedataapbd($id_apbd)
	{
		$this->db->where('id_apbd', $id_apbd);
		$this->db->delete('tbl_apbd');
	}

}