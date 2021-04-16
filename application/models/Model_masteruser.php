<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_masteruser extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	function Getmasteruser()
    {
		
        $this->db->order_by('user.status', 'ASC');
        $this->db->order_by('user.id_opd', 'ASC');
        return $this->db->from('user')
			->join('tbl_opd','tbl_opd.id_opd=user.id_opd')     
    		->get();
    }

	public function menambahdatamasteruser($data)
	{
		$this->db->insert('user', $data);
	}
	
	public function updatedatamasteruser($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
	}

	public function updatedataresetpassword($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
	}

	public function deletedatamasteruser($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user');
	}

}