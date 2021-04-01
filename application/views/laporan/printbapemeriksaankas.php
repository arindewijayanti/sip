<html>
<head>
<style>
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
<tr><td>Nama</td>	 <td>:</td> <td>Sulaiman Lubis, SE</td></tr>
<tr><td>NIP</td>     <td>:</td>	<td>19690501 199303 1 004</td></tr>
<tr><td>Pangkat/Jabatan/Gol</td>     <td>:</td>	<td>Pembina Utama Muda / IV/ c</td></tr>
<tr><td></td>     <td></td>	<td>Pejabat Pengelola Keuangan Daerah Selaku Bendahara Umum Daerah Kota Padangsidimpuan.</td></tr>
</table>
<p>Sesuai dengan Surat Keputusan Walikota Padangsidimpuan Nomor : 2/KPTS/2021 tanggal 04 Januari 2021 dan setelah memperlihatkan surat bukti, dilakukan pemeriksaan pengawasan melekat pada :</p>
<table>
<tr><td>Nama</td>	 <td>:</td> <td>Asir Aryadi, SE</td></tr>
<tr><td>NIP</td>     <td>:</td>	<td>19760207 200502 1 002</td></tr>
<tr><td>Pangkat/Jabatan/Gol</td>     <td>:</td>	<td>Penata Tingkat I / III d</td></tr>
<tr><td></td>     <td></td>	<td>Kuasa Bendahara Umum Daerah Kota Padangsidimpuan.</td></tr>
</table>
<p>Yang ditunjuk dengan Surat Keputusan Walikota Nomor : 91/KPTS/2021 tanggal 24 Februari 2021 ditugaskan sebagai Kuasa Bendahara Umum Daerah Pemerintah Kota Padangsidimpuan Tahun Anggaran 2021 berdasakan hasil pemeriksaan atas penutupan kas pada Buku Kas Umum Kuasa Bendahara Daerah dijumpai kenyataan sebagai berikut :</p>

<p>Jumlah uang yang kami hitung dihadapan Pejabat tersebut adalah :</p>
<table width="100%">
<tr><td width="5%">a. </td>	 <td width="65%">SP2D dan alat pembayaran lainnya</td> <td width="25%">= </td></tr>
<tr><td width="5%">b. </td>     <td width="65%">Saldo Bank Sumut AC 2511</td>	<td width="25%">= <?='Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran'],0,'.','.'); ?></td></tr>
<tr><td width="5%">c. </td>     <td width="65%">Surat/Barang berharga lainnya</td>	<td width="25%">= </td></tr>
<tr><td width="5%"></td><td width="65%"></td><td width="5%"><hr  color="black" size="2px"/></td></tr>
<tr><td width="5%"></td>     <td width="65%">Jumlah</td>	<td width="25%">= <?='Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran'],0,'.','.'); ?></td></tr>
<tr><td width="5%"></td>     <td width="65%">Saldo Uang menurut Buku Kas, Register Buku Kas</td>	<td width="25%">= <?='Rp'.number_format($saldobank['saldo'],0,'.','.'); ?></td></tr>
<tr><td width="5%"></td><td width="65%"></td><td width="5%"><hr  color="black" size="2px"/></td></tr>
<tr><td width="5%"></td>     <td width="65%">Selisih antara Saldo Kas dan Saldo Buku</td>	<td width="25%">= <?= 'Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']-$saldobank['saldo'],0,'.','.');?></td></tr>
</table>


<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
    <td width="10%"></td>
    <td width="30%">DISETUJUI</td>
    <td width="30%">Padangsidimpuan, tanggal tersebut diatas</td>
</tr>
<tr>
<td width="10%"></td>
    <td width="30%">Kuasa Bendahara Umum Daerah</td>
    <td width="30%">Kepala Badan Keuangan Daerah</td>
</tr>
<td width="10%"></td>
    <td width="30%"></td>
    <td width="30%">Selaku PPKD</td>
</tr>
<tr height="75px"></tr>
<tr>
<td width="10%"></td>
    <td width="30%">Asir Aryadi, S.E.</td>
    <td width="30%">Sulaiman Lubis, S.E.</td>
</tr>
<tr>
<td width="10%"></td>
    <td width="30%">Penata Tingkat I</td>
    <td width="30%">Pembina Utama Muda</td>
</tr>

<tr>
<td width="10%"></td>
    <td width="30%">NIP. 197602072005021002</td>
    <td width="30%">NIP. 196905011993031004</td>
</tr>

</table>
</footer>

</html>