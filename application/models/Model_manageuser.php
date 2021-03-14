<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_manageuser extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

		
	function GetManageUser()
    {
        $this->db->select('*,user_access_menu.id AS iduam');
        $this->db->where('user_access_menu.role_id !=', 1);
        $this->db->order_by('user_access_menu.role_id', 'ASC');
        $this->db->order_by('user_access_menu.menu_id', 'ASC');
        return $this->db->from('user_access_menu')
            ->join('user','user.role_id=user_access_menu.role_id')            
            ->join('user_menu','user_menu.id=user_access_menu.menu_id')
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