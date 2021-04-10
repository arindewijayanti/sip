<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model('model_transaksi'); 
		$this->load->model('model_bbp'); 
		$this->load->model('model_bpp'); 
		$this->load->model('model_sk'); 
		$this->load->model('model_saldobank'); 

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

		$data['semuah'] = $this->model_transaksi->GetTransaksisemua($tanggal);
		$data['semuahbpp'] = $this->model_bpp->GetTransaksisemua($tanggal);
		$data['semuahbbp'] = $this->model_bbp->GetTransaksisemua($tanggal);
		
		$data['h'] = $this->model_transaksi->GetTransaksiH($tanggal);
		$data['hbpp'] = $this->model_bpp->GetTransaksiH($tanggal);
		$data['hbbp'] = $this->model_bbp->GetTransaksiH($tanggal);

		$data['hmin1'] = $this->model_transaksi->GetTransaksiHmin1($tanggal);
		$data['hmin1bpp'] = $this->model_bpp->GetTransaksiHmin1($tanggal);
		$data['hmin1bbp'] = $this->model_bbp->GetTransaksiHmin1($tanggal);
		
		$data['hasilBBP'] = $this->model_bbp->GetTransaksiHarianBBP($tanggal);
		$data['hasilBPP'] = $this->model_bpp->GetTransaksiHarianBPP($tanggal);
       
		$data['hasilSK1'] = $this->model_sk->GetSK1($tanggal);
		$data['hasilSK2'] = $this->model_sk->GetSK2($tanggal);

		$data['saldobanktahunlalu'] = $this->model_saldobank->Getsaldobanktahunlalu($tanggal);
		$data['saldobankhariini'] = $this->model_saldobank->Getsaldobankhariini($tanggal);
	
	
	if (isset($_POST['P77'])){
		$this->load->view('laporan/printposisikasharian',$data);
	}else{
		$this->load->view('laporan/printposisikasharian13',$data);
	}
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
		$data['hbpp'] = $this->model_bpp->GetTransaksiH($tanggal);
		$data['hbbp'] = $this->model_bbp->GetTransaksiH($tanggal);

		$data['semuah'] = $this->model_transaksi->GetTransaksisemua($tanggal);
		$data['semuahbpp'] = $this->model_bpp->GetTransaksisemua($tanggal);
		$data['semuahbbp'] = $this->model_bbp->GetTransaksisemua($tanggal);

		$data['hmin1'] = $this->model_transaksi->GetTransaksiHmin1($tanggal);
		$data['hmin1bpp'] = $this->model_bpp->GetTransaksiH($tanggal);
		$data['hmin1bbp'] = $this->model_bbp->GetTransaksiH($tanggal);
		
		$data['hasilBBP'] = $this->model_bbp->GetTransaksiHarianBBP($tanggal);
		$data['hasilBPP'] = $this->model_bpp->GetTransaksiHarianBPP($tanggal);
		
		$data['saldobank'] = $this->model_transaksi->GetSaldoBank($tanggal);

		$data['uraiana'] = $this->model_transaksi->GetUraianA($tanggal);
		$data['uraianb'] = $this->model_transaksi->GetUraianB($tanggal);
		$data['uraianc'] = $this->model_transaksi->GetUraianC($tanggal);
		$data['uraiand'] = $this->model_transaksi->GetUraianD($tanggal);

		$data['hasilSK1'] = $this->model_sk->GetSK1($tanggal);
		$data['hasilSK2'] = $this->model_sk->GetSK2($tanggal);

		if (isset($_POST['P77'])){
			$this->load->view('laporan/printrekonsiliasibank',$data);
		}else{
			$this->load->view('laporan/printrekonsiliasibank13',$data);
		}
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
	$tanggal =$this->input->post('tanggal');
	$data['tanggal'] = $tanggal;
	$data['h'] = $this->model_transaksi->GetTransaksiH($tanggal);
	$data['hbpp'] = $this->model_bpp->GetTransaksiH($tanggal);
	$data['hbbp'] = $this->model_bbp->GetTransaksiH($tanggal);

	$data['hmin1'] = $this->model_transaksi->GetTransaksiHmin1($tanggal);
	$data['hmin1bpp'] = $this->model_bpp->GetTransaksiH($tanggal);
	$data['hmin1bbp'] = $this->model_bbp->GetTransaksiH($tanggal);
	
	$data['hasilBBP'] = $this->model_bbp->GetTransaksiHarianBBP($tanggal);
	$data['hasilBPP'] = $this->model_bpp->GetTransaksiHarianBPP($tanggal);

	$data['saldobank'] = $this->model_transaksi->GetSaldoBank($tanggal);

	$data['semuah'] = $this->model_transaksi->GetTransaksisemua($tanggal);
		$data['semuahbpp'] = $this->model_bpp->GetTransaksisemua($tanggal);
		$data['semuahbbp'] = $this->model_bbp->GetTransaksisemua($tanggal);

	$data['hasilSK1'] = $this->model_sk->GetSK1($tanggal);
	$data['hasilSK2'] = $this->model_sk->GetSK2($tanggal);

	if (isset($_POST['P77'])){
		$this->load->view('laporan/printbapemeriksaankas77',$data);
	}else{
		$this->load->view('laporan/printbapemeriksaankas13',$data);
	}
	
	
}

///////////////////////////
public function register()
{
	$this->load->view('laporan/register');
}
public function printregister()
{
	$tanggal =$this->input->post('tanggal');
	$tanggallalu =$this->input->post('tanggallalu');
	$data['tanggal'] = $tanggal;
	$data['tanggallalu'] = $tanggallalu;
	$data['harianregister'] = $this->model_transaksi->GetTransaksiHarianRegister($tanggal);
	$data['h'] = $this->model_transaksi->GetTransaksiH($tanggal);
	$data['hbpp'] = $this->model_bpp->GetTransaksiH($tanggal);
	$data['hbbp'] = $this->model_bbp->GetTransaksiH($tanggal);

	$data['hmin1'] = $this->model_transaksi->GetTransaksiHmin1($tanggal);
	$data['hmin1bpp'] = $this->model_bpp->GetTransaksiH($tanggal);
	$data['hmin1bbp'] = $this->model_bbp->GetTransaksiH($tanggal);
	
	$data['hasilBBP'] = $this->model_bbp->GetTransaksiHarian($tanggal);
	$data['hasilBPP'] = $this->model_bpp->GetTransaksiHarian($tanggal);

	$data['saldobank'] = $this->model_transaksi->GetSaldoBank($tanggal);
	$data['uraian'] = $this->model_transaksi->GetUraian($tanggal);

	$data['hasilSK1'] = $this->model_sk->GetSK1($tanggal);
	$data['hasilSK2'] = $this->model_sk->GetSK2($tanggal);

	$data['semuah'] = $this->model_transaksi->GetTransaksisemua($tanggal);
		$data['semuahbpp'] = $this->model_bpp->GetTransaksisemua($tanggal);
		$data['semuahbbp'] = $this->model_bbp->GetTransaksisemua($tanggal);
	
	
	if (isset($_POST['P77'])){
		$this->load->view('laporan/printregister',$data);
	}else{
		$this->load->view('laporan/printregister13',$data);
	}
}

}
