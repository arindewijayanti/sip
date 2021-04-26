<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manageuser extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('model_manageuser');
        $this->load->library('session');
        
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
    redirect('auth');
}
    }

    public function index(){
        $data['content'] = $this->model_manageuser->GetManageUser();
        $this->load->view('manageuser/manageuser', $data);
    }

    public function manageuser(){
        $data['content'] = $this->model_manageuser->GetManageUser();
        $this->load->view('manageuser/manageuser', $data);
    }

    function menambahdatamanageuser()
    {
        $data['content'] = $this->model_manageuser->PilihanUser();
        $this->load->view('manageuser/add', $data);   
    }

    function action_menambahdatamanageuser()
    {       
        $user_id = $this->input->post('user_id');
        $menu_id = $this->input->post('menu_id');
        $this->db->from('user_access_menu');
        $this->db->where('user_id', $user_id);
        $this->db->where('menu_id', $menu_id);
        $query = $this->db->get();  
        $rowcount = $query->num_rows();
 
        if ($rowcount>0){
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">Menu sudah pernah ditambahkan pada Username yang anda pilih</div>');
					redirect('manageuser','refresh');
        }else{
                    $data = array(
                            'user_id'=>$this->input->post('user_id'),
                            'menu_id'=>$this->input->post('menu_id')
                    );
                    $this->model_manageuser->menambahdatamanageuser($data);
                    redirect('manageuser','refresh');
    }
    }

    public function action_deletedatamanageuser($id = '')
    {
            $this->model_manageuser->deletedatamanageuser($id);
            redirect('manageuser','refresh');
    }
}