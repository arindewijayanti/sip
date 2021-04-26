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
  
        <li class="breadcrumb-item active">Transaksi</li>
      </ol>

      <div class="container">
      <a href="<?php echo base_url('transaksi/menambahdatatransaksi')?>" class="btn btn-primary" style="margin-bottom: 10px;"><i class="fa fa-plus">Tambah Data</a></i>
  
  <!-- Example DataTables Card-->
  <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>Transaksi</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="example" width="100%" cellspacing="0">
              <thead>
            
                <tr class="text-center">
                  <th>No</th>
                  <th>Tanggal</th>
                  <th>No SP2D</th>    
                  <th>No STS</th>     
                  <th>No Lain Lain</th>                   
                  <th>Uraian</th>
                  <th>Penerimaan</th>
                  <th>Pengeluaran</th>
                  <th>Keterangan</th>
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
                    $saldo += $data->penerimaan-$data->pengeluaran;
                  ?>
                  <td><?= $i ?></td>
                  <td><?php echo date("d/m/Y", strtotime($data->tanggal));?></td>   
                  <td><?= $data->no_sp2d?></td>     
                  <td><?= $data->no_sts?></td>      
                  <td><?= $data->no_lainlain?></td>                  
                  <td><?= $data->uraian ?></td>
                  <td><?= 'Rp '.number_format($data->penerimaan,2,',','.');?></td>
                  <td><?= 'Rp '.number_format($data->pengeluaran,2,',','.');?></td>
                  <td><?= $data->keterangan ?></td>
                  <td> 
                    <a href="<?php echo base_url()?>transaksi/updatedatatransaksi/<?php echo $data->id_transaksi; ?>" class="btn btn-warning" style="margin-bottom: 1px;">Edit<i class="fa fa-tag"></i></a>
                    <a href="<?php echo base_url()?>transaksi/action_deletedatatransaksi/<?php echo $data->id_transaksi; ?>" onclick="return confirm('Apakah anda yakin?');" class="btn btn-danger">Hapus<i class="fa fa-trash"></i></a>
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
 