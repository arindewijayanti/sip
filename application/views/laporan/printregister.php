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
$bulanhuruf = date("m", strtotime($tanggal)); 
$bulannama_indonesia = array(
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
$bulannama = $bulannama_indonesia[$bulanhuruf];
$tanggalhuruf = date("d", strtotime($tanggal)); 
$tanggalsurat = date("d", strtotime($tanggal)); 
$tahunsurat = date("Y", strtotime($tanggal)); 
$tahun = date("Y", strtotime($tanggal)); 

$tanggalsebelumnya = date('Y-m-d', strtotime('-1 days', strtotime($tanggal)));

$tglsebelumnya = date("d-m-Y", strtotime($tanggalsebelumnya));
$bulanhurufsebelumnya = date("m", strtotime($tanggalsebelumnya)); 
$bulannama_indonesiasebelumnya = array(
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
$bulannamasebelumnya = $bulannama_indonesiasebelumnya[$bulanhurufsebelumnya];
$tanggalhurufsebelumnya = date("d", strtotime($tanggalsebelumnya)); 
$tanggalsuratsebelumnya = date("d", strtotime($tanggalsebelumnya)); 
$tahunsuratsebelumnya = date("Y", strtotime($tanggalsebelumnya)); 
$tahunsebelumnya = date("Y", strtotime($tanggalsebelumnya));
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
<tr><td>Tanggal Penutupan Kas ......</td>	 <td>:</td> <td> <?php echo $tanggalhuruf;?> <?php echo $bulannama;?> <?php echo $tahun;?></td></tr>
<tr><td>Nama Penutup Kas/Kuasa BUS</td>     <td>:</td>	<td>Asir Aryadi, SE</td></tr>
<tr><td>Tanggal Penutupan Kas yang lalu ......</td>     <td>:</td>	<td><?php echo $tanggalhurufsebelumnya;?> <?php echo $bulannamasebelumnya;?> <?php echo $tahunsebelumnya?></td></tr>
<tr><td>Jumlah Penerimaan ......</td>     <td>:</td>	<td><?='Rp'.number_format($harianregister['totalpenerimaanharian'],0,'.','.'); ?></td></tr>
<tr><td>Jumlah Pengeluaran ......</td>     <td>:</td>	<td><?='Rp'.number_format($harianregister['totalpengeluaranharian'],0,'.','.'); ?></td></tr>
<br>
<tr><td>Saldo Buku Kas ......</td>     <td>:</td>	<td><?='Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran'],0,'.','.'); ?></td></tr>
<tr><td>Saldo Kas ......</td>     <td>:</td>	<td><?='Rp'.number_format($saldobank['saldo'],0,'.','.'); ?></td></tr>
</table>
<table style="width:80%">
<br>
<tr><p>Kertas berharga dan bagian Kas yang diizinkan Ordonansi :</p></tr>
<tr><td width="5%">a. </td><td width="40%">SP2D ......</td>	 <td>Rp ....</td></tr>
<tr><td width="5%">b. </td><td width="40%">Wessel</td>    	<td>Rp ....</td></tr>
<tr><td width="5%">c. </td><td width="40%">Saldo bank Sumut AC 2511 ......</td>   	<td><?='Rp'.number_format($saldobank['saldo'],0,'.','.'); ?></td></tr>
<tr><td width="5%">d. </td><td width="40%">M e t e r a i ......</td>     	<td>Rp ....</td></tr>
<tr><td width="5%">e. </td><td width="40%">Dan Lain-lain ......</td>     	<td>Rp ....</td></tr>
<tr><td width="5%"></td><td width="40%">&nbsp J u m l a h ......</td>      <td><?='Rp'.number_format($saldobank['saldo'],0,'.','.'); ?></td></tr>
<tr><td width="5%"></td><td width="40%">&nbsp Selisih ......</td>      <td><?= 'Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']-$saldobank['saldo'],0,'.','.');?></td></tr>
</table>

<table width="100%">
<tr><p><u>Penjelasan Perbedaan :</u></p></tr>
<tr><p>Potongan PFK s/d Hari ini :</p></tr>
<tr><p><td width="10%"></td><td width="40%">- Potongan Gaji</td> <td>Rp ....</td></p><tr>
<tr><p><td width="10%"></td><td width="40%"> - Potongan PPN & PPh</td> <td><u>Rp ....</u></td></p></tr>
<tr><p><td width="10%"></td><td width="40%"> - Jumlah</td><td><u>Rp ....</u></td></p></tr>
</table>

<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
    <td width="10%"></td>
    <td width="30%">DISETUJUI</td>
    <td width="30%">Padangsidimpuan, <?php echo $tanggalhuruf;?> <?php echo $bulannama;?> <?php echo $tahun;?></td>
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