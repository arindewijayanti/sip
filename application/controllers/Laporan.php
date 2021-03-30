<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model('model_transaksi'); 
		$this->load->model('model_bbp'); 

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
		$tgl = date("d-m-Y", strtotime($tanggal));
		$hari = date("l", strtotime($tanggal)); 
		$hari_indonesia = array('Monday'  => 'Senin',
		'Tuesday'  => 'Selasa',
		'Wednesday' => 'Rabu',
		'Thursday' => 'Kamis',
		'Friday' => 'Jumat',
		'Saturday' => 'Sabtu',
		'Sunday' => 'Minggu');
		$data['hari'] = $hari_indonesia[$hari];
		//print_r($hari); exit(); 
		$data['tanggal'] = $tgl;
		$data['hasil'] = $this->model_transaksi->GetTransaksiHarian($tanggal);
		$data['hmin1'] = $this->model_transaksi->GetTransaksiHmin1($tanggal);
		$data['h'] = $this->model_transaksi->GetTransaksiH($tanggal);
        $this->load->view('laporan/printposisikasharian',$data);
	}

/////////////////////


    public function bukukasumum()
	{
		$this->load->view('laporan/bukukasumum');
	}
    public function printbukukasumum()
	{
		$tanggalmulai = $this->input->post('tanggalmulai');
		$tanggalselesai = $this->input->post('tanggalselesai');
		$data['tanggalmulai'] = $this->input->post('tanggalmulai');
		$data['tanggalselesai'] = $this->input->post('tanggalselesai');
		$data['hasil'] = $this->model_transaksi->GetTransaksiBulanan($tanggalmulai,$tanggalselesai);
        $this->load->view('laporan/printbukukasumum',$data);
	}

////////////////////////////
    public function bukupembantupajak()
	{
		$this->load->view('laporan/bukupembantupajak');
	}
    public function printbukupembantupajak()
	{
		$tanggalmulai = $this->input->post('tanggalmulai');
		$tanggalselesai = $this->input->post('tanggalselesai');
		$data['tanggalmulai'] = $this->input->post('tanggalmulai');
		$data['tanggalselesai'] = $this->input->post('tanggalselesai');
		$data['hasil'] = $this->model_transaksi->GetBPP($tanggalmulai, $tanggalselesai);
        $this->load->view('laporan/printbukupembantupajak',$data);
		
	}


	////////////////////////////
	public function rekonsiliasibank()
	{
		$this->load->view('laporan/rekonsiliasibank');
	}
    public function printrekonsiliasibank()
	{
		$tanggal = $this->input->post('tanggal');
		$data['tanggal'] = $tanggal;
		$data['h'] = $this->model_transaksi->GetTransaksiH($tanggal);
		$data['saldobank'] = $this->model_transaksi->GetSaldoBank($tanggal);

		$data['uraiana'] = $this->model_transaksi->GetUraianA($tanggal);
		$data['uraianb'] = $this->model_transaksi->GetUraianB($tanggal);
		$data['uraianc'] = $this->model_transaksi->GetUraianC($tanggal);
		$data['uraiand'] = $this->model_transaksi->GetUraianD($tanggal);
        $this->load->view('laporan/printrekonsiliasibank',$data);
	}
	////////////////////////////



public function bukubesarpembantu()
{
	$this->load->view('laporan/bukubesarpembantu');
}
public function printbukubesarpembantu()
{
	$tanggalmulai = $this->input->post('tanggalmulai');
	$tanggalselesai = $this->input->post('tanggalselesai');
	$tahun = 2021;
	$kode_rekening = $this->input->post('kode_rekening');
	$data['kode_rekening'] = $kode_rekening;
	$data['hasilatas'] = $this->model_bbp->Gethasilatas($kode_rekening,$tahun);
	$data['pagu'] = $this->model_bbp->Getpagu($kode_rekening,$tahun);
	$data['hasil'] = $this->model_bbp->GetBBP($kode_rekening,$tanggalmulai,$tanggalselesai);
	
	$data['tanggalmulai'] = $this->input->post('tanggalmulai');
	$data['tanggalselesai'] = $this->input->post('tanggalselesai');
	$this->load->view('laporan/printbukubesarpembantu',$data);
}
///////////////////////////
public function bapemeriksaankas()
{
	$this->load->view('laporan/bapemeriksaankas');
}
public function printbapemeriksaankas()
{
	$data['tanggal'] = $this->input->post('tanggal');
	$this->load->view('laporan/printbapemeriksaankas',$data);
	
}

///////////////////////////
public function register()
{
	$this->load->view('laporan/register');
}
public function printregister()
{
	$data['tanggal'] = $this->input->post('tanggal');
	$this->load->view('laporan/printregister',$data);
	
}

}
