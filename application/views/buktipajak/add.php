<?php 
$this->load->view('include/header'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('buktipajak/buktipajak')?>">Bukti Pajak</a>
        </li>
  
        <li class="breadcrumb-item active">Tambah Data Bukti Pajak</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data Bukti Pajak</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('buktipajak/action_menambahdatabuktipajak')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
                  <div class="col-md-6">
                    <label for="kode_buktipajak">Kode Bukti Pajak</label>
                    <input value="-" class="form-control" id="kode_buktipajak" type="text" aria-describedby="nameHelp" name="kode_buktipajak"/>

                  </div>
                  <div class="col-md-6">
                    <label for="nama_buktipajak">Nama Bukti Pajak</label>
                    <input class="form-control" id="nama_buktipajak" type="text" aria-describedby="nameHelp" name="nama_buktipajak" required/>
                  </div>
                </div>
              </div>
              
              <div class="form-group">
              <div class="form-row">
              
                           
                  <div class="col-md-6">
                    <label for="kode_rekening">Nama Rekening</label>
                    <select class="form-control form-control-sm" id="kode_rekening" name="kode_rekening" required />
                        <?php $kode_rekening = $this->db->query("SELECT * FROM tbl_rekening");
                
                        foreach ($kode_rekening->result() as $kode_rekening) : ?>
                        
                        <option value="<?= $kode_rekening->kode_rekening?>"><?= $kode_rekening->nama_rekening?></option>
                         <?php endforeach; ?>
                       </select>
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
    </section>

<?php $this->load->view('include/footer'); ?>

 