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
  
        <li class="breadcrumb-item active">Buku Besar Pembantu</li>
      </ol>

      <div class="container">
      <a href="<?php echo base_url('bbp/menambahdatabbp')?>" class="btn btn-primary" style="margin-bottom: 10px;"><i class="fa fa-plus">Tambah Data</a></i>
  
  <!-- Example DataTables Card-->
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>Buku Besar Pembantu</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
            
                <tr class="text-center">
                  <th>No</th>
                  <th>Tanggal</th>
                  <th>No Bukti</th>
                  <th>Debet</th>
                  <th>Kredit</th>
                  <th>Saldo</th>
                  <th>Opsi</th>
                </tr>
              </thead>
            <tbody  class="text-center">
                <tr>
                <?php 
                  $i = 1;
                  $saldo = 0;
                  foreach ($content->result() as $data)
                  {
                    $saldo += $data->kredit;
                  ?>
                  <td><?= $i ?></td>
                  <td><?= $data->tanggal ?></td>
                  <td><?= $data->kode_buktipajak ?></td>
                  <td><?= 'Rp'.number_format($data->debet,0,'.','.')?></td>
                  <td><?= 'Rp'.number_format($data->kredit,0,'.','.')?></td>
                  <td><?= 'Rp'.number_format($saldo,0,'.','.')?></td>
                  <td> 
                    <a href="<?php echo base_url()?>bbp/updatedatabbp/<?php echo $data->kode_bbp; ?>" class="btn btn-warning" style="margin-bottom: 1px;">Edit<i class="fa fa-tag"></i></a>
                    <a href="<?php echo base_url()?>bbp/action_deletedatabbp/<?php echo $data->kode_bbp; ?>" onclick="return confirm('Apakah anda yakin?');" class="btn btn-danger">Hapus<i class="fa fa-trash"></i></a>
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
 