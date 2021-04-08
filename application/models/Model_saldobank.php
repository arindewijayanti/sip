<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_saldobank extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
	}

	function GetSaldoBank()
    {

		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('tbl_saldobank.id_opd', $id_opd);
        $this->db->order_by('tbl_saldobank.tanggal', 'DESC');
        return $this->db->from('tbl_saldobank')
    		->get();
    }

	public function menambahdatasaldobank($data)
	{
		$this->db->insert('tbl_saldobank', $data);
	}
	
	public function updatedatasaldobank($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('tbl_saldobank', $data);
	}

	public function deletedatasaldobank($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('tbl_saldobank');
	}

}