<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bpp extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_bpp'); 
       $this->load->library('session');
    }

	function index()
	{
        $data['content'] = $this->model_bpp->GetTransaksiBPP();
        $this->load->view('bpp/bpp', $data);
	}
    function bpp()
	{
        $data['content'] = $this->model_bpp->GetTransaksiBPP();
        $this->load->view('bpp/bpp', $data);
	}
   	function menambahdatabpp()
		{
			$this->load->view('bpp/add');   
		}
	
	function action_menambahdatabpp()
    {       
                    	$data = array(
                            'no_sp2d'=>$this->input->post('no_sp2d'),
                            'no_sts'=>$this->input->post('no_sts'),
                            'no_lainlain'=>$this->input->post('no_lainlain'),
                            'uraian'=>$this->input->post('uraian'),
                            'tanggal'=>$this->input->post('tanggal'),
                            'penerimaan'=>$this->input->post('penerimaan'),
                            'pengeluaran'=>$this->input->post('pengeluaran')
					);
                    
                    $data['id_user']=$this->session->userdata('username');
					$data['id_opd']=$this->session->userdata('id_opd');
					$this->model_bpp->menambahdatabpp($data);
					redirect('bpp','refresh');
	}

	function updatedatabpp($id_bpp = NULL)
    {
            $this->db->where('id_bpp', $id_bpp);
            $data['content'] = $this->db->get('tbl_bpp');
			$this->load->view('bpp/update', $data);
	}
	
    function action_updatedatabpp($id_bpp ='')
    {
        $data = array(
            'no_sp2d'=>$this->input->post('no_sp2d'),
            'no_sts'=>$this->input->post('no_sts'),
            'no_lainlain'=>$this->input->post('no_lainlain'),
            'uraian'=>$this->input->post('uraian'),
            'tanggal'=>$this->input->post('tanggal'),
            'penerimaan'=>$this->input->post('penerimaan'),
            'pengeluaran'=>$this->input->post('pengeluaran')
        );
		
        $this->model_bpp->updatedatabpp($data, $id_bpp);
        redirect('bpp');
	}

	public function action_deletedatabpp($id_bpp = '')
	{
			$this->model_bpp->deletedatabpp($id_bpp);
			redirect('bpp','refresh');
	}


}

/* End of file ssh.php */
/* Location: ./application/controllers/ssh.php */