<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_masteropd extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	function Getmasteropd()
    {
        return $this->db->from('tbl_opd')  
    		->get();	
		}

	public function menambahdatamasteropd($data)
	{
		$this->db->insert('tbl_opd', $data);
	}
	
	public function updatedatamasteropd($data, $id_opd)
	{
		$this->db->where('id_opd', $id_opd);	
		$this->db->update('tbl_opd', $data);
	}

	public function deletedatamasteropd($id_opd)
	{
		$this->db->where('id_opd', $id_opd);
		$this->db->delete('tbl_opd');
	}

}