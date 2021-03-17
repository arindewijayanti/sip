<?php 
$this->load->view('include/header'); 
?>
</head>

<section id_ssh="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('user/index')?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Apbd</li>
      </ol>

      <div class="container">
      <a href="<?php echo base_url('apbd/menambahdataapbd')?>" class="btn btn-primary" style="margin-bottom: 10px;"><i class="fa fa-plus">Tambah Data</a></i>
  
  <!-- Example DataTables Card-->
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>Apbd</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
            
                <tr class="text-center">
                  <th>No</th>
                  <th>Kode Rekening</th>
                  <th>Tahun</th>
                  <th>Pagu Apbd</th>
                  <th>Pagu Perubahan Apbd</th>
                  <th>Opsi</th>
                </tr>
              </thead>
            <tbody  class="text-center">
                <tr>
                <?php 
                  $i = 1;
                  foreach ($content->result() as $data) : ?>
                  <td><?= $i ?></td>
                  <td><?= $data->kode_rekening?></td>
                  <td><?= $data->tahun?></td>
                  <td><?= $data->pagu_apbd ?></td>
                  <td><?= $data->pagu_perubahan_apbd?></td>
                  <td> 
                    <a href="<?php echo base_url()?>apbd/updatedataapbd/<?php echo $data->kode_rekening; ?>" class="btn btn-warning" style="margin-bottom: 1px;">Edit<i class="fa fa-tag"></i></a>
                    <a href="<?php echo base_url()?>apbd/action_deletedataapbd/<?php echo $data->kode_rekening; ?>" onclick="return confirm('Apakah anda yakin?');" class="btn btn-danger">Hapus<i class="fa fa-trash"></i></a>
                  </td> 
                </tr>
                    <?php
                      $i++;
                    endforeach;
                  ?>
              </tbody>
            </table>

          
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php $this->load->view('include/footer'); ?>
 