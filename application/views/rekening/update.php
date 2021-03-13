<?php 
$this->load->view('include/header'); 
?>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo config_item('base_url'); ?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data Rekening</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Rekening</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/rekening/action_updatedatarekening/<?= $data->kode_rekening?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="kode_rekening"  value="<?= $data->kode_rekening?>" />
             <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="kode_rekening">Kode Rekening</label>
                    <input value="<?= $data->kode_rekening?>"class="form-control" id="kode_rekening" type="text" aria-describedby="nameHelp" name="kode_rekening" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="nama_rekening">Nama Rekening</label>
                    <input value="<?= $data->nama_rekening?>"class="form-control" id="nama_rekening" type="text" aria-describedby="nameHelp" name="nama_rekening" required/>
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