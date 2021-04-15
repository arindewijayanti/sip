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

$tanggalsebelumnya = $tanggallalu;

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

</head>

<body>
<p class="jarak-lh" align="center"><b>REGISTER PENUTUPAN KAS</b></p>
<br>
 
<table style="width:80%">
<tr><td>Tanggal Penutupan Kas ......</td>	 <td>:</td> <td> <?php echo $tanggalhuruf;?> <?php echo $bulannama;?> <?php echo $tahun;?></td></tr>
<tr><td>Nama Penutup Kas/Kuasa BUS</td>     <td>:</td>	<td><?= $hasilSK2->nama ?></td></tr>
<tr><td>Tanggal Penutupan Kas yang lalu ......</td>     <td>:</td>	<td><?php echo $tanggalhurufsebelumnya;?> <?php echo $bulannamasebelumnya;?> <?php echo $tahunsebelumnya?></td></tr>
<tr><td>Jumlah Penerimaan ......</td>     <td>:</td>	<td><?='Rp '.number_format($h['totalpenerimaan']+$hbpp['totalpenerimaanbpp']+$hbbp['totalpenerimaanbbp'],2,',','.'); ?></td></tr>
<tr><td>Jumlah Pengeluaran ......</td>     <td>:</td>	<td><?='Rp '.number_format($h['totalpengeluaran']+$hbbp['totalpengeluaranbbp']+$hbpp['totalpengeluaranbpp'],2,',','.'); ?></td></tr>
<tr><td></td>     <td></td>	<td><hr  color="black" size="2px"/></td></tr>
<br>
<tr><td>Saldo Buku Kas ......</td>     <td>:</td>	<td><?='Rp '.number_format(($semuah['totalpenerimaan']-$semuah['totalpengeluaran']+$semuahbpp['totalpenerimaanbpp']-$semuahbpp['totalpengeluaranbpp']+$semuahbbp['totalpenerimaanbbp']-$semuahbbp['totalpengeluaranbbp']),2,',','.'); ?></td></tr>
<tr><td>Saldo Kas ......</td>     <td>:</td>	<td><?='Rp '.number_format($saldobank['saldo'],2,',','.'); ?></td></tr>
</table>
<table style="width:100%">
<br>
<tr><p>Kertas berharga dan bagian Kas yang diizinkan Ordonansi :</p></tr>
<tr><td width="5%">a. </td><td width="60%">SP2D ......</td>	 <td>Rp ....</td></tr>
<tr><td width="5%">b. </td><td width="60%">Wessel</td>    	<td>Rp ....</td></tr>
<tr><td width="5%">c. </td><td width="60%">Saldo bank Sumut AC 2511 ......</td>   	<td><?='Rp '.number_format($saldobank['saldo'],2,',','.'); ?></td></tr>
<tr><td width="5%">d. </td><td width="60%">M e t e r a i ......</td>     	<td>Rp ....</td></tr>
<tr><td width="5%">e. </td><td width="60%">Dan Lain-lain ......</td>     	<td>Rp ....</td></tr>
<tr><td width="5%"></td><td width="60%">&nbsp J u m l a h ......</td>      <td><?='Rp '.number_format($saldobank['saldo'],2,',','.'); ?></td></tr>
<tr><td width="5%"></td><td width="60%">&nbsp Selisih ......</td>      <td><?= 'Rp '.number_format(($semuah['totalpenerimaan']-$semuah['totalpengeluaran']+$semuahbpp['totalpenerimaanbpp']-$semuahbpp['totalpengeluaranbpp']+$semuahbbp['totalpenerimaanbbp']-$semuahbbp['totalpengeluaranbbp'])-$saldobank['saldo'],2,',','.');?></td></tr>
</table>

<table width="50%">
<tr><p><u>Penjelasan Perbedaan :</u></p></tr>
<tr><td colspan="2">Potongan PFK s/d Hari ini</td></tr>
<tr><td width="5%">- </td><td width="45%">Potongan Gaji</td>	 <td>Rp    -</td></tr>
<tr><td width="5%">- </td><td width="45%">Potongan PPN dan PPh</td>	 <td>Rp    -</td></tr>


                    <?php
                    $total = 0;
                    foreach ($uraian as $item)
                    {
                        $total += $item->nominal;
                    ?>
                    <tr>
                    <td width="5%">-</td><td width="40%"><?= $item->uraian;?></td>	 <td><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>
                    </tr>
                    <?php
                    }
                    ?>
                    
<tr><td width="5%"></td><td width="45%"></td>	 <td><hr  color="black" size="2px"/></td></tr>
<tr><td width="5%"></td><td width="45%">Jumlah</td>	 <td><?='Rp '.number_format($total,2,',','.');?></td></tr>
<tr><td width="5%"></td><td width="45%"></td>	 <td><hr  color="black" size="2px"/></td></tr>





</table>

<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
    <td width="5%"></td>
    <td width="30%">DISETUJUI</td>
    <td width="30%">Padangsidimpuan, <?php echo $tanggalhuruf;?> <?php echo $bulannama;?> <?php echo $tahun;?></td>
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