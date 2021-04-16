<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Masteropd extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_masteropd'); //load model model_masteropd
       $this->load->library('session');
       $roleid=$this->session->userdata('username');
if(empty($roleid))
{
    redirect('auth');
}

    }

	function index()
	{
        $data['content'] = $this->model_masteropd->Getmasteropd();
        $this->load->view('masteropd/masteropd', $data);
	}
    
    function masteropd()
	{
        $data['content'] = $this->model_masteropd->Getmasteropd();
        $this->load->view('masteropd/masteropd', $data);
	}

   	function menambahdatamasteropd()
		{
			$this->load->view('masteropd/add');   
		}
	
	function action_menambahdatamasteropd()
    {       

                    	$data = array(
                            'id_opd'=>$this->input->post('id_opd'),
                            'nama_opd'=>$this->input->post('nama_opd'),
                            'alamat_opd'=>$this->input->post('alamat_opd'),
                            'kecamatan_opd'=>$this->input->post('kecamatan_opd')
					);
					$this->model_masteropd->menambahdatamasteropd($data);
					redirect('masteropd','refresh');
	}

	function updatedatamasteropd($id_opd = NULL)
    {
            $this->db->where('id_opd', $id_opd);
            $data['content'] = $this->db->get('tbl_opd');
			$this->load->view('masteropd/update', $data);
	}
	
    function action_updatedatamasteropd($id_opd ='')
    {
        $data = array(
            'id_opd'=>$this->input->post('id_opd'),
            'nama_opd'=>$this->input->post('nama_opd'),
            'alamat_opd'=>$this->input->post('alamat_opd'),
            'kecamatan_opd'=>$this->input->post('kecamatan_opd')
        );
        $this->model_masteropd->updatedatamasteropd($data, $id_opd);
        redirect('masteropd');
	}

	public function action_deletedatamasteropd($id_opd = '')
	{
			$this->model_masteropd->deletedatamasteropd($id_opd);
			redirect('masteropd','refresh');
	}


}
