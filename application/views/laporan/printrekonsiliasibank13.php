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
$tanggal2 = $tanggal;
$tgl2 = date("d", strtotime($tanggal2));
$bulanhuruf2 = date("m", strtotime($tanggal2)); 
$bulannama_indonesia2 = array(
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
$bulannama2 = $bulannama_indonesia2[$bulanhuruf2];
$tahun2 = date("Y", strtotime($tanggal2)); 
?>
<table align="center" width="100%">
<tr>
<td>
<h2 class="jarak-lh"  align="center">PEMERINTAH KOTA PADANGSIDIMPUAN</h2>
<h2 class="jarak-lh" align="center">REKONSILIASI BANK</h2>
<h3 class="jarak-lh"  align="center">PERIODE : <?= $tgl2 ?> <?= $bulannama2 ?> <?= $tahun2 ?></h3>
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


<br>
<table width ="100%" align="center">
<tr><p>
<td width ="45%">1. Saldo Kas Umum Daerah menurut Buku</td>
<td width ="20%"></td>
<td width ="25%" align="right"><b><?='Rp '.number_format($semuah['totalpenerimaan']-$semuah['totalpengeluaran'],2,',','.'); ?></b></td>
</p></tr>

<tr><p>
<td width ="45%">2. Saldo Kas Umum menurut Bank</td>
<td width ="20%"></td>
<td width ="25%" align="right"><b><?='Rp '.number_format($saldobank['saldo'],2,',','.'); ?></b></td>
</p></tr>

<tr><p>
<td width ="45%"></td>
<td width ="20%"></td>
<td width ="25%" align="right"><hr  color="black" size="2px"/></td>
</p></tr>


<tr><p>
<td width ="45%">&nbsp &nbsp  <b>Selisih</b></td>
<td width ="20%"></td>
<td width ="25%" align="right"><?= 'Rp '.number_format(($semuah['totalpenerimaan']-$semuah['totalpengeluaran'])-$saldobank['saldo'],2,',','.');?></td>
</p></tr>

<tr height="15"></tr>
<tr><p><td><b>&nbsp &nbsp Keterangan Selisih</b></td>
<tr><p><td>A. Penerimaan yang telah dicatat oleh buku,</td>
<tr><p><td> &nbsp &nbsp belum dicatat oleh Bank</td>
                    <?php
                    $no = 1 ;
                    $totala = 0;
                    foreach ($uraiana as $item)
                    {
                        $totala += $item->nominal;
                    ?>
                    <tr><p>
                        <td width ="45%">&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td width ="20%" align="right"><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>
                        <td width ="25%"></td>                  
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td width ="45%"></td>
                        <td width ="20%" align="right"><u><?='Rp '.number_format($totala,2,',','.'); ?></u></td>
                        <td width ="25%" align="right"><b><u><?= 'Rp '.number_format(($semuah['totalpenerimaan']-$semuah['totalpengeluaran'])-$saldobank['saldo']-$totala,2,',','.');?></u></b></td>               
                    </p></tr>

</table>

<table width ="100%" align="center">
<tr><p><td>B. Pengeluaran yang telah dicatat oleh buku,</td>
<tr><p><td> &nbsp &nbsp belum dicatat oleh Bank</td>
<?php
                    $no = 1 ;
                    $totalb = 0;
                    foreach ($uraianb as $item)
                    {
                        $totalb += $item->nominal;
                    ?>
                    <tr><p>
                        <td width ="45%">&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td width ="20%" align="right"><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>  
                        <td width ="25%"></td>                
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td width ="45%"></td> 
                        <td width ="20%" align="right"><u><?='Rp '.number_format($totalb,2,',','.'); ?></u></td>
                        <td width ="25%" align="right"><b><u><?= 'Rp '.number_format(($semuah['totalpenerimaan']-$semuah['totalpengeluaran'])-$saldobank['saldo']-$totala-$totalb,2,',','.');?></u></b></td>               
                    </p></tr></table>
<table width ="100%" align="center">
<tr><p><td>C. Penerimaan yang telah dicatat oleh Bank,</td>
<tr><p><td> &nbsp &nbsp belum dicatat oleh Buku</td>
<?php
                    $no = 1 ;
                    $totalc = 0;
                    foreach ($uraianc as $item)
                    {
                        $totalc += $item->nominal;
                    ?>
                    <tr><p>
                        <td width ="45%">&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td width ="20%" align="right"><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>
                        <td width ="25%"></td>                  
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td width ="45%"></td> 
                        <td width ="20%" align="right"><u><?='Rp '.number_format($totalc,2,',','.'); ?></u></td>
                        <td width ="25%" align="right"><b><u><?= 'Rp '.number_format(($semuah['totalpenerimaan']-$semuah['totalpengeluaran'])-$saldobank['saldo']-$totala-$totalb+$totalc,2,',','.');?></u></b></td>               
                    </p></tr></table>
<table width ="100%" align="center">
<tr><p><td>D. Pengeluaran yang telah dicatat oleh Bank,</td>
<tr><p><td> &nbsp &nbsp belum dicatat oleh Buku</td>
<?php
                    $no = 1 ;
                    $totald = 0;
                    foreach ($uraiand as $item)
                    {
                        $totald+= $item->nominal;
                    ?>
                    <tr><p>
                        <td width ="45%" >&nbsp &nbsp &nbsp &nbsp &nbsp <?= $no;?>. <?= $item->uraian;?></td>
                        <td width ="20%" align="right"><?='Rp '.number_format($item->nominal,2,',','.'); ?></td>       
                        <td width ="25%"></td>           
                    </p></tr>
                    <?php
                            $no++;
                    }
                    ?>
                    <tr><p>
                        <td width ="45%"></td> 
                        <td width ="20%" align="right"><u><?='Rp '.number_format($totald,2,',','.'); ?></u></td>
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
<br><br><br><br><br><br><br>
<table align="center" style="width:100%">

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
    <td width="30%"><?= $hasilSK2->jabatan  ?></td>
</tr>

<tr>
<td width="5%"></td>
    <td width="30%">NIP. <?= $hasilSK1->nip ?> </td>
    <td width="30%">NIP. <?= $hasilSK2->nip ?></td>
</tr>

</table>
</footer>

</html>









   
                    