<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
       $this->load->model('model_transaksi'); //load model model_transaksi
       $this->load->library('session');
       
$roleid=$this->session->userdata('username');
if(empty($roleid))
{
    redirect('auth');
}
    }

	function index()
	{
        $data['content'] = $this->model_transaksi->GetTransaksi();
        $this->load->view('transaksi/transaksi', $data);
	}
    function transaksi()
	{
        $data['content'] = $this->model_transaksi->GetTransaksi();
        $this->load->view('transaksi/transaksi', $data);
	}
   	function menambahdatatransaksi()
		{
			$this->load->view('transaksi/add');   
		}
	
	function action_menambahdatatransaksi()
    {       
                    	$data = array(
                            'tanggal'=>$this->input->post('tanggal'),
                            'no_sp2d'=>$this->input->post('no_sp2d'),
                            'no_sts'=>$this->input->post('no_sts'),    
                            'no_lainlain'=>$this->input->post('no_lainlain'),                             
                            'uraian'=>$this->input->post('uraian'),
                            'penerimaan'=>$this->input->post('penerimaan'),
                            'pengeluaran'=>$this->input->post('pengeluaran')
					);
                    $data['id_user']=$this->session->userdata('username');
		            $data['id_opd']=$this->session->userdata('id_opd');
					$this->model_transaksi->menambahdatatransaksi($data);
					redirect('transaksi','refresh');
	}

	function updatedatatransaksi($id_transaksi = NULL)
    {
            $this->db->where('id_transaksi', $id_transaksi);
            $data['content'] = $this->db->get('tbl_transaksi');
			$this->load->view('transaksi/update', $data);
	}
	
    function action_updatedatatransaksi($id_transaksi ='')
    {
        $data = array(
            'tanggal'=>$this->input->post('tanggal'),
            'no_sp2d'=>$this->input->post('no_sp2d'),
            'no_sts'=>$this->input->post('no_sts'),    
            'no_lainlain'=>$this->input->post('no_lainlain'),                     
            'uraian'=>$this->input->post('uraian'),
            'penerimaan'=>$this->input->post('penerimaan'),
            'pengeluaran'=>$this->input->post('pengeluaran')
        );
		$data['id_user']=$this->session->userdata('username');
		$data['id_opd']=$this->session->userdata('id_opd');
        $this->model_transaksi->updatedatatransaksi($data, $id_transaksi);
        redirect('transaksi');
	}

	public function action_deletedatatransaksi($id_transaksi = '')
	{
			$this->model_transaksi->deletedatatransaksi($id_transaksi);
			redirect('transaksi','refresh');
	}


}

/* End of file ssh.php */
/* Location: ./application/controllers/ssh.php */