<?php 
$this->load->view('include/header'); 
?>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo config_item('base_url'); ?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data Selisih</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Selisih</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/selisihrekon/action_updatedataselisihrekon/<?= $data->id_selisihrekon?>" method="post" enctype="multipart/form-data">
        <input type="hidden" id_selisihrekon="id_selisihrekon"  value="<?= $data->id_selisihrekon?>" />
             <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="tanggal_selisih">Tanggal Selisih</label>
                    <input value="<?php echo date("d/m/Y", strtotime($data->tanggal_selisih));?>"class="form-control" id="tanggal_selisih" type="text" aria-describedby="nameHelp" name="tanggal_selisih" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="kode_keterangan">Kode Keterangan</label>
                    <input value="<?= $data->kode_keterangan?>"class="form-control" id="kode_keterangan" type="text" aria-describedby="nameHelp" name="kode_keterangan" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="uraian">Uraian</label>
                    <input value="<?= $data->uraian?>"class="form-control" id="uraian" type="text" aria-describedby="nameHelp" name="uraian" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="nominal">Nominal</label>
                    <input value="<?= $data->nominal?>"class="form-control" id="nominal" type="text" aria-describedby="nameHelp" name="nominal" required/>
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