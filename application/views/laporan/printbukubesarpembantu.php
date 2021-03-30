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
<h2 class="jarak-lh"  align="center">PEMERINTAH KOTA PADANGSIDIMPUAN</h2>
<h2 class="jarak-lh" align="center">BUKU BESAR PEMBANTU</h2>
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

<table>
<tr><p><td>Kode Rekening Buku Besar Pembantu</td>	<td>:</td> <td><?= $hasilatas['kode_rekening'];?></td></p></tr>
<tr><p><td>Nama Rekening Buku Besar Pembantu</td>	    <td>:</td> <td><?= $hasilatas['nama_rekening'];?></td></p></tr>
<tr><p><td>Pagu APBD</td>	    <td>:</td> <td><?= $pagu['pagu_apbd'];?></td></p></tr>
<tr><p><td>Pagu Perubahan APBD</td>	    <td>:</td> <td><?= $pagu['pagu_perubahan_apbd'];?></td></p></tr>
</table>
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
                        <td><?= $item->kode_buktipajak;?></td>
                        <td><?= $item->nama_buktipajak;?></td>
                        <td align="center"><?='Rp'.number_format($item->debet,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($item->kredit,0,'.','.'); ?></td>     
                        <td align="center"><?='Rp'.number_format($saldo,0,'.','.'); ?></td>                    
                    </tr>
                    <?php
                            $no++;
                    }
                    ?>                   
                </tbody>
                <tr>
                        <td align="right" colspan="4">Jumlah</td> 
                        <td align="center"><?='Rp'.number_format($totaldebet,0,'.','.'); ?></td>
                        <td align="center"><?='Rp'.number_format($totalkredit,0,'.','.'); ?></td>                        
                        <td align="center"><?='Rp'.number_format($saldo,0,'.','.'); ?></td>
                </tr>
    
            </table>

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









   
                    