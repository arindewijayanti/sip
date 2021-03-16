<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Saldobank extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_saldobank'); //load model model_apbd
       

    }

	function index()
	{
        $data['content'] = $this->db->get('tbl_saldobank');
        $this->load->view('saldobank/saldobank', $data);
	}
    
    function saldobank()
	{
        $data['content'] = $this->db->get('tbl_saldobank');
        $this->load->view('saldobank/saldobank', $data);
	}

   	function menambahdatasaldobank()
		{
			$this->load->view('saldobank/add');   
		}
	
	function action_menambahdatasaldobank()
    {       
                    	$data = array(
                            'tanggal'=>$this->input->post('tanggal'),
                            'saldo'=>$this->input->post('saldo'),
					);
					$this->model_saldobank->menambahdatasaldobank($data);
					redirect('saldobank','refresh');
	}

	function updatedatasaldobank($id = NULL)
    {
            $this->db->where('id', $id);
            $data['content'] = $this->db->get('tbl_saldobank');
			$this->load->view('saldobank/update', $data);
	}
	
    function action_updatedatasaldobank($id ='')
    {
        $data = array(
            'tanggal'=>$this->input->post('tanggal'),
            'saldo'=>$this->input->post('saldo')
        );
		
        $this->model_saldobank->updatedatasaldobank($data, $id);
        redirect('saldobank');
	}

	public function action_deletedatasaldobank($id = '')
	{
			$this->model_saldobank->deletedatasaldobank($id);
			redirect('saldobank','refresh');
	}


}
