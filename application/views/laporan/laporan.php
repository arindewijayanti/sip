<?php 
$this->load->view('include/header'); 
?>
<body> 

  <main id="main">

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4><a href="<?php echo base_url('laporan/posisikasharian')?>">Laporan Posisi Kas Harian</a></h4>
              </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4><a href="<?php echo base_url('laporan/bukukasumum')?>">Laporan Buku Kas Umum</a></h4>
            </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4><a href="<?php echo base_url('laporan/rekonsiliasibank')?>">Laporan Rekonsiliasi Bank</a></h4>
             </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4><a href="<?php echo base_url('laporan/bukupembantupajak')?>">Laporan Buku Pembantu Pajak</a></h4>
            </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-slideshow"></i></div>
              <h4><a href="<?php echo base_url('laporan/bukubesarpembantu')?>">Laporan Buku Besar Pembantu</a></h4>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

 <?php $this->load->view('include/footer'); ?>