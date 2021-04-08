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
                  </div>  
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

 