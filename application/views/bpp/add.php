<?php 
$this->load->view('include/header'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('bpp/bpp')?>">Buku Pembantu Pajak</a>
        </li>
  
        <li class="breadcrumb-item active">Tambah Data Buku Pembantu Pajak</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data Buku Pembantu Pajak</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('bpp/action_menambahdatabpp')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">                     
                  
                  <div class="col-md-6">
                    <label for="id_buktipajak">Nomor Bukti</label>
                    <input class="form-control" id="id_buktipajak" type="text" aria-describedby="nameHelp" name="id_buktipajak"/>
                </div>
                <div class="col-md-6">
                    <label for="uraian">Uraian</label>
                    <input class="form-control" id="uraian" type="text" aria-describedby="nameHelp" name="uraian" required/>
                  </div>
              </div>

              <div class="form-group">
              <div class="form-row">                     
                  <div class="col-md-6">
                    <label for="tanggal">Tanggal</label>
                    <input class="form-control" id="tanggal" type="date" aria-describedby="nameHelp" name="tanggal" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="penerimaan">Penerimaan</label>
                    <input class="form-control" id="penerimaan" type="text" value="0" aria-describedby="nameHelp" name="penerimaan" required/>
                </div>
              </div>
              
              <div class="form-group">
              <div class="form-row">
                 
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

 