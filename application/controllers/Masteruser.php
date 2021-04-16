<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Masteruser extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_masteruser'); //load model model_rekening
       $this->load->library('session');
       
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
    redirect('auth');
}
       

    }

	function index()
	{
        $data['content'] = $this->model_masteruser->Getmasteruser();
        $this->load->view('masteruser/masteruser', $data);
	}
    
    function masteruser()
	{
        $data['content'] = $this->model_masteruser->Getmasteruser();
        $this->load->view('masteruser/masteruser', $data);
	}

   	function menambahdatamasteruser()
		{
			$this->load->view('masteruser/add');   
		}
	
	function action_menambahdatamasteruser()
    {       
                    $data = array(
                            'name'=>$this->input->post('name'),
                            'username'=>$this->input->post('username'),
                            'status'=>$this->input->post('status'),
                            'id_opd'=>$this->input->post('id_opd')
					);
                    $data['password']="123456";
                    $data['is_active']="1";
					$this->model_masteruser->menambahdatamasteruser($data);
					redirect('masteruser','refresh');
	}

	function updatedatamasteruser($id = NULL)
    {
            $this->db->where('id', $id);
            $data['content'] = $this->db->get('user');
			$this->load->view('masteruser/update', $data);
	}
	
    function action_updatedatamasteruser($id ='')
    {
        $data = array(
            'name'=>$this->input->post('name'),
            'username'=>$this->input->post('username'),
            'status'=>$this->input->post('status'),
            'id_opd'=>$this->input->post('id_opd')
        );
        $this->model_masteruser->updatedatamasteruser($data, $id);
        redirect('masteruser');
	}

	public function action_deletedatamasteruser($id = '')
	{
			$this->model_masteruser->deletedatamasteruser($id);
			redirect('masteruser','refresh');
	}

    function action_resetpassword($id ='')
    {
        $data = array(
            'password'=>$this->input->post('password')
        );
        $data['password']='123456';
        $this->model_masteruser->updatedataresetpassword($data, $id);
        redirect('masteruser');
	}


}
