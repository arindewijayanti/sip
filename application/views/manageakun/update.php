<?php 
$this->load->view('include/header'); 
?>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('manageakun/manageakun')?>">Manage Akun</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data Manage Akun</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Manage Akun</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/manageakun/action_updatedatamanageakun/<?= $data->id?>" method="post" enctype="multipart/form-data">
        <input type="hidden" id="id"  value="<?= $data->id?>" />
             <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="name">Nama</label>
                    <input value="<?= $data->name?>"class="form-control" id="name" type="text" aria-describedby="nameHelp" name="name" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="username">Username</label>
                    <input value="<?= $data->username?>"class="form-control" id="username" type="text" aria-describedby="nameHelp" name="username" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="password">Password</label>
                    <input value="<?= $data->password?>"class="form-control" id="password" type="text" aria-describedby="nameHelp" name="password" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="role_id">Role Id</label>
                    <input value="<?= $data->role_id?>"class="form-control" id="role_id" type="text" aria-describedby="nameHelp" name="role_id" required/>
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