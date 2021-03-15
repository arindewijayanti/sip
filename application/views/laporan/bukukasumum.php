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
                    <select class="form-control" name="bulan">
                <option value="01">Januari</option>
                <option value="02">Febuari</option>   
                <option value="03">Maret</option>
                <option value="04">April</option>
                <option value="05">Mei</option>
                <option value="06">Juni</option> 
                <option value="07">Juli</option>
                <option value="08">Agustus</option>    
                <option value="09">September</option>
                <option value="10">Oktober</option>
                <option value="11">November</option>
                <option value="12">Desember</option>
                
            </select>
                  </div>
<br>
                  <div class="form-group">
              <div class="form-row">
              
                           
              <div class="col-md-6">
                    <label for="tahun">Pilih Tahun</label>
                    <br>
                    <select class="form-control" name="tahun">
                <option value="2021">2021</option>
                <option value="2020">2020</option>   
                <option value="2019">2019</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                
            </select></div>
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

 