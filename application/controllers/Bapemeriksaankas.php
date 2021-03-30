<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bapemeriksaankas extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_bapemeriksaankas'); //load model model_apbd
       

    }

	function index()
	{
        $data['content'] = $this->db->get('tbl_apbd');
        $this->load->view('apbd/apbd', $data);
	}
    
    function apbd()
	{
        $data['content'] = $this->db->get('tbl_apbd');
        $this->load->view('apbd/apbd', $data);
	}

   	function menambahdataapbd()
		{
			$this->load->view('apbd/add');   
		}
	
	function action_menambahdataapbd()
    {       
                    	$data = array(
                            'kode_rekening'=>$this->input->post('kode_rekening'),
                            'tahun'=>$this->input->post('tahun'),
                            'pagu_apbd'=>$this->input->post('pagu_apbd'),
                            'pagu_perubahan_apbd'=>$this->input->post('pagu_perubahan_apbd')
					);
					$this->model_apbd->menambahdataapbd($data);
					redirect('apbd','refresh');
	}

	function updatedataapbd($kode_rekening = NULL)
    {
            $this->db->where('kode_rekening', $kode_rekening);
            $data['content'] = $this->db->get('tbl_apbd');
			$this->load->view('apbd/update', $data);
	}
	
    function action_updatedataapbd($kode_rekening ='')
    {
        $data = array(
            'kode_rekening'=>$this->input->post('kode_rekening'),
            'tahun'=>$this->input->post('tahun'),
            'pagu_apbd'=>$this->input->post('pagu_apbd'),
            'pagu_perubahan_apbd'=>$this->input->post('pagu_perubahan_apbd')
        );
		
        $this->model_apbd->updatedataapbd($data, $kode_rekening);
        redirect('apbd');
	}

	public function action_deletedataapbd($kode_rekening = '')
	{
			$this->model_apbd->deletedataapbd($kode_rekening);
			redirect('apbd','refresh');
	}


}
