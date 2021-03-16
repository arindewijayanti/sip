<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buktipajak extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_buktipajak'); //load model model_buktipajak
    }

	function index()
	{
        $data['content'] = $this->model_buktipajak->GetBuktiPajak();
        $this->load->view('buktipajak/buktipajak', $data);
	}
    
    function buktipajak()
	{
		$data['content'] = $this->model_buktipajak->GetBuktiPajak();
        $this->load->view('buktipajak/buktipajak', $data);
	}

   	function menambahdatabuktipajak()
		{
			$this->load->view('buktipajak/add');   
		}
	
	function action_menambahdatabuktipajak()
    {       
                    	$data = array(
                            'kode_buktipajak'=>$this->input->post('kode_buktipajak'),
                            'nama_buktipajak'=>$this->input->post('nama_buktipajak'),
							'kode_rekening'=>$this->input->post('kode_rekening')
					);
					$this->model_buktipajak->menambahdatabuktipajak($data);
					redirect('buktipajak','refresh');
	}

	function updatedatabuktipajak($kode_buktipajak = NULL)
    {
            $this->db->where('kode_buktipajak', $kode_buktipajak);
            $data['content'] = $this->db->get('tbl_buktipajak');
			$this->load->view('buktipajak/update', $data);
	}
	
    function action_updatedatabuktipajak($kode_buktipajak ='')
    {
        $data = array(
            'kode_buktipajak'=>$this->input->post('kode_buktipajak'),
            'nama_buktipajak'=>$this->input->post('nama_buktipajak'),
			'kode_rekening'=>$this->input->post('kode_rekening')
        );
		
        $this->model_buktipajak->updatedatabuktipajak($data, $kode_buktipajak);
        redirect('buktipajak');
	}


	public function action_deletedatabuktipajak($kode_buktipajak = '')
	{
			$this->model_buktipajak->deletedatabuktipajak($kode_buktipajak);
			redirect('buktipajak','refresh');
	}


}
