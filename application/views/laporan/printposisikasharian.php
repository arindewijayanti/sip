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
<table align="center" width="100%">
<tr>
<td>
<img src="<?php echo base_url('assets2/logopadsim.jpg')?>" width="100px">
<td>
<td>
<h2 class="jarak-lh" >PEMERINTAH KOTA PADANGSIDIMPUAN</h2>
<h2 class="jarak-lh" >LAPORAN POSISI KAS HARIAN</h2>
<h2 class="jarak-lh" >Tahun Anggaran <?php echo date('Y') ?> </h2>
<td>
</tr>
<tr>
<td colspan=3>
<hr  color="black" size="2px"/>
</td>
</tr>
<table>
</head>

<body>
<p class="jarak-lh" align="center"><u><b></u></b></p>
<p class="jarak-lh" align="center"></p>

<table>
<tr><p><td>Hari</td>	<td>:</td> <td> <?php echo $hari;?></td></p></tr>
<tr><p><td>Tanggal</td>	    <td>:</td> <td><?= date($tanggal) ?></td></p></tr>
<tr><p><td>Periode</td>	    <td>:</td> <td><?php 
$tgl_pertama = date('01-m-Y', strtotime('first day of January'));
$tgl_terakhir = date('t-m-Y', strtotime('last day of December'));
echo $tgl_pertama; echo " s.d "; echo $tgl_terakhir;?></td></p></tr>
</table>



<br><br>
<table border="1" align="center" width="100%">
                    <tr>
                        <th rowspan="2">No</th>
                        
                        <th colspan="2">No. Bukti Transaksi</th>        
                        <th rowspan="2">Uraian</th> 
                        <th rowspan="2">Penerimaan</th> 
                        <th rowspan="2">Pengeluaran</th> 
                    </tr>
                    <tr>
                        <th>Jenis Transaksi</th>                        
                        <th>No Transaksi</th>
                        
                    </tr> 
                </thead>
                <?php
                    $no = 1 ;
                    $totalpenerimaan = 0;
                    $totalpengeluaran = 0;
                    foreach ($hasil as $item)
                    {
                        $totalpenerimaan += $item->penerimaan;
                        $totalpengeluaran += $item->pengeluaran;
                    ?>
                    <tr>
                        <td align="center"><?= $no;?></td>
                        <td><?= $item->jenis_bukti;?></td>
                        <td><?= $item->no_bukti;?></td>
                        <td><?= $item->uraian;?></td>
                        <td align="center"><?='Rp'.number_format($item->penerimaan,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($item->pengeluaran,0,'.','.'); ?></td>                     
                    </tr>
                    <?php
                            $no++;
                    }
                    ?>
                </tbody>
                <tr>
                        <td align="right" colspan="4">Jumlah</td> 
                        <td align="center"><?='Rp'.number_format($totalpenerimaan,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($totalpengeluaran,0,'.','.'); ?></td>
                </tr>
                <tr>
                        <td align="right" colspan="4">Perubahan Posisi Kas hari ini</td> 
                        <td align="center"><?='Rp'.number_format($totalpenerimaan,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($totalpengeluaran,0,'.','.'); ?></td>
                </tr>
                <tr>
                        <td align="right" colspan="4">Posisi Kas (H-1)</td> 
                        <td colspan="2" align="center"><?='Rp'.number_format($hmin1['totalpenerimaan']-$hmin1['totalpengeluaran'],0,'.','.'); ?></td>
                </tr>
                <tr>
                        <td align="right" colspan="4">Posisi Kas (H)</td> 
                        <td colspan="2" align="center"><?='Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran'],0,'.','.'); ?></td>
                </tr>
    
            </table>

</body>

<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
    <td width="10%"></td>
    <td width="30%">Disetujui oleh,</td>
    <td width="30%">Disiapkan oleh,</td>
</tr>
<tr>
<td width="10%"></td>
    <td width="30%">Bendahara Umum Daerah</td>
    <td width="30%">Kuasa Bendahara Umum Daerah</td>
</tr>
<tr height="75px"></tr>
<tr>
<td width="10%"></td>
    <td width="30%">Sulaiman Lubis, S.E.</td>
    <td width="30%">Asir Aryadi, S.E.</td>
</tr>

<tr>
<td width="10%"></td>
    <td width="30%">NIP. 196905011993031004  </td>
    <td width="30%">NIP. 197602072005021002</td>
</tr>

</table>
</footer>

</html>









   
                    