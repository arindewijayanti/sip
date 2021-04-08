<?php 
$this->load->view('include/header'); 
?>
</head>

<section id_buktipajak="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('user/index')?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Bukti Pajak</li>
      </ol>

      <div class="container">
      <a href="<?php echo base_url('buktipajak/menambahdatabuktipajak')?>" class="btn btn-primary" style="margin-bottom: 10px;"><i class="fa fa-plus">Tambah Data</a></i>
  
  <!-- Example DataTables Card-->
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>Bukti Pajak</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
            
                <tr class="text-center">
                  <th>No</th>
                  <th>Kode Bukti Pajak</th>
                  <th>Nama Bukti Pajak</th>                  
                  <th>Kode Rekening</th>                
                  <th>Nama Rekening</th>
                  <th>Opsi</th>
                </tr>
              </thead>
            <tbody  class="text-center">
                <tr>
                <?php 
                  $i = 1;
                  foreach ($content as $data) : ?>
                  <td><?= $i ?></td>
                  <td><?= $data->kode_buktipajak?></td>
                  <td><?= $data->nama_buktipajak ?></td>                                    
                  <td><?= $data->kode_rekening ?></td>                
                  <td><?= $data->nama_rekening ?></td>
                  <td> 
                    <a href="<?php echo base_url()?>buktipajak/updatedatabuktipajak/<?php echo $data->id_buktipajak; ?>" class="btn btn-warning" style="margin-bottom: 1px;">Edit<i class="fa fa-tag"></i></a>
                    <a href="<?php echo base_url()?>buktipajak/action_deletedatabuktipajak/<?php echo $data->id_buktipajak; ?>" onclick="return confirm('Apakah anda yakin?');" class="btn btn-danger">Hapus<i class="fa fa-trash"></i></a>
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
 