<?php 
$this->load->view('include/header'); 
?>

</head>

<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo config_item('base_url'); ?>">Halaman Utama</a>
        </li>
  
        <li class="breadcrumb-item active">Tambah Data Apbd</li>
      </ol>
<!-- Example DataTables Card-->
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Menambah Data Apbd</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo base_url('apbd/action_menambahdataapbd')?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
              <div class="form-row">
              
                           
                  <div class="col-md-6">
                    <label for="kode_rekening">Kode Rekening</label>
                    <input class="form-control" id="kode_rekening" type="text" aria-describedby="nameHelp" name="kode_rekening" required/>

                  </div>
                  <div class="form-group">
              <div class="form-row">
              
                           
              <div class="col-md-6">
                    <label for="tahun">Pilih Tahun</label>
                    <br>
                    <select class="form-control" name="tahun">
                <option value="2021">2021</option>
                <option value="2020">2020</option>   
                <option value="2019">2019</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                
            </select></div>
                  
                </div>
                  <div class="col-md-6">
                    <label for="pagu_apbd">Pagu Apbd</label>
                    <input class="form-control" id="pagu_apbd" type="text" aria-describedby="nameHelp" name="pagu_apbd" required/>
                  </div>
                  <div class="col-md-6">
                    <label for="pagu_perubahan_apbd">Pagu Perubahan Apbd</label>
                    <input class="form-control" id="pagu_perubahan_apbd" type="text" aria-describedby="nameHelp" name="pagu_perubahan_apbd" required/>
                  </div>
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

 