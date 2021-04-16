<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class master extends CI_Controller {

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
        $tanggalmulai = $this->input->post('tanggalmulai');
        $tanggalselesai = $this->input->post('tanggalselesai');
        $tahun = date("Y", strtotime($tanggalmulai));;
        $id_rekening = $this->input->post('id_rekening');
        $data['id_rekening'] = $id_rekening;
        $data['hasilatas'] = $this->model_bbp->Gethasilatas($id_rekening,$tahun);
        $data['pagu'] = $this->model_bbp->Getpagu($id_rekening,$tahun);
        $data['hasil'] = $this->model_bbp->GetBBP($id_rekening,$tanggalmulai,$tanggalselesai);
        
        $data['tanggalmulai'] = $this->input->post('tanggalmulai');
        $data['tanggalselesai'] = $this->input->post('tanggalselesai');

        $data['hasilSK1'] = $this->model_sk->GetSK1($tanggalselesai);
        $data['hasilSK2'] = $this->model_sk->GetSK2($tanggalselesai);
        $this->load->view('laporan/printbukubesarpembantu',$data);
    }
///////////////////////////
}