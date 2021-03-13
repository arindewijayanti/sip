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
  
        <li class="breadcrumb-item active">Tambah Data Transaksi</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data Transaksi</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('transaksi/action_menambahdatatransaksi')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">                     
                  
              <div class="col-md-6">
                    <label for="tanggal">Tanggal</label>
                    <input class="form-control" id="tanggal" type="date" aria-describedby="nameHelp" name="tanggal" required/>
                  </div>
                   <div class="col-md-6">
                    <label for="jenis_bukti">Jenis Bukti</label>
                    <select class="form-control form-control-sm" id="jenis_bukti" name="jenis_bukti" required />
                    <option>Pilih Jenis Bukti</option>
                    <option value="SP2D">SP2D</option>
                    <option value="STS">STS</option>
                    <option value="LAIN-LAIN">LAIN-LAIN</option>
                       </select> </div>
    
              </div>

              <div class="form-group">
              <div class="form-row">                     
              <div class="col-md-6">
                    <label for="no_bukti">Nomor Bukti</label>
                    <input class="form-control" id="no_bukti" type="text" aria-describedby="nameHelp" name="no_bukti" required/>
                </div>
                <div class="col-md-6">
                    <label for="uraian">Uraian</label>
                    <input class="form-control" id="uraian" type="text" aria-describedby="nameHelp" name="uraian" required/>
                  </div>
                  
              </div>
              
              <div class="form-group">
              <div class="form-row">
              <div class="col-md-6">
                    <label for="penerimaan">Penerimaan</label>
                    <input class="form-control" id="penerimaan" type="text" value="0" aria-describedby="nameHelp" name="penerimaan" required/>
                </div>
                  <div class="col-md-6">
                    <label for="pengeluaran">Pengeluaran</label>
                    <input class="form-control" id="pengeluaran" type="text" value="0" aria-describedby="nameHelp" name="pengeluaran" required/>
                  </div>
                </div>
              </div>

<br>
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

 