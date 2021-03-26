<!doctype html>
<html>
    <head>
        <title>Laporan Penjualan</title>
        <style>
            .word-table {
                border:1px solid black !important; 
                border-collapse: collapse !important;
                width: 100%;
            }
            .word-table tr th, .word-table tr td{
                border:1px solid black !important; 
                padding: 5px 10px;
                text-align:center;
            }
        </style>
    </head>
    <body>
    <?php
   
   header("Content-type: application/vnd-ms-excel");
   $tanggal=date('Y-m-d').".xls";
   $name_file ="template_barang";
 
   header("Content-Disposition: attachment; filename=$name_file.xls"); 
   ?>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
                <th>Nama Barang</th>
                <th>Satuan</th>
                <th>Pemilik</th>
                <th>Harga Modal</th>
            </tr>     
            <tr>
		      <td>1</td>
		      <td>Miyako</td>
		      <td>Pcs</td>
		      <td>A</td>
		      <td>50000</td>
            </tr>
        </table>
    </body>
</html>