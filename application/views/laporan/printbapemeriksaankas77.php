<html>
<head>
<style>
@media print 
{
   @page 

   {
    size: 8.27in 12.99in;
  }
}
.jarak-lh{
  line-height:10px;
}
p {
    font-size: 12spt;
}
h1{
    text-transform: uppercase;
}
table{
    font-size: 12pt;
    border-collapse: collapse;
}
.hurufkapital{
    text-transform: uppercase;
}
</style>
<?php

$tgl = date("d-m-Y", strtotime($tanggal));

$hari = date("l", strtotime($tanggal)); 
$hari_indonesia = array('Monday'  => 'senin',
'Tuesday'  => 'selasa',
'Wednesday' => 'rabu',
'Thursday' => 'kamis',
'Friday' => 'jumat',
'Saturday' => 'sabtu',
'Sunday' => 'minggu');
$hari = $hari_indonesia[$hari];


$bulanhuruf = date("m", strtotime($tanggal)); 
$bulanhuruf_indonesia = array(
'01'  => 'satu',
'02'  => 'dua',
'03' => 'tiga',
'04' => 'empat',
'05' => 'lima',
'06' => 'enam',
'07' => 'tujuh',
'08' => 'delapan',
'09' => 'sembilan',
'10' => 'sepuluh',
'11' => 'sebelas',
'12' => 'dua belas');
$bulanhuruf = $bulanhuruf_indonesia[$bulanhuruf];
$bulannama_indonesia = array(
    'satu'  => 'Januari',
    'dua'  => 'Februari',
    'tiga' => 'Maret',
    'empat' => 'April',
    'lima' => 'Mei',
    'enam' => 'Juni',
    'tujuh' => 'Juli',
    'delapan' => 'Agustus',
    'sembilan' => 'September',
    'sepuluh' => 'Oktober',
    'sebelas' => 'November',
    'dua belas' => 'Desember');
$bulannama = $bulannama_indonesia[$bulanhuruf];

$tanggalhuruf = date("d", strtotime($tanggal)); 
$tanggalsurat = date("d", strtotime($tanggal)); 
$tahunsurat = date("Y", strtotime($tanggal)); 
$tanggalhuruf_indonesia = array(
'01'  => 'satu',
'02'  => 'dua',
'03' => 'tiga',
'04' => 'empat',
'05' => 'lima',
'06' => 'enam',
'07' => 'tujuh',
'08' => 'delapan',
'09' => 'sembilan',
'10' => 'sepuluh',
'11' => 'sebelas',
'12' => 'dua belas',
'13' => 'tiga belas',
'14' => 'empat belas',
'15' => 'lima belas',
'16' => 'enam belas',
'17' => 'tujuh belas',
'18' => 'delapan belas',
'19' => 'sembilan belas',
'20' => 'dua puluh',
'21' => 'dua puluh satu',
'22' => 'dua puluh dua',
'23' => 'dua puluh tiga',
'24' => 'dua puluh empat',
'25' => 'dua puluh lima',
'26' => 'dua puluh enam',
'27' => 'dua puluh tujuh',
'28' => 'dua puluh delapan',
'29' => 'dua puluh sembilan',
'30' => 'tiga puluh',
'31' => 'tiga puluh satu');
$tanggalhuruf = $tanggalhuruf_indonesia[$tanggalhuruf];

$tahun = date("y", strtotime($tanggal)); 
$tahun_indonesia = array(
'20'  => 'dua ribu dua puluh',
'21'  => 'dua ribu dua puluh satu',
'22' => 'dua ribu dua puluh dua',
'23' => 'dua ribu dua puluh tiga',
'24' => 'dua ribu dua puluh empat',
'25' => 'dua ribu dua puluh lima',
'26' => 'dua ribu dia puluh enam');
$tahun = $tahun_indonesia[$tahun];



//------------------------
$tanggal1 = $hasilSK1->tanggal_sk;
$tgl1 = date("d", strtotime($tanggal1));
$bulanhuruf1 = date("m", strtotime($tanggal1)); 
$bulannama_indonesia1 = array(
    '01'  => 'Januari',
    '02'  => 'Februari',
    '03' => 'Maret',
    '04' => 'April',
    '05' => 'Mei',
    '06' => 'Juni',
    '07' => 'Juli',
    '08' => 'Agustus',
    '09' => 'September',
    '10' => 'Oktober',
    '11' => 'November',
    '12' => 'Desember');
$bulannama1 = $bulannama_indonesia1[$bulanhuruf1];
$tahun1 = date("Y", strtotime($tanggal1)); 

//------------------------
$tanggal2 = $hasilSK2->tanggal_sk;
$tgl2 = date("d", strtotime($tanggal2));
$bulanhuruf2 = date("m", strtotime($tanggal2)); 
$bulannama_indonesia2 = array(
    '01'  => 'Januari',
    '02'  => 'Februari',
    '03' => 'Maret',
    '04' => 'April',
    '05' => 'Mei',
    '06' => 'Juni',
    '07' => 'Juli',
    '08' => 'Agustus',
    '09' => 'September',
    '10' => 'Oktober',
    '11' => 'November',
    '12' => 'Desember');
$bulannama2 = $bulannama_indonesia2[$bulanhuruf2];
$tahun2 = date("Y", strtotime($tanggal2)); 

//------------------------

?>
<table align="center" width="100%">
<tr>
<td>
<img src="<?php echo base_url('assets2/logopadsim.jpg')?>" width="100px">
<td>
<td>
<h3 class="jarak-lh" align="center">PEMERINTAH KOTA PADANGSIDIMPUAN</h3>
<h1 class="jarak-lh" align="center">BADAN KEUANGAN DAERAH</h1>
<p class="jarak-lh" align="center">Jln. Jen. Dr. Abd.Haris Nasution Pal - IV Pijorkoling Telp (0634)27075 Fax. (0634) 27075</p>
<p class="jarak-lh" align="center">Kec. Padangsidimpuan Tenggara</p>
<td>
</tr>
<tr>
<td colspan=3>
<hr  color="black" size="2px"/>
</td>
</tr>
</table>
</head>

<body>
<p class="jarak-lh" align="center"><b>BERITA ACARA PEMERIKSAAN KAS</b></p>
<br>
 <p>Pada hari ini <?php echo $hari;?> tanggal <?php echo $tanggalhuruf;?> bulan <?php echo $bulanhuruf;?> tahun <?php echo $tahun;?> yang bertandatangan di bawah ini : </p>

<table>
<tr><td>Nama</td>	 <td>:</td> <td><?= $hasilSK1->nama ?></td></tr>
<tr><td>NIP</td>     <td>:</td>	<td><?= $hasilSK1->nip ?></td></tr>
<tr><td>Pangkat/Jabatan/Gol</td>     <td>:</td>	<td><?= $hasilSK1->jabatan ?> / <?= $hasilSK1->gol_jabatan ?></td></tr>
<tr><td></td>     <td></td>	<td>Pejabat Pengelola Keuangan Daerah Selaku Bendahara Umum Daerah Kota Padangsidimpuan.</td></tr>
</table>
<p>Sesuai dengan Surat Keputusan Walikota Padangsidimpuan Nomor : <?= $hasilSK1->no_sk  ?> tanggal <?php echo $tgl1;?> <?php echo $bulannama1;?> <?php echo $tahun1;?> dan setelah memperlihatkan surat bukti, dilakukan pemeriksaan pengawasan melekat pada :</p>
<table>
<tr><td>Nama</td>	 <td>:</td> <td><?= $hasilSK2->nama ?></td></tr>
<tr><td>NIP</td>     <td>:</td>	<td><?= $hasilSK2->nip ?></td></tr>
<tr><td>Pangkat/Jabatan/Gol</td>     <td>:</td>	<td><?= $hasilSK2->jabatan  ?> / <?= $hasilSK2->gol_jabatan ?></td></tr>
<tr><td></td>     <td></td>	<td>Kuasa Bendahara Umum Daerah Kota Padangsidimpuan.</td></tr>
</table>
<p>Yang ditunjuk dengan Surat Keputusan Walikota Nomor : <?= $hasilSK2->no_sk  ?> tanggal <?php echo $tgl2;?> <?php echo $bulannama2;?> <?php echo $tahun2;?> ditugaskan sebagai Kuasa Bendahara Umum Daerah Pemerintah Kota Padangsidimpuan Tahun Anggaran 2021 berdasakan hasil pemeriksaan atas penutupan kas pada Buku Kas Umum Kuasa Bendahara Daerah dijumpai kenyataan sebagai berikut :</p>

<p>Jumlah uang yang kami hitung dihadapan Pejabat tersebut adalah :</p>
<table width="100%">
<tr><td width="5%">a. </td>	 <td width="65%">SP2D dan alat pembayaran lainnya</td> <td width="25%">= </td></tr>
<tr><td width="5%">b. </td>     <td width="65%">Saldo Bank Sumut AC 2511</td>	<td width="25%">= <?='Rp'.number_format($saldobank['saldo'],2,',','.'); ?></td></tr>
<tr><td width="5%">c. </td>     <td width="65%">Surat/Barang berharga lainnya</td>	<td width="25%">= </td></tr>
<tr><td width="5%"></td><td width="65%"></td><td width="5%"><hr  color="black" size="2px"/></td></tr>
<tr><td width="5%"></td>     <td width="65%">Jumlah</td>	<td width="25%">= <?='Rp'.number_format($saldobank['saldo'],2,',','.'); ?></td></tr>
<tr><td width="5%"></td>     <td width="65%">Saldo Uang menurut Buku Kas, Register Buku Kas</td>	<td width="25%">= <?='Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']+$hbpp['totalpenerimaanbpp']-$hbpp['totalpengeluaranbpp']+$hbbp['totalpenerimaanbbp']-$hbbp['totalpengeluaranbbp'],2,',','.'); ?></td></tr>
<tr><td width="5%"></td><td width="65%"></td><td width="5%"><hr  color="black" size="2px"/></td></tr>
<tr><td width="5%"></td>     <td width="65%">Selisih antara Saldo Kas dan Saldo Buku</td>	<td width="25%">= <?= 'Rp'.number_format($saldobank['saldo']-($h['totalpenerimaan']-$h['totalpengeluaran']+$hbpp['totalpenerimaanbpp']-$hbpp['totalpengeluaranbpp']+$hbbp['totalpenerimaanbbp']-$hbbp['totalpengeluaranbbp']),0,'.','.');?></td></tr>
</table>


<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
    <td width="5%"></td>
    <td width="30%">DISETUJUI</td>
    <td width="30%">Padangsidimpuan, tanggal tersebut diatas</td>
</tr>
<tr>
<td width="5%"></td>
    <td width="30%">Kuasa Bendahara Umum Daerah</td>
    <td width="30%">Kepala Badan Keuangan Daerah</td>
</tr>
<td width="5%"></td>
    <td width="30%"></td>
    <td width="30%">Selaku PPKD</td>
</tr>
<tr height="75px"></tr>
<tr>
<td width="5%"></td>
    <td width="30%"><?= $hasilSK2->nama ?></td>
    <td width="30%"><?= $hasilSK1->nama ?></td>
</tr>
<tr>
<td width="5%"></td>
    <td width="30%"><?= $hasilSK2->jabatan ?></td>
    <td width="30%"><?= $hasilSK1->jabatan ?></td>
</tr>

<tr>
<td width="5%"></td>
    <td width="30%">NIP. <?= $hasilSK2->nip ?></td>
    <td width="30%">NIP. <?= $hasilSK1->nip ?></td>
</tr>

</table>
</footer>

</html>