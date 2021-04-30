<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Changepasswordmaster extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_changepasswordmaster'); //load model model_rekening
       $this->load->library('session');
       
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
    redirect('administrator');
}
       

    }

	function index()
	{
        $data['content'] = $this->model_changepasswordmaster->Getchangepasswordmaster();
        $this->load->view('changepasswordmaster/changepasswordmaster', $data);
	}
    
    function changepasswordmaster()
	{
        $data['content'] = $this->model_changepasswordmaster->Getchangepasswordmaster();
        $this->load->view('changepasswordmaster/changepasswordmaster', $data);
	}
	
	function updatedatachangepasswordmaster($id = NULL)
    {
            $this->db->where('id', $id);
            $data['content'] = $this->db->get('tbl_administrator');
			$this->load->view('changepasswordmaster/update', $data);
	}
	
    function action_updatedatachangepasswordmaster($id ='')
    {
		$password = $this->input->post('password');
		$passwordlama = $this->input->post('passwordlama');
		$passwordbaru1 = $this->input->post('passwordbaru1');
		$passwordbaru2 = $this->input->post('passwordbaru2');
 
        if ($passwordbaru1 != $passwordbaru2){
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">Password Baru Tidak Sama</div>');
					redirect('changepasswordmaster','refresh');
        }else if ($password != $passwordlama){
			$this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">Password Lama Salah</div>');
			redirect('changepasswordmaster','refresh');
		}else if ($passwordbaru1 == $passwordbaru2 && $password == $passwordlama){
        $data = array(
            'password'=>$this->input->post('passwordbaru2')
        );
        $this->model_changepasswordmaster->updatedatachangepasswordmaster($data, $id);
        redirect('changepasswordmaster');
		}
	}

}
