<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

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
            $this->load->view('templates/auth_header',$data);
            $this->load->view('auth/login');
            $this->load->view('templates/auth_footer');
        } else {
            // validasinya sukses
            $this->_login();
        }

    }

    private function _login(){
        $username = $this->input->post('username');
        $password = $this->input->post('password');
    
        $user = $this->db->get_where('user', ['username' =>$username])->row_array();
        
        if($user) {
            if($user['is_active'] == 1) {
                if($password == $user['password']){
                    $data = [
                        'id' => $user['id'],
                        'username' => $user['username'],
                        'role_id' => $user['role_id'],
                        'name' => $user['name'],
                        'id_opd' => $user['id_opd']
                    ];
                    $this->session->set_userdata($data);
                    if($user['role_id'] == 0) {
                        redirect('admin');    
                    } else {
                        redirect('user');
                    }
                }else{
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Salah</div>');
                    redirect('auth');
                }
            }
                else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Username belum diaktivasi</div>');
                    redirect('auth');
                }

        } else {
           $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Username belum terdaftar</div>');
           redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('role_id');
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Kamu berhasil logout!</div>');
        redirect('auth');        
    }
}
