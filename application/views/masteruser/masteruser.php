<?php 
$this->load->view('include/headermaster'); 
?>
</head>

<section id_ssh="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('master/index')?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Manage User</li>
      </ol>

      <div class="container">
      <a href="<?php echo base_url('masteruser/menambahdatamasteruser')?>" class="btn btn-primary" style="margin-bottom: 10px;"><i class="fa fa-plus">Tambah Data</a></i>
  
  <!-- Example DataTables Card-->
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>Manage User</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="example" width="100%" cellspacing="0">
              <thead>
            
                <tr class="text-center">
                  <th>No</th>
                  <th>Nama</th>
                  <th>Username</th>  
                  <th>Status</th>  
                  <th>OPD</th>  
                  <th>Opsi</th>
                </tr>
              </thead>
            <tbody  class="text-center">
                <tr>
                <?php 
                  $i = 1;
                  foreach ($content->result() as $data)
                  {
                  ?>
                  <td><?= $i ?></td>
                  <td><?=  $data->name ?></td>
                  <td><?= $data->username?></td>   
                  <td><?= $data->status?></td>   
                  <td><?= $data->nama_opd?></td>   
                  <td> 
                    <a href="<?php echo base_url()?>masteruser/updatedatamasteruser/<?php echo $data->id; ?>" class="btn btn-warning" style="margin-bottom: 1px;">Edit<i class="fa fa-tag"></i></a>
                    <a href="<?php echo base_url()?>masteruser/action_deletedatamasteruser/<?php echo $data->id; ?>" onclick="return confirm('Apakah anda yakin?');" class="btn btn-danger">Hapus<i class="fa fa-trash"></i></a>
                    <a href="<?php echo base_url()?>masteruser/action_resetpassword/<?php echo $data->id; ?>" onclick="return confirm('Apakah anda yakin mengatur ulang kata sandi menjadi 123456?');" class="btn btn-success">Reset Password<i class="fa fa-trash"></i></a>
                 </td> 
                </tr>
                    <?php
                      $i++;
                  }
                  ?>
              </tbody>
            </table>

          
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php $this->load->view('include/footer'); ?>
 