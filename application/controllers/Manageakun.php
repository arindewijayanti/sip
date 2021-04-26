<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manageakun extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_manageakun'); //load model model_rekening
       $this->load->library('session');
       
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
    redirect('auth');
}
       

    }

	function index()
	{
        $data['content'] = $this->model_manageakun->GetManageAkun();
        $this->load->view('manageakun/manageakun', $data);
	}
    
    function manageakun()
	{
        $data['content'] = $this->model_manageakun->GetManageAkun();
        $this->load->view('manageakun/manageakun', $data);
	}

   	function menambahdatamanageakun()
		{
			$this->load->view('manageakun/add');   
		}
	
	function action_menambahdatamanageakun()
    {    
        $username = $this->input->post('username');
        $this->db->from('user');
        $this->db->where('username', $username);
        $query = $this->db->get();  
        $rowcount = $query->num_rows();
 
        if ($rowcount>0){
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">Username Sudah Terdaftar! Mohon Gunakan Username lain</div>');
					redirect('manageakun','refresh');
        }else{
        $data = array(
                'name'=>$this->input->post('name'),
                'username'=>$this->input->post('username'),
                'password'=>$this->input->post('password')
        );
        $data['password']="12345";
        $data['status']="member";
        $data['is_active']="1";
        $data['id_user']=$this->session->userdata('username');
        $data['id_opd']=$this->session->userdata('id_opd');
        $this->model_manageakun->menambahdatamanageakun($data);
        redirect('manageakun','refresh');
        }
                    
                    
	}

    function CheckUsername($username){
        if ($this->model->check_username($username)==''){
           return true;
        }else{
           $this->form_validation->set_message('username', 'Username '. $username .' telah terdaftar');
           return false;		
        }
     }

	function updatedatamanageakun($id = NULL)
    {
            $this->db->where('id', $id);
            $data['content'] = $this->db->get('user');
			$this->load->view('manageakun/update', $data);
	}
	
    function action_updatedatamanageakun($id ='')
    {
        $data = array(
            'name'=>$this->input->post('name')
        );
        $data['id_user']=$this->session->userdata('username');
		$data['id_opd']=$this->session->userdata('id_opd');
        $this->model_manageakun->updatedatamanageakun($data, $id);
        redirect('manageakun');
	}

    function action_resetpassword($id ='')
    {
        $data = array(
            'password'=>$this->input->post('password')
        );
        $data['password']='123456';
        $this->model_manageakun->updatedataresetpassword($data, $id);
        redirect('manageakun');
	}

	public function action_deletedatamanageakun($id = '')
	{
			$this->model_manageakun->deletedatamanageakun($id);
			redirect('manageakun','refresh');
	}


}
