<?php 
$this->load->view('include/headermaster'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('mastermasteropd/masteropd')?>">OPD</a>
        </li>
  
  
        <li class="breadcrumb-item active">Tambah Data OPD</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data OPD</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('masteropd/action_menambahdatamasteropd')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
              <div class="col-md-6">
                    <label for="id_opd">ID OPD</label>
                    <input class="form-control" id="id_opd" type="text" aria-describedby="nameHelp" name="id_opd" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="nama_opd">Nama OPD</label>
                    <input class="form-control" id="nama_opd" type="text" aria-describedby="nameHelp" name="nama_opd" required/>
                  </div>
                  
                </div>
                  <div class="col-md-6">
                    <label for="alamat_opd">Alamat OPD</label>
                    <input class="form-control" id="alamat_opd" type="text" aria-describedby="nameHelp" name="alamat_opd" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="kecamatan_opd">Kecamatan OPD</label>
                    <input class="form-control" id="kecamatan_opd" type="text" aria-describedby="nameHelp" name="kecamatan_opd" required/>
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

 