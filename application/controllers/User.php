<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

    public function index(){
        $data['title'] = 'SISTEM INFORMASI PERBENDAHARAAN';
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
       
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('templates/footer');
    }

    public function manageuser(){
        
        $this->load->view('user/manageuser');
    }
}