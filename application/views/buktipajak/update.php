<?php 
$this->load->view('include/header'); 
?>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo config_item('base_url'); ?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data buktipajak</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Bukti Pajak</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/buktipajak/action_updatedatabuktipajak/<?= $data->kode_buktipajak?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="kode_buktipajak"  value="<?= $data->kode_buktipajak?>" />
             <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="kode_buktipajak">Kode Bukti Pajak</label>
                    <input value="<?= $data->kode_buktipajak?>"class="form-control" id="kode_buktipajak" type="text" aria-describedby="nameHelp" name="kode_buktipajak" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="nama_buktipajak">Nama Bukti Pajak</label>
                    <input value="<?= $data->nama_buktipajak?>"class="form-control" id="nama_buktipajak" type="text" aria-describedby="nameHelp" name="nama_buktipajak" required/>
                  </div>
                  
                </div>
              </div>

              <div class="form-group">
              <div class="form-row">
              
                           
                  <div class="col-md-6">
                    <label for="kode_rekening">Nama Rekening</label>
                    <select class="form-control form-control-sm" id="kode_rekening" name="kode_rekening" required />
                  <option value="<?= $data->kode_rekening?>">Silahkan Pilih Nama Rekening</option>
                        <?php $id_rekanan = $this->db->query("SELECT * FROM tbl_rekening");
                
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
</div>
</div>
</div>



</div>
    </section>

<?php $this->load->view('include/footer'); ?>