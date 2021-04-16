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
}