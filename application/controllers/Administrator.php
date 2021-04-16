<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Administrator extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }

    public function index(){
        $this->form_validation->set_rules('username', 'Username', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');
        if ($this->form_validation->run() == false){
            $data['title']='Halaman Login';
            $this->load->view('templates/administrator_header',$data);
            $this->load->view('administrator/login');
            $this->load->view('templates/administrator_footer');
        } else {
            // validasinya sukses
            $this->_login();
        }

    }

    private function _login(){
        $username = $this->input->post('username');
        $password = $this->input->post('password');
    
        $user = $this->db->get_where('tbl_administrator', ['username' =>$username])->row_array();
        
        if($user) {
                if($password == $user['password']){
                    $data = [
                        'id' => $user['id'],
                        'username' => $user['username'],
                        'name' => $user['name'],
                    ];
                    $this->session->set_userdata($data);
                    redirect('master');
                }else{
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Salah</div>');
                    redirect('administrator');
                }
            }else{
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Username belum terdaftar</div>');
                    redirect('administrator');
                }
    }

    public function logout()
    {
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('role_id');
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Kamu berhasil logout!</div>');
        redirect('administrator');        
    }
}
