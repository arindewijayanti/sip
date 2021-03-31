<?php 
$this->load->view('include/header'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo config_item('base_url'); ?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Tambah Data Manage Akun</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data Manage Akun</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('manageakun/action_menambahdatamanageakun')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
                  <div class="col-md-6">
                    <label for="name">Nama</label>
                    <input class="form-control" id="name" type="text" aria-describedby="nameHelp" name="name" required/>

                  </div>
                  <div class="col-md-6">
                    <label for="username">Username</label>
                    <input class="form-control" id="username" type="text" aria-describedby="nameHelp" name="username" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="password">Password</label>
                    <input class="form-control" id="password" type="text" aria-describedby="nameHelp" name="password" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="role_id">Role id</label>
                    <input class="form-control" id="role_id" type="text" aria-describedby="nameHelp" name="role_id" required/>
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

 