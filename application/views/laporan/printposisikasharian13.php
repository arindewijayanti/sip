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
<tr><p><td width="50%"></td><td> <?php echo $hari;?>,<?= date($tanggal) ?></td></p></tr>
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
                        <td><?= $item->no_bukti;?></td>
                        <td><?= $item->uraian;?></td>
                        <td align="center"><?='Rp'.number_format($item->penerimaan,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($item->pengeluaran,0,'.','.'); ?></td>                     
                    </tr>
                   
                    <?php
                    $no +=1;
                    }
                    ?>
                
                    <?php
                    $totalpenerimaanbbp = 0;
                    $totalpengeluaranbbp = 0;
                    foreach ($hasilBBP as $item)
                    {
                        
                        $totalpenerimaanbbp += $item->kredit;
                        $totalpengeluaranbbp += $item->debet;
                    ?>
                    <tr>
                         <td></td><td></td><td></td>
                        <td><?= $item->nama_buktipajak;?></td>
                        <td align="center"><?='Rp'.number_format($item->kredit,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($item->debet,0,'.','.'); ?></td>                     
                    </tr>
                    <?php
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
                        <td></td><td></td><td></td>
                        <td><?= $item->uraian;?></td>
                        <td align="center"><?='Rp'.number_format($item->penerimaan,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($item->pengeluaran,0,'.','.'); ?></td>                     
                    </tr>
                    <?php
                    }
                    ?>
                </tbody>
                <tr>
                        <td align="right" colspan="5">Jumlah</td> 
                        <td align="center"><?='Rp'.number_format($totalpenerimaan+$totalpenerimaanbbp+$totalpenerimaanbpp,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($totalpengeluaran+$totalpengeluaranbbp+$totalpengeluaranbpp,0,'.','.'); ?></td>
                </tr>   
                <tr>
                        <td align="right" colspan="5">Perubahan Posisi Kas hari ini</td> 
                        <td align="center"><?='Rp'.number_format($h['totalpenerimaan']+$hbbp['totalpenerimaanbbp']+$hbpp['totalpenerimaanbpp'],2,',','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($h['totalpengeluaran']+$hbbp['totalpengeluaranbbp']+$hbpp['totalpengeluaranbpp'],2,',','.'); ?></td>
                </tr>
                <tr>
                        <td align="right" colspan="5">Posisi Kas (H-1)</td> 
                        <td colspan="2" align="center"><?='Rp'.number_format($hmin1['totalpenerimaan']-$hmin1['totalpengeluaran']+$hmin1bbp['totalpenerimaanbbp']-$hmin1bbp['totalpengeluaranbbp']+$hmin1bpp['totalpenerimaanbpp']-$hmin1bpp['totalpengeluaranbpp'],2,',','.'); ?></td>
                </tr>
                <tr>
                        <td align="right" colspan="5">Posisi Kas (H)</td> 
                        <td colspan="2" align="center"><?='Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']+$hbpp['totalpenerimaanbpp']-$hbpp['totalpengeluaranbpp']+$hbbp['totalpenerimaanbbp']-$hbbp['totalpengeluaranbbp'],2,',','.'); ?></td>
                </tr>
    
            </table>

</body>

<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
    <td width="5%"></td>
    <td width="30%">Disetujui oleh,</td>
    <td width="30%">Disiapkan oleh,</td>
</tr>
<tr>
<td width="5%"></td>
    <td width="30%">Bendahara Umum Daerah</td>
    <td width="30%">Kuasa Bendahara Umum Daerah</td>
</tr>
<tr height="75px"></tr>
<tr>
<td width="5%"></td>
    <td width="30%"><?= $hasilSK1->nama ?></td>
    <td width="30%"><?= $hasilSK2->nama ?></td>
</tr>

<tr>
<td width="5%"></td>
    <td width="30%"><?= $hasilSK1->nip ?> </td>
    <td width="30%"><?= $hasilSK2->nip ?></td>
</tr>


</table>
</footer>

</html>









   
                    