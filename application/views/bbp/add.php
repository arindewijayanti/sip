<?php 
$this->load->view('include/header'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('bbp/bbp')?>">Buku Besar Pembantu</a>
        </li>
  
        <li class="breadcrumb-item active">Tambah Data Buku Besar Pembantu</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data Buku Besar Pembantu</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('bbp/action_menambahdatabbp')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
                  <div class="col-md-6">
                    <label for="tanggal">Tanggal</label>
                    <input class="form-control" id="tanggal" type="date" aria-describedby="nameHelp" name="tanggal" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="id_buktipajak">Nomor Bukti</label>
                    <select class="form-control form-control-sm" id="id_buktipajak" name="id_buktipajak" required />
                    <option>Silahkan Pilih Nama Bukti Pajak</option>
                        <?php $id_buktipajak = $this->db->query("SELECT * FROM tbl_buktipajak");
                
                        foreach ($id_buktipajak->result() as $id_buktipajak) : ?>
                        
                        <option value="<?= $id_buktipajak->id_buktipajak?>"><?= $id_buktipajak->nama_buktipajak?></option>
                         <?php endforeach; ?>
                         <option value="-">-</option>
                       </select> </div>
                </div>
              </div>
              
              <div class="form-group">
              <div class="form-row">
                 
                  <div class="col-md-6">
                    <label for="debet">Debet</label>
                    <input class="form-control" id="debet" type="text" value="0" aria-describedby="nameHelp" name="debet" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="kredit">Kredit</label>
                    <input class="form-control" id="kredit" type="text" aria-describedby="nameHelp" name="kredit" required/>
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

 