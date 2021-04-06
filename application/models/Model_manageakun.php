<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_manageakun extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
        $this->load->library('session');
	}

	function GetManageAkun()
    {
		$id_opd = $this->session->userdata('id_opd');
        $this->db->where('user.id_opd', $id_opd);
        $this->db->where('status', 'member');
        $this->db->order_by('name', 'ASC');
        return $this->db->from('user')
    		->get();
    }

	public function menambahdatamanageakun($data)
	{
		$this->db->insert('user', $data);
	}
	
	public function updatedatamanageakun($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
	}

	public function deletedatamanageakun($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user');
	}

}