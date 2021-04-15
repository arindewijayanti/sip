<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_opd extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	function Getopd()
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('id_opd', $id_opd);
        return $this->db->from('tbl_opd')  
    		->get()->row_array();	
		}

	public function menambahdataopd($data)
	{
		$this->db->insert('tbl_opd', $data);
	}
	
	public function updatedataopd($data, $id_opd)
	{
		$this->db->where('id_opd', $id_opd);	
		$this->db->update('tbl_opd', $data);
	}

	public function deletedataopd($id_opd)
	{
		$this->db->where('id_opd', $id_opd);
		$this->db->delete('tbl_opd');
	}

}