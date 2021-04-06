<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manageakun extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_manageakun'); //load model model_rekening
       

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
                    $id_opd = $this->session->userdata('id_opd');
                    $data = array(
                            'name'=>$this->input->post('name'),
                            'username'=>$this->input->post('username'),
                            'password'=>$this->input->post('password')
					);
                    $data['password']="12345";
                    $data['status']="member";
                    $data['is_active']="1";
                    $data['id_opd']=$id_opd;
					$this->model_manageakun->menambahdatamanageakun($data);
					redirect('manageakun','refresh');
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
        $this->model_manageakun->updatedatamanageakun($data, $id);
        redirect('manageakun');
	}

	public function action_deletedatamanageakun($id = '')
	{
			$this->model_manageakun->deletedatamanageakun($id);
			redirect('manageakun','refresh');
	}


}
