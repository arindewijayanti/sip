<?php 
$this->load->view('include/headermaster'); 
?>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('masteruser/masteruser')?>">Manage User</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data Manage User</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Manage Akun</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/masteruser/action_updatedatamasteruser/<?= $data->id?>" method="post" enctype="multipart/form-data">
        <input type="hidden" id="id"  value="<?= $data->id?>" />
             <div class="form-group">
              <div class="form-row">


                <div class="col-md-6">
                    <label for="username">Username</label>
                    <input value="<?= $data->username?>"class="form-control" id="username" type="text" aria-describedby="nameHelp" name="username" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="name">Nama</label>
                    <input value="<?= $data->name?>"class="form-control" id="name" type="text" aria-describedby="nameHelp" name="name" required/>
                  </div>

                  <div class="col-md-6">
                    <label for="status">Status</label>
                    <select class="form-control form-control-sm" id="status" name="status" required />
                    <option value="<?= $data->status?>"><?= $data->status?></option>
                        <option value="admin">Admin</option>
                        <option value="member">Member</option>
                       </select> </div></div>

                  <div class="col-md-6">
                    <label for="id_opd">OPD</label>
                    <select class="form-control form-control-sm" id="id_opd" name="id_opd" required />
                    <option value="<?= $data->id_opd?>"><?= $data->id_opd?></option>
                        <?php $id_opd = $this->db->query("SELECT * FROM tbl_opd");
                
                        foreach ($id_opd->result() as $id_opd) : ?>
                        
                        <option value="<?= $id_opd->id_opd?>"><?= $id_opd->nama_opd?></option>
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