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
h2{
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
<h2 class="jarak-lh"  align="center">PEMERINTAH KOTA PADANGSIDIMPUAN</h2>
<h2 class="jarak-lh" align="center"><?= $namaopd['nama_opd']; ?></h2>
<h3 class="jarak-lh" align="center">BUKU BESAR PEMBANTU</h3>
<h4 class="jarak-lh"  align="center">Periode :  <?php echo date("d/m/Y", strtotime($tanggalmulai)); echo " s.d "; echo date("d/m/Y", strtotime($tanggalselesai));?></b></p></h4>

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

<br><br>
<table border="1" align="center" width="100%">
                    <tr>
                        <th rowspan="2">No</th>       
                        <th rowspan="2">Tanggal</th> 
                        <th rowspan="2">No. Bukti</th> 
                        <th rowspan="2">Uraian</th> 
                        <th rowspan="2">Debet</th> 
                        <th rowspan="2">Kredit</th>
                        <th rowspan="2">Saldo</th> 
                    </tr>
                  
                </thead>
                <tbody>
                <?php
                    $no = 1 ;
                    $saldo = 0;
                    $totaldebet =0;
                    $totalkredit =0;
                    $totalsaldo =0;
                    foreach ($hasil as $item)
                    {
                        $saldo += $item->kredit-$item->debet;
                        $totaldebet += $item->debet;
                        $totalkredit += $item->kredit;
                    ?>
                    <tr>
                        <td align="center"><?= $no;?></td>
                        <td><?= date("d/m/Y", strtotime($item->tanggal));?></td>
                        <td><?= $item->kode_bbp;?></td>
                        <td><?= $item->uraian;?></td>
                        <td align="center"><?='Rp '.number_format($item->debet,2,',','.'); ?></td>
                        <td align="center"><?='Rp '.number_format($item->kredit,2,',','.'); ?></td>     
                        <td align="center"><?='Rp '.number_format($saldo,2,',','.'); ?></td>                    
                    </tr>
                    <?php
                            $no++;
                    }
                    ?>                   
                </tbody>
                <tr>
                        <td align="right" colspan="4">Jumlah</td> 
                        <td align="center"><?='Rp '.number_format($totaldebet,2,',','.'); ?></td>
                        <td align="center"><?='Rp '.number_format($totalkredit,2,',','.'); ?></td>                        
                        <td align="center"><?='Rp '.number_format($saldo,2,',','.'); ?></td>
                </tr>
    
            </table>



</html>









   
                    