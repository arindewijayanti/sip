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
  
        <li class="breadcrumb-item active">Rekening</li>
      </ol>

      <div class="container">
      <a href="<?php echo base_url('nomorsk/menambahdatanomorsk')?>" class="btn btn-primary" style="margin-bottom: 10px;"><i class="fa fa-plus">Tambah Data</a></i>
  
  <!-- Example DataTables Card-->
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>Rekening</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
            
                <tr class="text-center">
                  <th>No</th>
                  <th>Nomor Sk</th>
                  <th>Tanggal Sk</th>
                  <th>Tanggal Berakhir</th>
                  <th>Nama</th>
                  <th>Nip</th>
                  <th>Jabatan</th>
                  <th>Gol</th>
                  <th>Opsi</th>
                </tr>
              </thead>
            <tbody  class="text-center">
                <tr>
                <?php 
                  $i = 1;
                  foreach ($content->result() as $data) : ?>
                  <td><?= $i ?></td>
                  <td><?= $data->no_sk?></td>
                  <td><?php echo date("d/m/Y", strtotime($data->tanggal_sk));?></td>
                  <td><?php echo date("d/m/Y", strtotime($data->tanggal_skberakhir));?></td>
                  <td><?= $data->nama ?></td>
                  <td><?= $data->nip ?></td>
                  <td><?= $data->jabatan ?></td>
                  <td><?= $data->gol ?></td>
                  <td> 
                    <a href="<?php echo base_url()?>nomorsk/updatedatanomorsk/<?php echo $data->id; ?>" class="btn btn-warning" style="margin-bottom: 1px;">Edit<i class="fa fa-tag"></i></a>
                    <a href="<?php echo base_url()?>nomorsk/action_deletedatanomorsk/<?php echo $data->id; ?>" onclick="return confirm('Apakah anda yakin?');" class="btn btn-danger">Hapus<i class="fa fa-trash"></i></a>
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
 