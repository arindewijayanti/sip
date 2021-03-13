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
  
        <li class="breadcrumb-item active">Update Data Buku Besar Pembantu</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Buku Besar Pembantu</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/bbp/action_updatedatabbp/<?= $data->kode_bbp?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="kode_bbp"  value="<?= $data->kode_bbp?>" />
             <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="tanggal">Tanggal</label>
                    <input value="<?= $data->tanggal?>" class="form-control" id="tanggal" type="date" aria-describedby="nameHelp" name="tanggal" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="kode_buktipajak">Nomor Bukti</label>
                    <select class="form-control form-control-sm" id="nama" name="kode_buktipajak" required />
                    <option value="<?= $data->kode_buktipajak?>"><?= $data->kode_buktipajak?></option>
                        <?php $kode_buktipajak = $this->db->query("SELECT * FROM tbl_buktipajak");
                
                        foreach ($kode_buktipajak->result() as $kode_buktipajak) : ?>
                        
                        <option value="<?= $kode_buktipajak->kode_buktipajak?>"><?= $kode_buktipajak->kode_buktipajak?></option>
                         <?php endforeach; ?>
                       </select> </div>
                </div>
                
                  
                </div>
              </div>

              <div class="form-group">
              <div class="form-row">
              
              <div class="col-md-6">
                    <label for="debet">Debet</label>
                    <input value="<?= $data->debet?>"class="form-control" id="debet" type="text" aria-describedby="nameHelp" name="debet" required/>
                  </div>
                           
                  <div class="col-md-6">
                    <label for="kredit">Kredit</label>
                    <input value="<?= $data->kredit?>"class="form-control" id="kredit" type="text" aria-describedby="nameHelp" name="kredit" required/>
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
</div>
</div>
</div>



</div>
    </section>

<?php $this->load->view('include/footer'); ?>