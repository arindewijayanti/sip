<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_transaksi'); //load model model_transaksi

    }

	function index()
	{
        $data['content'] = $this->db->get('tbl_transaksi');
        $this->load->view('transaksi/transaksi', $data);
	}
    function transaksi()
	{
        $data['content'] = $this->db->get('tbl_transaksi');
        $this->load->view('transaksi/transaksi', $data);
	}
   	function menambahdatatransaksi()
		{
			$this->load->view('transaksi/add');   
		}
	
	function action_menambahdatatransaksi()
    {       
                    	$data = array(
                            'tanggal'=>$this->input->post('tanggal'),
                            'jenis_bukti'=>$this->input->post('jenis_bukti'),
                            'no_bukti'=>$this->input->post('no_bukti'),                            
                            'uraian'=>$this->input->post('uraian'),
                            'penerimaan'=>$this->input->post('penerimaan'),
                            'pengeluaran'=>$this->input->post('pengeluaran')
					);
					$this->model_transaksi->menambahdatatransaksi($data);
					redirect('transaksi','refresh');
	}

	function updatedatatransaksi($kode_transaksi = NULL)
    {
            $this->db->where('kode_transaksi', $kode_transaksi);
            $data['content'] = $this->db->get('tbl_transaksi');
			$this->load->view('transaksi/update', $data);
	}
	
    function action_updatedatatransaksi($kode_transaksi ='')
    {
        $data = array(
            'tanggal'=>$this->input->post('tanggal'),
            'jenis_bukti'=>$this->input->post('jenis_bukti'),
            'no_bukti'=>$this->input->post('no_bukti'),                            
            'uraian'=>$this->input->post('uraian'),
            'penerimaan'=>$this->input->post('penerimaan'),
            'pengeluaran'=>$this->input->post('pengeluaran')
        );
		
        $this->model_transaksi->updatedatatransaksi($data, $kode_transaksi);
        redirect('transaksi');
	}

	public function action_deletedatatransaksi($kode_transaksi = '')
	{
			$this->model_transaksi->deletedatatransaksi($kode_transaksi);
			redirect('transaksi','refresh');
	}


}

/* End of file ssh.php */
/* Location: ./application/controllers/ssh.php */