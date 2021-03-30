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
		$bulan = $this->input->post('bulan');
		$tahun = $this->input->post('tahun');
		$bulan_indonesia = array(
		'01'  => 'Januari',
		'02'  => 'Februari',
		'03' => 'Maret',
		'04' => 'April',
		'05' => 'Mei',
		'06' => 'Juni',
		'07' => 'Juli',
		'08' => 'Agustus',
		'09' => 'September',
		'10' => 'Oktober',
		'11' => 'November',
		'12' => 'Desember');
		$data['bulan'] = $bulan_indonesia[$bulan];
		$data['tahun'] = $tahun;
		$data['hasil'] = $this->model_transaksi->GetTransaksiBulanan($bulan,$tahun);
        $this->load->view('laporan/printbukukasumum',$data);
	}

////////////////////////////
    public function bukupembantupajak()
	{
		$this->load->view('laporan/bukupembantupajak');
	}
    public function printbukupembantupajak()
	{
		$tahun = $this->input->post('tahun');
		$data['tahun'] = $tahun;
		$data['hasil'] = $this->model_transaksi->GetBPP($tahun);
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
	$tahun = $this->input->post('tahun');
	$kode_rekening = $this->input->post('kode_rekening');
	$data['kode_rekening'] = $kode_rekening;
	$data['hasilatas'] = $this->model_bbp->Gethasilatas($kode_rekening,$tahun);
	$data['pagu'] = $this->model_bbp->Getpagu($kode_rekening,$tahun);
	$data['hasil'] = $this->model_bbp->GetBBP($kode_rekening);
	$this->load->view('laporan/printbukubesarpembantu',$data);
}

}
