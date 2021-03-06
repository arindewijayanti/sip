<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Selisihrekon extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_selisihrekon'); 
	   $this->load->library('session');
       
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
	redirect('auth');
}

    }

	function index()
	{
        $data['content'] = $this->model_selisihrekon->GetSelisihRekon();
         $this->load->view('selisihrekon/selisihrekon', $data);
	}
    
    function selisihrekon()
	{
        $data['content'] = $this->model_selisihrekon->GetSelisihRekon();
        $this->load->view('selisihrekon/selisihrekon', $data);
	}

   	function menambahdataselisihrekon()
		{
			$this->load->view('selisihrekon/add');   
		}
	
	function action_menambahdataselisihrekon()
    {       
                    	$data = array(
                            'tanggal_selisih'=>$this->input->post('tanggal_selisih'),
                            'kode_keterangan'=>$this->input->post('kode_keterangan'),
                            'uraian'=>$this->input->post('uraian'),
                            'nominal'=>$this->input->post('nominal')
					);
                    $data['id_user']=$this->session->userdata('username');
					$data['id_opd']=$this->session->userdata('id_opd');
					$this->model_selisihrekon->menambahdataselisihrekon($data);
					redirect('selisihrekon','refresh');
	}

	function updatedataselisihrekon($id_selisihrekon = NULL)
    {
            $this->db->where('id_selisihrekon', $id_selisihrekon);
            $data['content'] = $this->db->get('tbl_selisihrekon');
			$this->load->view('selisihrekon/update', $data);
	}
	
    function action_updatedataselisihrekon($id_selisihrekon ='')
    {
        $data = array(
            'tanggal_selisih'=>$this->input->post('tanggal_selisih'),
                            'kode_keterangan'=>$this->input->post('kode_keterangan'),
                            'uraian'=>$this->input->post('uraian'),
                            'nominal'=>$this->input->post('nominal')
        );
		$data['id_user']=$this->session->userdata('username');
		$data['id_opd']=$this->session->userdata('id_opd');
        $this->model_selisihrekon->updatedataselisihrekon($data, $id_selisihrekon);
        redirect('selisihrekon');
	}

	public function action_deletedataselisihrekon($id_selisihrekon = '')
	{
			$this->model_selisihrekon->deletedataselisihrekon($id_selisihrekon);
			redirect('selisihrekon','refresh');
	}


}
