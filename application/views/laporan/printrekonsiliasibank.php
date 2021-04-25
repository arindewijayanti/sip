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


<br>
<table width ="100%" align="center">
<tr><p>
<td width ="45%" align="left"><b>1. Saldo Kas Umum Daerah menurut Buku</b></td>
<td width ="20%"></td>
<td width ="25%" align="right"><b><?='Rp '.number_format($semuah['totalpenerimaan']-$semuah['totalpengeluaran'],2,',','.'); ?></b></td>
</p></tr>

<tr><p>
<td width ="45%"><b>2. Saldo Kas Umum menurut Bank</b></td>
<td width ="20%"></td>
<td width ="25%" align="right"><b><?='Rp '.number_format($saldobank['saldo'],2,',','.'); ?></b></td>
</p></tr>

<tr><p>
<td width ="45%"></td>
<td width ="20%"></td>
<td width ="25%" align="right"><hr  color="black" size="2px"/></td>
</p></tr>
    
<tr><p>
<td width ="45%">&nbsp &nbsp  <i>Selisih</i></td>
<td width ="20%"></td>
<td width ="25%" align="right"><?= 'Rp '.number_format(($semuah['totalpenerimaan']-$semuah['totalpengeluaran'])-$saldobank['saldo'],2,',','.');?></td>
</p></tr>

<tr height="15"></tr>
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
                        <td width ="45%">&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td width ="20%" align="right"><?='Rp '.number_format($item->nominal,2,',','.');?></td>
                        <td width ="25%"></td>                  
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td width ="45%"></td>
                        <td width ="20%" align="right"><u><?='Rp '.number_format($totala,2,',','.');?></u></td>
                        <td width ="25%" align="right"><b><u><?= 'Rp '.number_format($totala,2,',','.');?></u></b></td>               
                    </p></tr>

</table>

<table width ="100%" align="center">
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
                        <td width ="45%">&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td width ="20%" align="right"><?='Rp '.number_format($item->nominal,2,',','.');?></td>  
                        <td width ="25%"></td>                
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td width ="45%"></td> 
                        <td width ="20%" align="right"><u><?='Rp '.number_format($totalb,2,',','.');?></u></td>
                        <td width ="25%" align="right"><b><u><?= 'Rp '.number_format($totalb,2,',','.');?></u></b></td>               
                    </p></tr></table>
<table width ="100%" align="center">
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
                        <td width ="45%">&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td width ="20%" align="right"><?='Rp '.number_format($item->nominal,2,',','.');?></td>
                        <td width ="25%"></td>                  
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td width ="45%"></td> 
                        <td width ="20%" align="right"><u><?='Rp '.number_format($totalc,2,',','.');?></u></td>
                        <td width ="25%" align="right"><b><u><?= 'Rp '.number_format($totalc,2,',','.');?></u></td>               
                    </p></tr></table>
<table width ="100%" align="center">
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
                        <td width ="45%" >&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td width ="20%" align="right"><?='Rp '.number_format($item->nominal,2,',','.');?></td>       
                        <td width ="25%"></td>           
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td width ="45%"></td> 
                        <td width ="20%" align="right"><u><?='Rp '.number_format($totald,2,',','.');?></u></td>
                        <td width ="25%" align="right"><b><u><?= 'Rp '.number_format($totald,2,',','.');?></u></b></td>               
                    </p></tr></table>

                    <table width ="100%" align="center">

<tr><p><td></td>
<tr><p><td>   </td>  
                    <tr><p>
                        <td width ="45%"><b>Jumlah.....</b></td> 
                        <td width ="20%" align="right"></td>
                        <td width ="25%" align="right"><b><u><?= 'Rp '.number_format(($totalc+$totald)-($totala+$totalb),2,',','.');?></u></b></td>               
                    </p></tr></table>


                  
            
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
    <td width="30%"><?= $hasilSK1->jabatan ?></td>
    <td width="30%"><?= $hasilSK2->jabatan  ?></td>
</tr>

<tr>
<td width="5%"></td>
    <td width="30%"><?= $hasilSK1->nip ?> </td>
    <td width="30%"><?= $hasilSK2->nip ?></td>
</tr>

</table>
</footer>

</html>









   
                    