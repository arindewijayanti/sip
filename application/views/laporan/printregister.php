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
<p class="jarak-lh" align="center"><b>REGISTER PENUTUPAN KAS</b></p>
<br>
 
<table>
<tr><td>Tanggal Penutupan Kas ......</td>	 <td>:</td> <td> 20 Maret 2021 </td></tr>
<tr><td>Nama Penutup Kas/Kuasa BUS</td>     <td>:</td>	<td>Asir Aryadi, SE</td></tr>
<tr><td>Tanggal Penutupan Kas yang lalu ......</td>     <td>:</td>	<td>19 Maret 2021</td></tr>
<tr><td>Jumlah Penerimaan ......</td>     <td>:</td>	<td>Rp ....</td></tr>
<tr><td>Jumlah Pengeluaran ......</td>     <td>:</td>	<td>Rp ....</td></tr>
<br>
<tr><td>Saldo Buku Kas ......</td>     <td>:</td>	<td>Rp ....</td></tr>
<tr><td>Saldo Kas ......</td>     <td>:</td>	<td>Rp ....</td></tr>
</table>
<table style="width:100%">
<br>
<tr><p>Kertas berharga dan bagian Kas yang diizinkan Ordonansi :</p></tr>
<tr><td>a. </td><td>SP2D ......</td>	 <td>Rp ....</td></tr>
<tr><td>b. </td><td>Wessel</td>    	<td>Rp ....</td></tr>
<tr><td>c. </td><td>Saldo bank Sumut AC 2511 ......</td>   	<td>Rp ....</td></tr>
<tr><td>d. </td><td>M e t e r a i ......</td>     	<td>Rp ....</td></tr>
<tr><td>e. </td><td>Dan Lain-lain ......</td>     	<td>Rp ....</td></tr>
<tr><td></td><td>&nbsp J u m l a h ......</td>      <td>Rp ....</td></tr>
<tr><td></td><td>&nbsp Selisih ......</td>      <td>Rp ....</td></tr>
</table>

<table width="100%">
<tr><p><u>Penjelasan Perbedaan :</u></p></tr>
<tr><p>Potongan PFK s/d Hari ini :</p></tr>
<tr><p><td width="10%"></td><td width="40%">- Potongan Gaji</td> <td>Rp.</td></p><tr>
<tr><p><td width="10%"></td><td width="40%"> - Potongan PPN & PPh</td> <u><td>Rp.</td></u></p></tr>
<tr><p><td width="10%"></td><td width="40%"> - Jumlah</td><u><td>Rp.</td></u></p></tr>
</table>

<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
    <td width="10%"></td>
    <td width="30%">DISETUJUI</td>
    <td width="30%">Padangsidimpuan, 21 Maret 2021</td>
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