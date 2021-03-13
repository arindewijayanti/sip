<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bpp extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_bpp'); //load model model_bpp

    }

	function index()
	{
        $data['content'] = $this->db->get('tbl_bpp');
        $this->load->view('bpp/bpp', $data);
	}
    function bpp()
	{
        $data['content'] = $this->db->get('tbl_bpp');
        $this->load->view('bpp/bpp', $data);
	}
   	function menambahdatabpp()
		{
			$this->load->view('bpp/add');   
		}
	
	function action_menambahdatabpp()
    {       
                    	$data = array(
                            'kode_buktipajak'=>$this->input->post('kode_buktipajak'),
                            'uraian'=>$this->input->post('uraian'),
                            'tanggal'=>$this->input->post('tanggal'),
                            'penerimaan'=>$this->input->post('penerimaan'),
                            'pengeluaran'=>$this->input->post('pengeluaran')
					);
					$this->model_bpp->menambahdatabpp($data);
					redirect('bpp','refresh');
	}

	function updatedatabpp($kode_bpp = NULL)
    {
            $this->db->where('kode_bpp', $kode_bpp);
            $data['content'] = $this->db->get('tbl_bpp');
			$this->load->view('bpp/update', $data);
	}
	
    function action_updatedatabpp($kode_bpp ='')
    {
        $data = array(
            'kode_buktipajak'=>$this->input->post('kode_buktipajak'),
            'uraian'=>$this->input->post('uraian'),
            'tanggal'=>$this->input->post('tanggal'),
            'penerimaan'=>$this->input->post('penerimaan'),
            'pengeluaran'=>$this->input->post('pengeluaran')
        );
		
        $this->model_bpp->updatedatabpp($data, $kode_bpp);
        redirect('bpp');
	}

	public function action_deletedatabpp($kode_bpp = '')
	{
			$this->model_bpp->deletedatabpp($kode_bpp);
			redirect('bpp','refresh');
	}


}

/* End of file ssh.php */
/* Location: ./application/controllers/ssh.php */