<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_selisihrekon extends CI_Model {
  
 
    public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	function GetSelisihRekon() 
    {
        $this->db->order_by('id_selisihrekon', 'ASC');
        return $this->db->from('tbl_selisihrekon')
          ->join('tbl_keteranganselisih','tbl_keteranganselisih.kode_keterangan=tbl_selisihrekon.kode_keterangan')
          ->get();
    }

	public function menambahdataselisihrekon($data)
	{
		$this->db->insert('tbl_selisihrekon', $data);
	}
	
	public function updatedataselisihrekon($data, $id_selisihrekon)
	{
		$this->db->where('id_selisihrekon', $id_selisihrekon);
		$this->db->update('tbl_selisihrekon', $data);
	}

	public function deletedataselisihrekon($id_selisihrekon)
	{
		$this->db->where('id_selisihrekon', $id_selisihrekon);
		$this->db->delete('tbl_selisihrekon');
	}

}