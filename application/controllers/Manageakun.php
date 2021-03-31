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
        $data['content'] = $this->db->get('user');
        $this->load->view('manageakun/manageakun', $data);
	}
    
    function manageakun()
	{
        $data['content'] = $this->db->get('user');
        $this->load->view('manageakun/manageakun', $data);
	}

   	function menambahdatamanageakun()
		{
			$this->load->view('manageakun/add');   
		}
	
	function action_menambahdatamanageakun()
    {       
                    	$data = array(
                            'name'=>$this->input->post('name'),
                            'username'=>$this->input->post('username'),
                            'password'=>$this->input->post('password'),
                            'role_id'=>$this->input->post('role_id'),
                            'is_active'=>$this->input->post('is_active')
					);
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
            'name'=>$this->input->post('name'),
            'username'=>$this->input->post('username'),
            'password'=>$this->input->post('password'),
            'role_id'=>$this->input->post('role_id'),
            'is_active'=>$this->input->post('is_active')
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
