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
  
        <li class="breadcrumb-item active">Laporan Buku Kas Umum</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Laporan Buku Kas Umum</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('laporan/printbukukasumum')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
              <div class="col-md-6">
                    <label for="tanggal">Pilih Bulan</label>
                    <br>
                    <select class="form-control" name="tanggal">
                <option value="januari">Januari</option>
                <option value="febuari">Febuari</option>   
                <option value="Maret">Maret</option>
                <option value="april">April</option>
                <option value="mei">Mei</option>
                <option value="juni">Juni</option> 
                <option value="juli">Juli</option>
                <option value="agustus">Agustus</option>    
                <option value="september">September</option>
                <option value="oktober">Oktober</option>
                <option value="november">November</option>
                <option value="desember">Desember</option>
                
            </select>
                  </div>
<br>
                  <div class="form-group">
              <div class="form-row">
              
                           
              <div class="col-md-6">
                    <label for="tanggal">Pilih Tahun</label>
                    <br>
                    <input class="form-control" id="tanggal" type="text" aria-describedby="nameHelp" name="tanggal" required/>
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

 