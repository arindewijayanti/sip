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
		$this->load->view('Laporan/laporan');
	}

	
/////////////////////

    public function posisikasharian()
	{
		$this->load->view('Laporan/posisikasharian');
	}

    public function printposisikasharian()
	{
		$tanggal = $this->input->post('tanggal');
		$data['hasil'] = $this->model_transaksi->GetTransaksiHarian($tanggal);
		$data['tanggal'] = $tanggal;
        $this->load->view('Laporan/printposisikasharian',$data);
	}

/////////////////////


    public function bukukasumum()
	{
		$this->load->view('Laporan/bukukasumum');
	}
    public function printbukukasumum()
	{
		$this->load->view('Laporan/printbukukasumum');
	}
    public function bukupembantupajak()
	{
		$this->load->view('Laporan/bukupembantupajak');
	}
    public function printbukupembantupajak()
	{
		$this->load->view('Laporan/printbukupembantupajak');
	}
	public function bukubesarpembantu()
	{
		$this->load->view('Laporan/bukubesarpembantu');
	}
    public function printbukubesarpembantu()
	{
		$this->load->view('Laporan/printbukubesarpembantu');
	}
	public function rekonsiliasibank()
	{
		$this->load->view('Laporan/rekonsiliasibank');
	}
    public function printrekonsiliasibank()
	{
		$this->load->view('Laporan/printrekonsiliasibank');
	}
}
