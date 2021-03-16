<?php 
$this->load->view('include/header'); 
?>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo config_item('base_url'); ?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data Apbd</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Apbd</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/apbd/action_updatedataapbd/<?= $data->kode_rekening?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="kode_rekening"  value="<?= $data->kode_rekening?>" />
             <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="kode_rekening">Kode Rekening</label>
                    <input value="<?= $data->kode_rekening?>"class="form-control" id="kode_rekening" type="text" aria-describedby="nameHelp" name="kode_rekening" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="tahun">Tahun</label>
                    <input value="<?= $data->tahun?>"class="form-control" id="tahun" type="text" aria-describedby="nameHelp" name="tahun" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="pagu_apbd">Pagu Apbd</label>
                    <input value="<?= $data->pagu_apbd?>"class="form-control" id="pagu_apbd" type="text" aria-describedby="nameHelp" name="pagu_apbd" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="pagu_perubahan_apbd">Pagu Perubahan Apbd</label>
                    <input value="<?= $data->pagu_perubahan_apbd?>"class="form-control" id="pagu_perubahan_apbd" type="text" aria-describedby="nameHelp" name="pagu_perubahan_apbd" required/>
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