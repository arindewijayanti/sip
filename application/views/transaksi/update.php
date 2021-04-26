<?php 
$this->load->view('include/header');
?>

</head>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('transaksi/transaksi')?>">Transaksi</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data Transaksi</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Transaksi<div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/transaksi/action_updatedatatransaksi/<?= $data->id_transaksi?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id_transaksi"  value="<?= $data->id_transaksi?>" />
        <div class="form-group">
              <div class="form-row">                     
                  
              <div class="col-md-6">
                    <label for="tanggal">Tanggal</label>
                    <input value="<?= $data->tanggal?>" class="form-control" id="tanggal" type="date" aria-describedby="nameHelp" name="tanggal" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="no_sp2d">No SP2D</label>
                    <input value="<?= $data->no_sp2d?>" class="form-control" id="no_sp2d" type="text" aria-describedby="nameHelp" name="no_sp2d"/>
                  </div>

                  <div class="col-md-6">
                    <label for="no_sts">No STS</label>
                    <input value="<?= $data->no_sts?>" class="form-control" id="no_sts" type="text" aria-describedby="nameHelp" name="no_sts"/>
                  </div>

                  <div class="col-md-6">
                    <label for="no_lainlain">No Lain</label>
                    <input value="<?= $data->no_lainlain?>" class="form-control" id="no_lainlain" type="text" aria-describedby="nameHelp" name="no_lainlain"/>
                  </div>
                <div class="col-md-6">
                    <label for="uraian">Uraian</label>
                    <input value="<?= $data->uraian?>" class="form-control" id="uraian" type="text" aria-describedby="nameHelp" name="uraian" required/>
                  </div>
                  
              </div>
              
              <div class="form-group">
              <div class="form-row">
              <div class="col-md-6">
                    <label for="penerimaan">Penerimaan</label>
                    <input value="<?= $data->penerimaan?>" class="form-control" id="penerimaan" type="text" value="0" aria-describedby="nameHelp" name="penerimaan" required/>
                </div>
                  <div class="col-md-6">
                    <label for="pengeluaran">Pengeluaran</label>
                    <input value="<?= $data->pengeluaran?>" class="form-control" id="pengeluaran" type="text" value="0" aria-describedby="nameHelp" name="pengeluaran" required/>
                  </div>
                </div>
              </div>

              <div class="col-md-6">
                    <label for="keterangan">Keterangan</label>
                    <select class="form-control form-control-sm" id="keterangan" name="keterangan" required />
                    <option value="<?= $data->keterangan?>"><?= $data->keterangan?></option>
                    <option value="Transaksi Utama">Transaksi Utama</option>
                    <option value="Transaksi Tambahan">Transaksi Tambahan</option>
                       </select></div>
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
</div>
</div>
</div>



</div>
    </section>

<?php $this->load->view('include/footer'); ?>