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
<p> Periode : <?php echo $tanggal;?></p> 
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
<tr><p><td> &nbsp &nbsp a. STS No... </td><td>Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp b. Bukti lain yang sah</td><td> Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp c. Dst </td><td> <u>Rp. ...............</u></td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><u> Rp. ...............</u></td></p></tr>
<tr><p><td>  </td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td>Rp. ...............</td></p></tr>
</table>
<table>
<tr><p><td><b>B. Pengeluaran yang telah dicatat oleh buku,</b></td>
<tr><p><td><b> &nbsp &nbsp belum dicatat oleh Bank</b></td>
<tr><p><td> &nbsp &nbsp a. SP2D No... </td><td>Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp b. Bukti lain yang sah</td><td> Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp c. Dst </td><td> <u>Rp. ...............</u></td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><u> Rp. ...............</u></td></p></tr>
<tr><p><td>  </td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td>Rp. ...............</td></p></tr>
</table>
<table>
<tr><p><td><b>C. Penerimaan yang telah dicatat oleh Bank,</b></td>
<tr><p><td><b> &nbsp &nbsp belum dicatat oleh Buku</b></td>
<tr><p><td> &nbsp &nbsp a. Nota Kredit No... </td><td>Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp b. Pendapatan Bunga</td><td> Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp c. Pendapatan Jasa Giro</td><td> Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp d. Bukti lain yang sah</td><td> Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp e. Dst </td><td> <u>Rp. ...............</u></td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><u> Rp. ...............</u></td></p></tr>
<tr><p><td>  </td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td>Rp. ...............</td></p></tr>
</table>
<table>
<tr><p><td><b>D. Pengeluaran yang telah dicatat oleh Bank,</b></td>
<tr><p><td><b> &nbsp &nbsp belum dicatat oleh Buku</b></td>
<tr><p><td> &nbsp &nbsp a. Nota Debit No... </td><td>Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp b. Biaya Administrasi Bank</td><td> Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp c. Bukti lain yang sah</td><td> Rp. ...............</td></p></tr>
<tr><p><td> &nbsp &nbsp d. Dst </td><td> <u>Rp. ...............</u></td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><u> Rp. ...............</u></td></p></tr>
<tr><p><td>  </td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td><td>Rp. ...............</td></p></tr>
</table>

                  
            
<footer>
<br><br><br>
<table align="center" style="width:100%">

<tr>
    <td>Disetujui oleh,</td>
    <td>Disiapkan oleh,</td>
</tr>
<tr>
    <td>Bendahara Umum Daerah</td>
    <td>Kuasa Bendahara Umum Daerah</td>
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









   
                    