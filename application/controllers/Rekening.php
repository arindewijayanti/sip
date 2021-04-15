<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rekening extends CI_Controller {

	public function __construct()
    {
    	parent::__construct();
       $this->load->model('model_rekening'); 
	   $this->load->library('session');
       

    }

	function index()
	{
        $data['content'] = $this->model_rekening->GetRekening();
        $this->load->view('rekening/rekening', $data);
	}
    
    function rekening()
	{
        $data['content'] = $this->model_rekening->GetRekening();
        $this->load->view('rekening/rekening', $data);
	}

   	function menambahdatarekening()
		{
			$this->load->view('rekening/add');   
		}
	
	function action_menambahdatarekening()
    {       
					$id_opd = $this->session->userdata('id_opd');
                    $data = array(
                            'kode_rekening'=>$this->input->post('kode_rekening'),
                            'nama_rekening'=>$this->input->post('nama_rekening')
					);
					$data['id_opd']=$id_opd;
					$this->model_rekening->menambahdatarekening($data);
					redirect('rekening','refresh');
	}

	function updatedatarekening($id_rekening = NULL)
    {
            $this->db->where('id_rekening', $id_rekening);
            $data['content'] = $this->db->get('tbl_rekening');
			$this->load->view('rekening/update', $data);
	}
	
    function action_updatedatarekening($id_rekening ='',$kode_rekening = '')
    {
        $data = array(
            'kode_rekening'=>$this->input->post('kode_rekening'),
            'nama_rekening'=>$this->input->post('nama_rekening')
        );
		$data['id_user']=$this->session->userdata('username');
		$data['id_opd']=$this->session->userdata('id_opd');
        $this->model_rekening->updatedatarekening($data, $id_rekening,$kode_rekening);
        redirect('rekening');
	}

	public function action_deletedatarekening($id_rekening = '')
	{
			$this->model_rekening->deletedatarekening($id_rekening);
			redirect('rekening','refresh');
	}


}
