<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_manageuser extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
        $this->load->library('session');
	}

		
	function GetManageUser()
    {

		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*,user_access_menu.id AS iduam');
        $this->db->where('user.status', 'member');
        $this->db->where('user.id_opd', $id_opd);
        $this->db->order_by('user_access_menu.user_id', 'ASC');
        $this->db->order_by('user_access_menu.menu_id', 'ASC');
        return $this->db->from('user_access_menu')
            ->join('user','user.id=user_access_menu.user_id')            
            ->join('user_menu','user_menu.id=user_access_menu.menu_id')
    		->get();
    }

	function PilihanUser()
    {

		$id_opd = $this->session->userdata('id_opd');
        $this->db->select('*');
        $this->db->where('user.status', 'member');
        $this->db->where('user.id_opd', $id_opd);
        return $this->db->from('user')
    		->get();
    }

	public function menambahdatamanageuser($data)
	{
		$this->db->insert('user_access_menu', $data);
	}

	public function deletedatamanageuser($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user_access_menu');
	}

}