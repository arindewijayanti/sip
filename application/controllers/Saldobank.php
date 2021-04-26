<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Saldobank extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_saldobank');
	   $this->load->library('session');
	   $this->load->helper('form');
	   
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
	redirect('auth');
}

    }

	function index()
	{
        $data['content'] = $this->model_saldobank->GetSaldoBank();
        $this->load->view('saldobank/saldobank', $data);
	}
    
    function saldobank()
	{
        $data['content'] = $this->model_saldobank->GetSaldoBank();
        $this->load->view('saldobank/saldobank', $data);
	}

   	function menambahdatasaldobank()
		{
			$this->load->view('saldobank/add');   
		}
	
	function action_menambahdatasaldobank()
    {        
		$id_opd=$this->session->userdata('id_opd');
        $tanggal = $this->input->post('tanggal');
        $this->db->from('tbl_saldobank');
        $this->db->where('tanggal', $tanggal);
        $this->db->where('id_opd', $id_opd);
        $query = $this->db->get();  
        $rowcount = $query->num_rows();
 
        if ($rowcount>0){
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">Data sudah ada</div>');
					redirect('saldobank','refresh');
        }else{
					$data = array(
                            'tanggal'=>$this->input->post('tanggal'),
                            'saldo'=>$this->input->post('saldo'),
					);
					
					$data['id_user']=$this->session->userdata('username');
					$data['id_opd']=$this->session->userdata('id_opd');
					$this->model_saldobank->menambahdatasaldobank($data);
					redirect('saldobank','refresh');
		}
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
		$data['id_user']=$this->session->userdata('username');
		$data['id_opd']=$this->session->userdata('id_opd');
        $this->model_saldobank->updatedatasaldobank($data, $id);
        redirect('saldobank');
	}

	public function action_deletedatasaldobank($id = '')
	{
			$this->model_saldobank->deletedatasaldobank($id);
			redirect('saldobank','refresh');
	}


}
