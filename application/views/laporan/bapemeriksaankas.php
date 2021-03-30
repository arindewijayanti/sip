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
  
        <li class="breadcrumb-item active"> Berita acara pemeriksaan kas</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Berita acara pemeriksaan kas</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('laporan/printbapemeriksaankas')?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id_pengadaan"  value="<?php echo $ambil->id_pengadaan; ?>" />
       
              <div class="form-group">
              <div class="form-row">
                  <div class="col-md-2">
                    <label for="tanggal_suratpermohonanpptk">Tanggal</label>
                    <input value="<?php echo $ambil->tanggal_suratpermohonanpptk; ?>"class="form-control" id="tanggal_suratpermohonanpptk" type="date" aria-describedby="nameHelp" name="tanggal_suratpermohonanpptk" />
                  </div>

                  <div class="col-md-6">
                    <label for="no_suratpermohonanpptk">SURAT PERMOHONAN dari PPTK kepada PA</label>
                    <input value="<?php echo $ambil->no_suratpermohonanpptk; ?>"class="form-control" id="no_suratpermohonanpptk" type="text" aria-describedby="nameHelp" name="no_suratpermohonanpptk" />
                  </div>  

                  <div class="col-md-4">
                  <tr><a href="<?php echo base_url('suratpengadaan/surat1/')?><?php echo $ambil->id_pengadaan; ?>" class="btn btn-warning" style="margin-bottom: 1px;">Print<i class="fa fa-tag"></i></a></tr>
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

 