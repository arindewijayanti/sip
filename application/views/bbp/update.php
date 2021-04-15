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
  
        <li class="breadcrumb-item active">Update Data Buku Besar Pembantu</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Buku Besar Pembantu</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/bbp/action_updatedatabbp/<?= $data->id_bbp?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id_bbp"  value="<?= $data->id_bbp?>" />
             <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="tanggal">Tanggal</label>
                    <input value="<?= $data->tanggal?>" class="form-control" id="tanggal" type="date" aria-describedby="nameHelp" name="tanggal" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="uraian">Uraian</label>
                    <input value="<?= $data->uraian?>"class="form-control" id="uraian" type="text" aria-describedby="nameHelp" name="uraian" required/>
                 
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

                  <div class="col-md-6">
                    <label for="id_rekening">Nama Rekening</label>
                    <select class="form-control form-control-sm" id="id_rekening" name="id_rekening" required />
                    <option value="<?= $data->id_rekening?>"><?= $data->id_rekening?></option>
                        <?php $id_rekening = $this->db->query("SELECT * FROM tbl_rekening");
                
                        foreach ($id_rekening->result() as $id_rekening) : ?>
                        
                        <option value="<?= $id_rekening->id_rekening?>"><?= $id_rekening->nama_rekening?></option>
                         <?php endforeach; ?>
                       </select> </div></div>
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