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
  
        <li class="breadcrumb-item active">Laporan Buku Besar Pembantu</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Laporan Buku Besar Pembantu</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('laporan/printbukubesarpembantu')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
              <div class="col-md-6">
                    <label for="kode_rekening">Nama Rekening</label>
                    <select class="form-control form-control-sm" id="kode_rekening" name="kode_rekening" required />
                    <option>Silahkan Pilih Nama Rekening</option>
                        <?php $kode_rekening = $this->db->query("SELECT * FROM tbl_rekening");
                
                        foreach ($kode_rekening->result() as $kode_rekening) : ?>
                        
                        <option value="<?= $kode_rekening->kode_rekening?>"><?= $kode_rekening->nama_rekening?></option>
                         <?php endforeach; ?>
                       </select>
                  </div>
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

 