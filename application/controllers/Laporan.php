<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_transaksi'); 

    }

	public function index()
	{
		$this->load->view('laporan/laporan');
	}

	
/////////////////////

    public function posisikasharian()
	{
		$this->load->view('laporan/posisikasharian');
	}

    public function printposisikasharian()
	{
		$tanggal = $this->input->post('tanggal');
		$data['hasil'] = $this->model_transaksi->GetTransaksiHarian($tanggal);
		$data['tanggal'] = $tanggal;
        $this->load->view('laporan/printposisikasharian',$data);
	}

/////////////////////


    public function bukukasumum()
	{
		$this->load->view('laporan/bukukasumum');
	}
    public function printbukukasumum()
	{
		$this->load->view('laporan/printbukukasumum');
	}
    public function bukupembantupajak()
	{
		$this->load->view('laporan/bukupembantupajak');
	}
    public function printbukupembantupajak()
	{
		$this->load->view('laporan/printbukupembantupajak');
	}
	public function bukubesarpembantu()
	{
		$this->load->view('laporan/bukubesarpembantu');
	}
    public function printbukubesarpembantu()
	{
		$this->load->view('laporan/printbukubesarpembantu');
	}
	public function rekonsiliasibank()
	{
		$this->load->view('laporan/rekonsiliasibank');
	}
    public function printrekonsiliasibank()
	{
		$this->load->view('laporan/printrekonsiliasibank');
	}
}
