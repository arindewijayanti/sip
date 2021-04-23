<?php 
$this->load->view('include/headermaster');
function __contruct()
{
  $this->table = 'user';
} 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('master/index')?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Laporan Buku Pembantu Pajak</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Laporan Buku Pembantu Pajak</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('master/printbpp')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">

              <div class="col-md-6">
                    <label for="id_opd">Nama OPD</label>
                    <select class="form-control form-control-sm" id="id_opd" name="id_opd" required />
                    <option>Silahkan Pilih Nama OPD</option>
                        <?php $id_opd = $this->db->query("SELECT * FROM tbl_opd");
                
                        foreach ($id_opd->result() as $id_opd) : ?>
                        
                        <option value="<?= $id_opd->id_opd?>"><?= $id_opd->nama_opd?></option>
                         <?php endforeach; ?>
                       </select>
                  </div>
                  </div>  
                  </div>  
              <div class="form-row">
              
                           
              <div class="col-md-6">
                    <label for="tanggalmulai">Mulai Tanggal</label>
                    <br>
                    <input class="form-control" id="tanggalmulai" type="date" aria-describedby="nameHelp" name="tanggalmulai" required/>
                 </div>

                 <div class="col-md-6">
                    <label for="tanggalselesai">Sampai Tanggal</label>
                    <br>
                    <input class="form-control" id="tanggalselesai" type="date" aria-describedby="nameHelp" name="tanggalselesai" required/>
                 </div>
                  
                </div>
              </div>
              
            
             <div class="form-group">
            <div class="form-row">
              <div class="col-md-2">
              <br>
                <input class="form-control btn btn-primary" type="submit" value="Print" name="btnSimpan" >
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

 