<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Apbd extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_apbd'); //load model model_apbd
       $this->load->library('session');
       

    }

	function index()
	{
        $roleid=$this->session->userdata('role_id');
        if(empty($roleid))
        {
            redirect('auth');
        }

        $data['content'] = $this->model_apbd->GetApbd();
        $this->load->view('apbd/apbd', $data);
	}
    
    function apbd()
	{
        $data['content'] = $this->model_apbd->GetApbd();
        $this->load->view('apbd/apbd', $data);
	}

   	function menambahdataapbd()
		{
			$this->load->view('apbd/add');   
		}
	
	function action_menambahdataapbd()
    {       

                    	$data = array(
                            'id_rekening'=>$this->input->post('id_rekening'),
                            'tahun'=>$this->input->post('tahun'),
                            'pagu_apbd'=>$this->input->post('pagu_apbd'),
                            'pagu_perubahan_apbd'=>$this->input->post('pagu_perubahan_apbd')
					);
                    $data['id_user'] = $this->session->userdata('username');
                    $data['id_opd'] = $this->session->userdata('id_opd');
					$this->model_apbd->menambahdataapbd($data);
					redirect('apbd','refresh');
	}

	function updatedataapbd($id_apbd = NULL)
    {
            $this->db->where('id_apbd', $id_apbd);
            $data['content'] = $this->db->get('tbl_apbd');
			$this->load->view('apbd/update', $data);
	}
	
    function action_updatedataapbd($id_apbd ='')
    {
        $data = array(
            'id_apbd'=>$this->input->post('id_apbd'),
            'tahun'=>$this->input->post('tahun'),
            'pagu_apbd'=>$this->input->post('pagu_apbd'),
            'pagu_perubahan_apbd'=>$this->input->post('pagu_perubahan_apbd')
        );
		
        $this->model_apbd->updatedataapbd($data, $id_apbd);
        redirect('apbd');
	}

	public function action_deletedataapbd($id_apbd = '')
	{
			$this->model_apbd->deletedataapbd($id_apbd);
			redirect('apbd','refresh');
	}


}
