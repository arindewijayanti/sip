<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buktipajak extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_buktipajak'); //load model model_buktipajak
	   $this->load->library('session');
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
							'id_rekening'=>$this->input->post('id_rekening')
					);
					if($data['kode_buktipajak']==NULL){
						$data['kode_buktipajak']=$data['nama_buktipajak'];
					}else{
						$data['kode_buktipajak']=$data['kode_buktipajak'];
					}
					$data['id_user']=$this->session->userdata('username');
					$data['id_opd']=$this->session->userdata('id_opd');
					$this->model_buktipajak->menambahdatabuktipajak($data);
					redirect('buktipajak','refresh');
	}

	function updatedatabuktipajak($id_buktipajak = NULL)
    {
            $this->db->where('id_buktipajak', $id_buktipajak);
            $data['content'] = $this->model_buktipajak->GetBuktiPajak();
			$this->load->view('buktipajak/update', $data);
	}
	
    function action_updatedatabuktipajak($id_buktipajak ='')
    {
        $data = array(
            'id_buktipajak'=>$this->input->post('id_buktipajak'),
            'nama_buktipajak'=>$this->input->post('nama_buktipajak'),
			'id_rekening'=>$this->input->post('id_rekening')
        );
		
        $this->model_buktipajak->updatedatabuktipajak($data, $id_buktipajak);
        redirect('buktipajak');
	}


	public function action_deletedatabuktipajak($id_buktipajak = '')
	{
			$this->model_buktipajak->deletedatabuktipajak($id_buktipajak);
			redirect('buktipajak','refresh');
	}


}
