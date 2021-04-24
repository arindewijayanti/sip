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
<table align="center" width="100%">
<tr>
<td>
<img src="<?php echo base_url('assets2/logopadsim.jpg')?>" width="100px">
<td>
<td>
<h2 class="jarak-lh" >PEMERINTAH KOTA PADANGSIDIMPUAN</h2>
<h2 class="jarak-lh" >BENDAHARA UMUM DAERAH</h2>
<h2 class="jarak-lh" >TAHUN ANGGARAN <?php echo date('Y') ?></h2>
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

<body>
<p class="jarak-lh" align="center"><b>BUKU KAS UMUM</b></p>
<h4 class="jarak-lh"  align="center">Periode :  <?php echo date("d/m/Y", strtotime($tanggalmulai)); echo " s.d "; echo date("d/m/Y", strtotime($tanggalselesai));?></b></p></h4>

<br><br>
<table border="1" align="center" width="100%">
                    <tr>
                        <th rowspan="2">No</th>       
                        <th rowspan="2">Tanggal</th> 
                        <th rowspan="2">No. Bukti</th> 
                        <th rowspan="2">Uraian</th> 
                        <th rowspan="2">Penerimaan</th> 
                        <th rowspan="2">Pengeluaran</th>
                        <th rowspan="2">Saldo</th> 
                    </tr>
                  
                </thead>
                <tbody>
               

                    <?php
                    $no = 1 ;
                    $saldo = 0;
                    foreach ($hasilbbp as $itembbp)
                    {
                        $saldo += $itembbp->kredit-$itembbp->debet;
                    ?>
                    <tr>
                        <td align="center"><?= $no;?></td>
                        <td><?= date("d/m/Y", strtotime($itembbp->tanggal));?></td>
                        <td></td>
                        <td><?= $itembbp->uraian;?></td>
                        <td align="center"><?='Rp '.number_format($itembbp->kredit,2,',','.'); ?></td>
                        <td align="center"><?='Rp '.number_format($itembbp->debet,2,',','.'); ?></td>                     
                        <td align="center"><?='Rp '.number_format($saldo,2,',','.'); ?></td> 
                    </tr>
                    <?php
                            $no++;
                    }
                    ?>

<?php
                    foreach ($hasilbpp as $itembpp)
                    {
                        $saldo += $itembpp->penerimaan-$itembpp->pengeluaran;
                    ?>
                    <tr>
                        <td align="center"><?= $no;?></td>
                        <td><?= date("d/m/Y", strtotime($itembpp->tanggal));?></td>
                        <td><?= $itembpp->no_sp2d;?></td>
                        <td><?= $itembpp->uraian;?></td>
                        <td align="center"><?='Rp '.number_format($itembpp->penerimaan,2,',','.'); ?></td>
                        <td align="center"><?='Rp '.number_format($itembpp->pengeluaran,2,',','.'); ?></td>                     
                        <td align="center"><?='Rp '.number_format($saldo,2,',','.'); ?></td> 
                    </tr>
                    <?php
                            $no++;
                    }
                    ?>
                     <?php
                    foreach ($hasil as $item)
                    {
                        $saldo += $item->penerimaan-$item->pengeluaran;
                    ?>
                    <tr>
                        <td align="center"><?= $no;?></td>
                        <td><?= date("d/m/Y", strtotime($item->tanggal));?></td>
                        <td><?= $item->no_sp2d;?></td>
                        <td><?= $item->uraian;?></td>
                        <td align="center"><?='Rp '.number_format($item->penerimaan,2,',','.'); ?></td>
                        <td align="center"><?='Rp '.number_format($item->pengeluaran,2,',','.'); ?></td>                     
                        <td align="center"><?='Rp '.number_format($saldo,2,',','.'); ?></td> 
                    </tr>
                    <?php
                            $no++;
                    }
                    ?>
                   
                </tbody>
    
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
    <td width="30%"><?= $hasilSK1->nama ?></td>
    <td width="30%"><?= $hasilSK2->nama ?></td>
</tr>

<tr>
<td width="10%"></td>
    <td width="30%">NIP. <?= $hasilSK1->nip ?>  </td>
    <td width="30%">NIP. <?= $hasilSK2->nip ?></td>
</tr>

</table>
</footer>

</html>









   
                    