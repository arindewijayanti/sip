<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manageuser extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('model_manageuser');
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
        $this->load->view('manageuser/add');   
    }

    function action_menambahdatamanageuser()
    {       
                        $data = array(
                            'role_id'=>$this->input->post('role_id'),
                            'menu_id'=>$this->input->post('menu_id')
                    );
                    $this->model_manageuser->menambahdatamanageuser($data);
                    redirect('manageuser','refresh');
    }

    public function action_deletedatamanageuser($id = '')
    {
            $this->model_manageuser->deletedatamanageuser($id);
            redirect('manageuser','refresh');
    }
}