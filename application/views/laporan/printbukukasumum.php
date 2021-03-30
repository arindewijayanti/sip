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
<p class="jarak-lh" align="center"><b>Periode  <?= $bulan;?> <?= $tahun;?></b></p>

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
                    foreach ($hasil as $item)
                    {
                        $saldo += $item->penerimaan-$item->pengeluaran;
                    ?>
                    <tr>
                        <td align="center"><?= $no;?></td>
                        <td><?= $item->tanggal;?></td>
                        <td><?= $item->no_bukti;?></td>
                        <td><?= $item->uraian;?></td>
                        <td align="center"><?='Rp'.number_format($item->penerimaan,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($item->pengeluaran,0,'.','.'); ?></td>                     
                        <td align="center"><?='Rp'.number_format($saldo,0,'.','.'); ?></td> 
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
    <td>Disetujui oleh,</td>
    <td>Disiapkan oleh,</td>
</tr>
<tr>
    <td>Pengguna Anggaran</td>
    <td>Bendahara Pengeluaran</td>
</tr>
<tr height="75px"></tr>
<tr>
    <td>Sulaiman Lubis, S.E.</td>
    <td>Asir Aryadi, S.E.</td>
</tr>

<tr>
    <td>NIP. 196905011993031004  </td>
    <td>NIP. 197602072005021002 </td>
</tr>

</table>
</footer>

</html>









   
                    