<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rekening extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_rekening'); //load model model_rekening
       

    }

	function index()
	{
        $data['content'] = $this->db->get('tbl_rekening');
        $this->load->view('rekening/rekening', $data);
	}
    
    function rekening()
	{
        $data['content'] = $this->db->get('tbl_rekening');
        $this->load->view('rekening/rekening', $data);
	}

   	function menambahdatarekening()
		{
			$this->load->view('rekening/add');   
		}
	
	function action_menambahdatarekening()
    {       
                    	$data = array(
                            'kode_rekening'=>$this->input->post('kode_rekening'),
                            'nama_rekening'=>$this->input->post('nama_rekening')
					);
					$this->model_rekening->menambahdatarekening($data);
					redirect('rekening','refresh');
	}

	function updatedatarekening($kode_rekening = NULL)
    {
            $this->db->where('kode_rekening', $kode_rekening);
            $data['content'] = $this->db->get('tbl_rekening');
			$this->load->view('rekening/update', $data);
	}
	
    function action_updatedatarekening($kode_rekening ='')
    {
        $data = array(
            'kode_rekening'=>$this->input->post('kode_rekening'),
            'nama_rekening'=>$this->input->post('nama_rekening')
        );
		
        $this->model_rekening->updatedatarekening($data, $kode_rekening);
        redirect('rekening');
	}

	public function action_deletedatarekening($kode_rekening = '')
	{
			$this->model_rekening->deletedatarekening($kode_rekening);
			redirect('rekening','refresh');
	}


}
