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
  
        <li class="breadcrumb-item active">Laporan Buku Pembantu Pajak</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Laporan Buku Pembantu Pajak</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('laporan/printbukupembantupajak')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
              <div class="col-md-6">
                    <label for="tanggalmulai">Mulai Tanggal</label>
                    <br>
                    <input class="form-control" id="tanggalmulai" type="date" aria-describedby="nameHelp" name="tanggalmulai" required/>
                 </div>

                 <div class="col-md-6">
                    <label for="tanggalselesai">Sampai Tanggal</label>
                    <br>
                    <input class="form-control" id="tanggalselesai" type="date" aria-describedby="nameHelp" name="tanggalselesai" required/>
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

 