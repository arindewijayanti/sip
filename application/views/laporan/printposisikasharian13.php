<html>
<head>
<style>
@media print 
{
   @page 

   {
    size: 12.99in 8.27in;
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
$hari_indonesia = array('Monday'  => 'Senin',
'Tuesday'  => 'Selasa',
'Wednesday' => 'Rabu',
'Thursday' => 'Kamis',
'Friday' => 'Jumat',
'Saturday' => 'Sabtu',
'Sunday' => 'Minggu');
$hari = $hari_indonesia[$hari];


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
$tanggalsurat = date("d", strtotime($tanggal)); 
$tahun = date("Y", strtotime($tanggal));
?>
<table align="center" width="100%">
<tr>
<td>
<h2 class="jarak-lh" align="center" >LAPORAN POSISI KAS BUD</h2>
<td>
</tr>
<tr>
<td colspan=3>
</td>
</tr>
<table>
</head>

<body>
<p class="jarak-lh" align="center"><u><b></u></b></p>
<p class="jarak-lh" align="center"></p>

<table>
<tr><p><td width="50%">Hari/Tanggal</td><td>: <?= $hari;?> <?= $tanggalsurat;?> <?=$bulannama;?> <?=$tahun?></td></p></tr>
</table>



<br><br>
<table border="1" align="center" width="100%">
                    <tr>
                        <th rowspan="2">No</th>
                        <th colspan="3">Transaksi</th>        
                        <th rowspan="2">Uraian</th> 
                        <th rowspan="2">Penerimaan</th> 
                        <th rowspan="2">Pengeluaran</th> 
                    </tr>
                    <tr>
                        <th>SP2D</th>    
                        <th>STS</th>                        
                        <th>LAIN-LAIN</th>
                        
                    </tr> 
                </thead>
                
                
                    <?php
                    $no =1;
                    $totalpenerimaanbbp = 0;
                    $totalpengeluaranbbp = 0;
                    foreach ($hasilBBP as $item)
                    {
                        
                        $totalpenerimaanbbp += $item->kredit;
                        $totalpengeluaranbbp += $item->debet;
                    ?>
                    <tr>
                         <td align="center"><?=$no?></td><td></td><td></td><td></td>
                        <td><?= $item->uraian;?></td>
                        <td align="right"><?='Rp '.number_format($item->kredit,2,',','.'); ?></td>
                        <td align="right"><?='Rp '.number_format($item->debet,2,',','.'); ?></td>                     
                    </tr>
                    <?php
                    $no +=1;
                }
                    ?>

                    <?php
                     $totalpenerimaanbpp = 0;
                     $totalpengeluaranbpp = 0;
                    foreach ($hasilBPP as $item)
                    {
                        $totalpenerimaanbpp += $item->penerimaan;
                        $totalpengeluaranbpp += $item->pengeluaran;
                    ?>
                    <tr>
                        <td align="center"><?=$no?></td>
                        <td><?= $item->no_sp2d;?></td>
                        <td><?= $item->no_sts;?></td>
                        <td><?= $item->no_lainlain;?></td>
                        <td><?= $item->uraian;?></td>
                        <td align="right"><?='Rp '.number_format($item->penerimaan,2,',','.'); ?></td>
                        <td align="right"><?='Rp '.number_format($item->pengeluaran,2,',','.'); ?></td>                     
                    </tr>
                    <?php
                    $no +=1;
                }
                    ?>
                </tbody>
                <tr>
                    <td></td><td></td><td></td><td></td>
                        <td align="left" ><b>Jumlah</b></td> 
                        <td align="right"><b><?='Rp '.number_format($totalpenerimaanbbp+$totalpenerimaanbpp,2,',','.'); ?></b></td>
                        <td align="right"><b><?='Rp '.number_format($totalpengeluaranbbp+$totalpengeluaranbpp,2,',','.'); ?></b></td>
                </tr>   
                <?php if ($hasil>=1) {
                    $totalpenerimaan = 0;
                    $totalpengeluaran = 0;
                    foreach ($hasil as $item)
                    {
                        $totalpenerimaan += $item->penerimaan;
                        $totalpengeluaran += $item->pengeluaran;
                    ?>
                    <tr>
                    <td></td>
                        <td><?= $item->no_sp2d;?></td>
                        <td><?= $item->no_sts;?></td>
                        <td><?= $item->no_lainlain;?></td>
                        <td><?= $item->uraian;?></td>
                        <td align="right"><?='Rp '.number_format($item->penerimaan,2,',','.'); ?></td>
                        <td align="right"><?='Rp '.number_format($item->pengeluaran,2,',','.'); ?></td>                     
                    </tr>
                   
                    <?php
                    }
                }else{
                ?>
                <tr>
                        <td></td><td></td><td></td>
                        <td align="left" ><b>Pembayaran PPN & PPh</b></td> 
                        <td align="right"><?='Rp '.number_format(0,2,',','.'); ?></td>
                        <td align="right"><?='Rp '.number_format(0,2,',','.'); ?></td>
                </tr>   
                <?php
                }
                ?>

                <tr>
                    <td></td><td></td><td></td><td></td>
                        <td align="left" ><b>Jumlah</b></td> 
                        <td align="right"><b><?='Rp '.number_format($totalpenerimaan+$totalpenerimaanbbp+$totalpenerimaanbpp,2,',','.'); ?></b></td>
                        <td align="right"><b><?='Rp '.number_format($totalpengeluaran+$totalpengeluaranbbp+$totalpengeluaranbpp,2,',','.'); ?></b></td>
                </tr>   
                <tr>    
                        <td align="right" colspan="5">Perubahan Posisi Kas hari ini</td> 
                        <td align="right"><b><?='Rp '.number_format(0,2,',','.'); ?></b></td>
                        <td align="right"><b><?='Rp '.number_format(($totalpenerimaan+$totalpenerimaanbbp+$totalpenerimaanbpp)-($totalpengeluaran+$totalpengeluaranbbp+$totalpengeluaranbpp),2,',','.'); ?></b></td>
                </tr>
                <tr>
                        <td align="right" colspan="5">Posisi Kas (H-1)</td> 
                        <td colspan="1" align="right"><b><?='Rp '.number_format($hmin1['totalpenerimaan']-$hmin1['totalpengeluaran']+$hmin1bbp['totalpenerimaanbbp']-$hmin1bbp['totalpengeluaranbbp']+$hmin1bpp['totalpenerimaanbpp']-$hmin1bpp['totalpengeluaranbpp'],2,',','.'); ?></b></td>
                        <td colspan="1" align="right"><b><?='Rp '.number_format(0,2,',','.'); ?></b></td>
                </tr>
                <tr>
                        <td align="right" colspan="5">Posisi Kas (H)</td> 
                        <td colspan="1" align="right"><b><?='Rp '.number_format($h['totalpenerimaan']-$h['totalpengeluaran']+$hbpp['totalpenerimaanbpp']-$hbpp['totalpengeluaranbpp']+$hbbp['totalpenerimaanbbp']-$hbbp['totalpengeluaranbbp'],2,',','.'); ?></b></td>
                        
                        <td colspan="1" align="right"><b><?='Rp '.number_format(0,2,',','.'); ?></b></td>
                </tr>
                
                <tr>
                        <td align="right" colspan="5">Saldo Bank Tahun Lalu</td> 
                        <td colspan="1" align="right"><b><?='Rp '.number_format($saldobanktahunlalu['saldobanktahunlalu'],2,',','.'); ?></b></td>
                        
                        <td colspan="1" align="right"><b><?='Rp '.number_format(0,2,',','.'); ?></b></td>
                </tr>
                
                <tr>
                        <td align="right" colspan="5">Saldo s/d hari</td> 
                        <td colspan="1" align="right"><b><?='Rp '.number_format(($semuah['totalpenerimaan']-$semuah['totalpengeluaran']+$semuahbpp['totalpenerimaanbpp']-$semuahbpp['totalpengeluaranbpp']+$semuahbbp['totalpenerimaanbbp']-$semuahbbp['totalpengeluaranbbp']),2,',','.'); ?></b></td>
                        
                        <td colspan="1" align="right"><b><?='Rp '.number_format(0,2,',','.'); ?></b></td>
                </tr>
    
            </table>

<br>
<table width="50%">
Rekapitulasi Posisi Kas di BUD

<tr>
    <td width="35%">Saldo di Bank AC 2511</td>
    <td width="15%" align="right"><u><?='Rp '.number_format($saldobankhariini['saldobankhariini'],2,',','.'); ?></u></td>   
</tr>

<tr>
    <td width="35%">Selisih</td>
    <td width="15%" align="right"><u><b><?='Rp '.number_format((($saldobanktahunlalu['saldobanktahunlalu'])+($h['totalpenerimaan']-$h['totalpengeluaran']+$hbpp['totalpenerimaanbpp']-$hbpp['totalpengeluaranbpp']+$hbbp['totalpenerimaanbbp']-$hbbp['totalpengeluaranbbp']))-$saldobankhariini['saldobankhariini'],2,',','.'); ?></b></u></td>   
</tr>

</table>
<br>
<table  width="50%">
<tr>
    <td width="35%">Potongan PFK s/d Hari ini :</td>
    <td width="15%" align="right"></td>   
</tr>

<tr>
    <td width="35%">Potongan Gaji</td>
    <td width="15%" align="right"><?='Rp '.number_format(0,2,',','.'); ?></td>
</tr>

<tr>
    <td width="35%">Potongan PPN dan PPh</td>
    <td width="15%" align="right"><?='Rp '.number_format(0,2,',','.'); ?></td>
</tr>

                    <?php
                    $totala = 0;
                    foreach ($uraiana as $item)
                    {
                        $totala += $item->nominal;
                    ?>
                    <tr><p>
                        <td width ="35%"><?= $item->uraian;?></td>
                        <td width ="15%" align="right"><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>                
                    </p></tr>
                    <?php
                    }
                    ?>

                    <?php
                    $totalb = 0;
                    foreach ($uraianb as $item)
                    {
                        $totalb += $item->nominal;
                    ?>
                    <tr><p>
                        <td width ="35%"><?= $item->uraian;?></td>
                        <td width ="15%" align="right"><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>                
                    </p></tr>
                    <?php
                    }
                    ?>

                    <?php
                    $totalc = 0;
                    foreach ($uraianc as $item)
                    {
                        $totalc += $item->nominal;
                    ?>
                    <tr><p>
                        <td width ="35%"><?= $item->uraian;?></td>
                        <td width ="15%" align="right"><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>                
                    </p></tr>
                    <?php
                    }
                    ?>

                    <?php
                    $totald = 0;
                    foreach ($uraiand as $item)
                    {
                        $totald += $item->nominal;
                    ?>
                    <tr><p>
                        <td width ="35%"><?= $item->uraian;?></td>
                        <td width ="15%" align="right"><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>                
                    </p></tr>
                    <?php
                    }
                    ?>

<tr>
    <td width="35%"></td>
    <td width="15%" align="right"><b><u><?='Rp '.number_format(($totalc+$totald)-($totala+$totalb),2,',','.'); ?></u></b></td>  
</tr>
</table>

</body>

<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
<td width="5%"></td>
    <td width="30%"></td>
    <td width="30%">Padangsidimpuan, <?= $tanggalsurat;?> <?=$bulannama;?> <?=$tahun?></td>
</tr>

<tr>
<td width="5%"></td>
    <td width="30%">PPKD SELAKU BUD</td>
    <td width="30%">KUASA BENDAHARA UMUM DAERAH</td>
</tr>
<tr height="75px"></tr>
<tr>
<td width="5%"></td>
    <td width="30%"><?= $hasilSK1->nama ?></td>
    <td width="30%"><?= $hasilSK2->nama ?></td>
</tr>

<tr>
<td width="5%"></td>
    <td width="30%"><?= $hasilSK1->jabatan ?></td>
    <td width="30%"><?= $hasilSK2->jabatan ?></td>
</tr>

<tr>
<td width="5%"></td>
    <td width="30%">NIP. <?= $hasilSK1->nip ?> </td>
    <td width="30%">NIP. <?= $hasilSK2->nip ?></td>
</tr>


</table>
</footer>

</html>









   
                    