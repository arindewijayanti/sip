<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bbp extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_bbp'); 
        $this->load->library('session');
    }

	function index()
	{
        $data['content'] = $this->model_bbp->GetTransaksiBBP();
        $this->load->view('bbp/bbp', $data);
	}
    function bbp()
	{
        $data['content'] = $this->model_bbp->GetTransaksiBBP();
        $this->load->view('bbp/bbp', $data);
	}
   	function menambahdatabbp()
		{
			$this->load->view('bbp/add');   
		}
	
	function action_menambahdatabbp()
    {       
                    	$data = array(
                            'tanggal'=>$this->input->post('tanggal'),
                            'uraian'=>$this->input->post('uraian'),
                            'debet'=>$this->input->post('debet'),
                            'kredit'=>$this->input->post('kredit')
					);
                    $data['id_user']=$this->session->userdata('username');
					$data['id_opd']=$this->session->userdata('id_opd');
					$this->model_bbp->menambahdatabbp($data);
					redirect('bbp','refresh');
	}

	function updatedatabbp($id_bbp = NULL)
    {
            $this->db->where('id_bbp', $id_bbp);
            $data['content'] = $this->model_bbp->GetTransaksiBBP();
			$this->load->view('bbp/update', $data);
	}
	
    function action_updatedatabbp($id_bbp ='')
    {
        $data = array(
            'tanggal'=>$this->input->post('tanggal'),
            'uraian'=>$this->input->post('uraian'),
            'debet'=>$this->input->post('debet'),
            'kredit'=>$this->input->post('kredit')
        );
		
        $this->model_bbp->updatedatabbp($data, $id_bbp);
        redirect('bbp');
	}

	public function action_deletedatabbp($id_bbp = '')
	{
			$this->model_bbp->deletedatabbp($id_bbp);
			redirect('bbp','refresh');
	}


}

/* End of file ssh.php */
/* Location: ./application/controllers/ssh.php */