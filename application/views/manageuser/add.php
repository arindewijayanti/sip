<?php 
$this->load->view('include/header'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('manageuser/manageuser')?>">Manajemen User</a>
        </li>
  
        <li class="breadcrumb-item active">Tambah Data Manajemen Menu</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data Manajemen Menu</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('manageuser/action_menambahdatamanageuser')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
                  <div class="col-md-6">
                    <label for="user_id">Operator</label>
                    <select class="form-control form-control-sm" id="user_id" name="user_id" required />
                    <option>Silahkan Pilih Nama Operator</option>
                        <?php
                
                        foreach ($content->result() as $data) : ?>
                        
                        <option value="<?= $data->id?>"><?= $data->name?></option>
                         <?php endforeach; ?>
                       </select>
                  </div>
                  <div class="col-md-6">
                    <label for="menu_id">Menu</label>
                    <select class="form-control form-control-sm" id="menu_id" name="menu_id" required />
                    <option>Silahkan Pilih Menu</option>
                        <?php $id = $this->db->query("SELECT * FROM user_menu where levelmenu = 'T'");
                
                        foreach ($id->result() as $id) : ?>
                        
                        <option value="<?= $id->id?>"><?= $id->menu?></option>
                         <?php endforeach; ?>
                       </select></div>
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

 