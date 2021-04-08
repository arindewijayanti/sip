<?php 
$this->load->view('include/header'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('selisihrekon/selisihrekon')?>">Selisih</a>
        </li>
  
        <li class="breadcrumb-item active">Tambah Data Selisih</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data Selisih</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('selisihrekon/action_menambahdataselisihrekon')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
                  <div class="col-md-6">
                    <label for="tanggal_selisih">Tanggal</label>
                    <input class="form-control" id="tanggal_selisih" type="date" aria-describedby="nameHelp" name="tanggal_selisih" required/>

                  </div>
                  <div class="col-md-6">
                    <label for="kode_keterangan">Nomor Bukti</label>
                    <select class="form-control form-control-sm" id="kode_keterangan" name="kode_keterangan" required />
                    <option>Silahkan Pilih Keterangan</option>
                        <?php $kode_keterangan = $this->db->query("SELECT * FROM tbl_keteranganselisih");
                
                        foreach ($kode_keterangan->result() as $kode_keterangan) : ?>
                        
                        <option value="<?= $kode_keterangan->kode_keterangan?>"<?= $kode_keterangan->kode_keterangan.$kode_keterangan->uraian_keteranganselisih?>.><?= $kode_keterangan->uraian_keteranganselisih?></option>
                         <?php endforeach; ?>
                       </select> </div>
                </div>
                  <div class="col-md-6">
                    <label for="uraian">Uraian</label>
                    <input class="form-control" id="uraian" type="text" aria-describedby="nameHelp" name="uraian" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="nominal">Nominal</label>
                    <input class="form-control" id="nominal" type="text" aria-describedby="nameHelp" name="nominal" required/>
                  </div>
                </div>
              </div>
              </div>
            
             <div class="form-group">
            <div class="form-row">
              <div class="col-md-2">
                <input class="form-control btn btn-primary" type="submit" value="Simpan" name="btnSimpan" >
              </div>
            </div>
          </div>
          </form>
        </div>
</div>
</div>
</div>
</div>



</div>
    </section>

<?php $this->load->view('include/footer'); ?>

 