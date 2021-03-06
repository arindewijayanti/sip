<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class master extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('model_opd');
        $this->load->model('model_bbp');
        $this->load->model('model_bpp');
        $this->load->model('model_transaksi');
        $this->load->library('session');
        
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
    redirect('auth');
}
    }

    public function index(){
        $data['title'] = 'SISTEM INFORMASI PERBENDAHARAAN';
        $data['master'] = $this->db->get_where('tbl_administrator', ['username' => $this->session->userdata('username')])->row_array();
       
        $this->load->view('templates/headermaster', $data);
        $this->load->view('templates/sidebarmaster', $data);
        $this->load->view('templates/topbarmaster', $data);
        $this->load->view('master/index', $data);
        $this->load->view('templates/footermaster');
    }

    public function bbp()
    {
	$this->load->view('master/bbp');
    }

    public function printbbp()
    {
        $id_opd = $this->input->post('id_opd');
        $tanggalmulai = $this->input->post('tanggalmulai');
        $tanggalselesai = $this->input->post('tanggalselesai');
        $tahun = date("Y", strtotime($tanggalmulai));;

        $data['id_opd'] = $id_opd;
        $data['tanggalmulai'] = $this->input->post('tanggalmulai');
        $data['tanggalselesai'] = $this->input->post('tanggalselesai');

        
        $data['namaopd'] = $this->model_opd->Getopdmaster($id_opd);
        $data['hasil'] = $this->model_bbp->GetBBPmaster($id_opd,$tanggalmulai,$tanggalselesai);

        //$data['pagu'] = $this->model_bbp->Getpagumaster($id_opd,$tahun);
        //$data['hasilatas'] = $this->model_bbp->Gethasilatasmaster($id_rekening,$tahun);
        //$data['hasilSK1'] = $this->model_sk->GetSK1master($tanggalselesai);
        //$data['hasilSK2'] = $this->model_sk->GetSK2master($tanggalselesai);

        $this->load->view('master/printbukubesarpembantu',$data);
    }

    ///////////////////////////

    public function bpp()
	{
		$this->load->view('master/bpp');
	}
    public function printbpp()
	{
        
        $id_opd = $this->input->post('id_opd');
		$tanggalmulai = $this->input->post('tanggalmulai');
		$tanggalselesai = $this->input->post('tanggalselesai');

        $data['id_opd'] = $id_opd;
		$data['tanggalmulai'] = $this->input->post('tanggalmulai');
		$data['tanggalselesai'] = $this->input->post('tanggalselesai');
		
        $data['namaopd'] = $this->model_opd->Getopdmaster($id_opd);
        $data['hasil'] = $this->model_bpp->GetBPPmaster($id_opd,$tanggalmulai,$tanggalselesai);

		
		//$data['hasilSK1'] = $this->model_sk->GetSK1($tanggalselesai);
		//$data['hasilSK2'] = $this->model_sk->GetSK2($tanggalselesai);
        $this->load->view('master/printbukupembantupajak',$data);	
	}

    ///////////////////////////

    public function kasumum()
	{
		$this->load->view('master/kasumum');
	}
    public function printbukukasumum()
	{
        $id_opd = $this->input->post('id_opd');
		$tanggalmulai = $this->input->post('tanggalmulai');
		$tanggalselesai = $this->input->post('tanggalselesai');

        $data['id_opd'] = $id_opd;
		$data['tanggalmulai'] = $this->input->post('tanggalmulai');
		$data['tanggalselesai'] = $this->input->post('tanggalselesai');

        $data['namaopd'] = $this->model_opd->Getopdmaster($id_opd);
    
		$data['hasil'] = $this->model_transaksi->GetTransaksiBulananMaster($id_opd,$tanggalmulai,$tanggalselesai);
		$data['hasilbbp'] = $this->model_transaksi->GetTransaksiBulananBBPMaster($id_opd,$tanggalmulai,$tanggalselesai);
		$data['hasilbpp'] = $this->model_transaksi->GetTransaksiBulananBPPMaster($id_opd,$tanggalmulai,$tanggalselesai);

		//$data['hasilSK1'] = $this->model_sk->GetSK1($tanggalselesai);
		//$data['hasilSK2'] = $this->model_sk->GetSK2($tanggalselesai);
        
        $this->load->view('master/printbukukasumum',$data);
	}
}