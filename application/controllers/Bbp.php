<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bbp extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_bbp'); //load model model_Bbp

    }

	function index()
	{
        $data['content'] = $this->db->get('tbl_bbp');
        $this->load->view('bbp/bbp', $data);
	}
    function bbp()
	{
        $data['content'] = $this->db->get('tbl_bbp');
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
                            'kode_buktipajak'=>$this->input->post('kode_buktipajak'),
                            'debet'=>$this->input->post('debet'),
                            'kredit'=>$this->input->post('kredit')
					);
					$this->model_bbp->menambahdatabbp($data);
					redirect('bbp','refresh');
	}

	function updatedatabbp($kode_bbp = NULL)
    {
            $this->db->where('kode_bbp', $kode_bbp);
            $data['content'] = $this->db->get('tbl_bbp');
			$this->load->view('bbp/update', $data);
	}
	
    function action_updatedatabbp($kode_bbp ='')
    {
        $data = array(
            'tanggal'=>$this->input->post('tanggal'),
            'kode_buktipajak'=>$this->input->post('kode_buktipajak'),
            'debet'=>$this->input->post('debet'),
            'kredit'=>$this->input->post('kredit')
        );
		
        $this->model_bbp->updatedatabbp($data, $kode_bbp);
        redirect('bbp');
	}

	public function action_deletedatabbp($kode_bbp = '')
	{
			$this->model_bbp->deletedatabbp($kode_bbp);
			redirect('bbp','refresh');
	}


}

/* End of file ssh.php */
/* Location: ./application/controllers/ssh.php */