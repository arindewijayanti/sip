<?php 
$this->load->view('include/header'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('user/index')?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active"> Register Penutupan Kas</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Register Penutupan Kas</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('laporan/printregister')?>" method="post" enctype="multipart/form-data">
        
       
              <div class="form-group">
              <div class="form-row">
              <div class="col-md-6">
                    <label for="tanggal">Tanggal</label>
                    <input class="form-control" id="tanggal" type="date" aria-describedby="nameHelp" name="tanggal" required/>
                  </div>
                </div>
              </div>       
              <div class="col-md-6">
                    <label for="tanggallalu">Tanggal Penutupan Kas yang Lalu</label>
                    <input class="form-control" id="tanggallalu" type="date" aria-describedby="nameHelp" name="tanggallalu" required/>
                  </div>
                </div>
              </div>                
            
             <div class="form-group">
            <div class="form-row">
              <div class="col-md-2">
              <br>
                <input class="form-control btn btn-primary" type="submit" value="Print" name="btnSimpan" >
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

 