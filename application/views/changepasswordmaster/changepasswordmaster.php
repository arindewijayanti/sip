<?php 
$this->load->view('include/headermaster'); 
?>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('master/index')?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data Ganti Password</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          
        <?php echo $this->session->flashdata('msg'); ?>
          <i class="fa fa-plus"></i> Update Data Ganti Password</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/changepasswordmaster/action_updatedatachangepasswordmaster/<?= $data->id?>" method="post" enctype="multipart/form-data">
        <input type="hidden" id="id"  value="<?= $data->id?>" />
             <div class="form-group">
              <div class="form-row">
              <input value="<?= $data->password?>" class="form-control" id="password" type="hidden" aria-describedby="nameHelp" name="password" required/>
                  
                  <div class="col-md-6">
                    <label for="passwordlama">Password Lama</label>
                    <input class="form-control" id="passwordlama" type="text" aria-describedby="nameHelp" name="passwordlama" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="passwordbaru1">Password Baru</label>
                    <input class="form-control" id="passwordbaru1" type="text" aria-describedby="nameHelp" name="passwordbaru1" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="passwordbaru2">Input Ulang Password Baru</label>
                    <input class="form-control" id="passwordbaru2" type="text" aria-describedby="nameHelp" name="passwordbaru2" required/>
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