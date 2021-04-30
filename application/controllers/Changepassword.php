<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Changepassword extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_changepassword'); //load model model_rekening
       $this->load->library('session');
       
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
    redirect('auth');
}
       

    }

	function index()
	{
        $data['content'] = $this->model_changepassword->Getchangepassword();
        $this->load->view('changepassword/changepassword', $data);
	}
    
    function changepassword()
	{
        $data['content'] = $this->model_changepassword->Getchangepassword();
        $this->load->view('changepassword/changepassword', $data);
	}

   	function menambahdatachangepassword()
		{
			$this->load->view('changepassword/add');   
		}
	
	function action_menambahdatachangepassword()
    {    
        $username = $this->input->post('username');
        $this->db->from('user');
        $this->db->where('username', $username);
        $query = $this->db->get();  
        $rowcount = $query->num_rows();
 
        if ($rowcount>0){
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">Username Sudah Terdaftar! Mohon Gunakan Username lain</div>');
					redirect('changepassword','refresh');
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
        $this->model_changepassword->menambahdatachangepassword($data);
        redirect('changepassword','refresh');
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

	function updatedatachangepassword($id = NULL)
    {
            $this->db->where('id', $id);
            $data['content'] = $this->db->get('user');
			$this->load->view('changepassword/update', $data);
	}
	
    function action_updatedatachangepassword($id ='')
    {
		$password = $this->input->post('password');
		$passwordlama = $this->input->post('passwordlama');
		$passwordbaru1 = $this->input->post('passwordbaru1');
		$passwordbaru2 = $this->input->post('passwordbaru2');
 
        if ($passwordbaru1 != $passwordbaru2){
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">Password Baru Tidak Sama</div>');
					redirect('changepassword','refresh');
        }else if ($password != $passwordlama){
			$this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">Password Lama Salah</div>');
			redirect('changepassword','refresh');
		}else if ($passwordbaru1 == $passwordbaru2 && $password == $passwordlama){
        $data = array(
            'password'=>$this->input->post('passwordbaru2')
        );
        $data['id_user']=$this->session->userdata('username');
		$data['id_opd']=$this->session->userdata('id_opd');
        $this->model_changepassword->updatedatachangepassword($data, $id);
        redirect('changepassword');
		}
	}

    function action_resetpassword($id ='')
    {
        $data = array(
            'password'=>$this->input->post('password')
        );
        $data['password']='123456';
        $this->model_changepassword->updatedataresetpassword($data, $id);
        redirect('changepassword');
	}

	public function action_deletedatachangepassword($id = '')
	{
			$this->model_changepassword->deletedatachangepassword($id);
			redirect('changepassword','refresh');
	}


}
