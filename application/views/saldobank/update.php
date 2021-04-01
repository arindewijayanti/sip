<?php 
$this->load->view('include/header'); 
?>
<section id="services" class="services">
      <div class="container">
      <ol class="breadcrumb" >
        <li class="breadcrumb-item">
          <a href="<?php echo base_url('saldobank/saldobank')?>">Saldo Bank</a>
        </li>
  
        <li class="breadcrumb-item active">Update Data Saldo Bank</li>
      </ol>
<!-- Example DataTables Card-->
<?php foreach ($content->result() as $data) {
          # code...
        } ?>

<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-plus"></i> Update Data Saldo Bank</div>
        <div class="card-body">
          <div class="table-responsive">
             <div class="container">

        <form action="<?php echo config_item('base_url'); ?>/saldobank/action_updatedatasaldobank/<?= $data->id?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id"  value="<?= $data->id?>" />
        <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="saldo">Tanggal</label>
                    <input value="<?= $data->tanggal?>"class="form-control" id="tanggal" type="text" aria-describedby="nameHelp" name="tanggal" required/>
                  
                </div>
              </div>
             <div class="form-group">
              <div class="form-row">

                  <div class="col-md-6">
                    <label for="saldo">Saldo</label>
                    <input value="<?= $data->saldo?>"class="form-control" id="saldo" type="text" aria-describedby="nameHelp" name="saldo" required/>
                  
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