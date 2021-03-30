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
<p> Periode : <?php echo date("d/m/Y", strtotime($tanggal));?></p> 
<td>
<td>
<h2 class="jarak-lh"  align="left">PEMERINTAH KOTA PADANGSIDIMPUAN</h2>
<h2 class="jarak-lh" align="left">REKONSILIASI BANK</h2>
<h3 class="jarak-lh"  align="lft">Tahun Anggaran <?php echo date('Y') ?></h3>
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
<tr><p><td><b>1. Saldo Kas Umum Daerah menurut Buku</b></td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td> <td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td> <td><td><td> <td><td><b><?='Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran'],0,'.','.'); ?></b></td></p></tr>
<tr><p><td><b>2. Saldo Kas Umum menurut Bank</b></td>	</td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td> <td><td><td><td><td><td><td><td><td><td><td><td><td><td> <td><td><td><td><td><td><td><td><td><td><td><td><td><td><td> <td><td><u><b><?='Rp'.number_format($saldobank['saldo'],0,'.','.'); ?></b></u></td></p></tr>
<tr><p><td><i> &nbsp &nbsp  Selisih</td></i><td><td><td> <td><td><td><td> <td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td> <td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><?= 'Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']-$saldobank['saldo'],0,'.','.');?></td></p></tr>
</table>
<br>
<table>
<tr><p><td><b> &nbsp &nbsp Keterangan Selisih</b></td>
<tr><p><td><b>A. Penerimaan yang telah dicatat oleh buku,</b></td>
<tr><p><td><b> &nbsp &nbsp belum dicatat oleh Bank</b></td>
                    <?php
                    $no = 1 ;
                    $totala = 0;
                    foreach ($uraiana as $item)
                    {
                        $totala += $item->nominal;
                    ?>
                    <tr><p>
                        <td>&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td colspan ="30"></td>
                        <td><?='Rp'.number_format($item->nominal,0,'.','.'); ?></td>                  
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td>&nbsp &nbsp &nbsp &nbsp &nbsp </td>
                        <td colspan ="30"></td>
                        <td><u><?='Rp'.number_format($totala,0,'.','.'); ?></u></td>
                        <td colspan ="30"></td>
                        <td align="right"><b><?= 'Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']-$saldobank['saldo']-$totala,0,'.','.');?></b></td>               
                    </p></tr>

</table>

<table>
<tr><p><td><b>B. Pengeluaran yang telah dicatat oleh buku,</b></td>
<tr><p><td><b> &nbsp &nbsp belum dicatat oleh Bank</b></td>
<?php
                    $no = 1 ;
                    $totalb = 0;
                    foreach ($uraianb as $item)
                    {
                        $totalb += $item->nominal;
                    ?>
                    <tr><p>
                        <td>&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td colspan ="30"></td>
                        <td><?='Rp'.number_format($item->nominal,0,'.','.'); ?></td>                  
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td>&nbsp &nbsp &nbsp &nbsp &nbsp </td>
                        <td colspan ="30"></td>
                        <td><u><?='Rp'.number_format($totalb,0,'.','.'); ?></u></td>
                        <td colspan ="30"></td>
                        <td align="right"><b><?= 'Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']-$saldobank['saldo']-$totala-$totalb,0,'.','.');?></b></td>               
                    </p></tr></table>
<table>
<tr><p><td><b>C. Penerimaan yang telah dicatat oleh Bank,</b></td>
<tr><p><td><b> &nbsp &nbsp belum dicatat oleh Buku</b></td>
<?php
                    $no = 1 ;
                    $totalc = 0;
                    foreach ($uraianc as $item)
                    {
                        $totalc += $item->nominal;
                    ?>
                    <tr><p>
                        <td>&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td colspan ="30"></td>
                        <td><?='Rp'.number_format($item->nominal,0,'.','.'); ?></td>                  
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td>&nbsp &nbsp &nbsp &nbsp &nbsp </td>
                        <td colspan ="30"></td>
                        <td><u><?='Rp'.number_format($totalc,0,'.','.'); ?></u></td>
                        <td colspan ="30"></td>
                        <td align="right"><b><?= 'Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']-$saldobank['saldo']-$totala-$totalb+$totalc,0,'.','.');?></b></td>               
                    </p></tr></table>
<table>
<tr><p><td><b>D. Pengeluaran yang telah dicatat oleh Bank,</b></td>
<tr><p><td><b> &nbsp &nbsp belum dicatat oleh Buku</b></td>
<?php
                    $no = 1 ;
                    $totald = 0;
                    foreach ($uraiand as $item)
                    {
                        $totald+= $item->nominal;
                    ?>
                    <tr><p>
                        <td>&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td colspan ="30"></td>
                        <td><?='Rp'.number_format($item->nominal,0,'.','.'); ?></td>                  
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td>&nbsp &nbsp &nbsp &nbsp &nbsp </td>
                        <td colspan ="30"></td>
                        <td><u><?='Rp'.number_format($totald,0,'.','.'); ?></u></td>
                        <td colspan ="30"></td>
                        <td align="right"><b><?= 'Rp'.number_format($h['totalpenerimaan']-$h['totalpengeluaran']-$saldobank['saldo']-$totala-$totalb+$totalc+$totald,0,'.','.');?></b></td>               
                    </p></tr></table>

                  
            
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









   
                    