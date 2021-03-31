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
  
        <li class="breadcrumb-item active">Selisih</li>
      </ol>

      <div class="container">
      <a href="<?php echo base_url('selisihrekon/menambahdataselisihrekon')?>" class="btn btn-primary" style="margin-bottom: 10px;"><i class="fa fa-plus">Tambah Data</a></i>
  
  <!-- Example DataTables Card-->
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>Selisih</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
            
                <tr class="text-center">
                  <th>No</th>
                  <th>Tanggal</th>
                  <th>Kode Keterangan</th>                  
                  <th>Uraian</th>
                  <th>Nominal</th>
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
                  <td> <?php echo date("d/m/Y", strtotime($data->tanggal_selisih));?></td>
                  <td><?= $data->kode_keterangan?></td>                  
                  <td><?= $data->uraian ?></td>
                  <td><?=$data->nominal?></td>
                  <td> 
                    <a href="<?php echo base_url()?>selisihrekon/updatedataselisihrekon/<?php echo $data->id_selisihrekon; ?>" class="btn btn-warning" style="margin-bottom: 1px;">Edit<i class="fa fa-tag"></i></a>
                    <a href="<?php echo base_url()?>selisihrekon/action_deletedataselisihrekon/<?php echo $data->id_selisihrekon; ?>" onclick="return confirm('Apakah anda yakin?');" class="btn btn-danger">Hapus<i class="fa fa-trash"></i></a>
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
 