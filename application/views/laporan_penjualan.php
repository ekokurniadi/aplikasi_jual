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
   $name_file ="Laporan_penjualan";
   $t1=formatTanggal($startDate);
   $t2=formatTanggal($endDate);
   header("Content-Disposition: attachment; filename=$name_file($t1-$t2).xls"); 
   ?>
        <h2>Laporan Penjualan Periode : <?=formatTanggal($startDate)?> s/d <?=formatTanggal($endDate)?></h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Kode Transaksi</th>
		<th>Tanggal Transaksi</th>
		<th>Kode Barang</th>
		<th>Nama Barang</th>
		<th>Pemilik Barang</th>
		<th>Nama Pemilik</th>
		<th>Satuan</th>
		<th>Harga Modal</th>
		<th>Harga Terjual</th>
		<th>Qty Terjual</th>
		<th>Keuntungan</th>
            </tr><?php
            $data = $this->db->query("SELECT a.nama_barang,a.pemilik,a.satuan,b.nama_pemilik_barang,
            c.* from barang a left join pemilik_barang b on a.pemilik=b.pemilik_barang 
            join detail_transaksi c on a.kode_barang=c.kode_barang where c.tanggal_transaksi between '$startDate' and '$endDate'")->result();
            $start =0;
            foreach ($data as $rows)
            {
                ?>  
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $rows->kode_transaksi ?></td>
		      <td><?php echo $rows->tanggal_transaksi ?></td>
		      <td><?php echo $rows->kode_barang ?></td>
		      <td><?php echo $rows->nama_barang ?></td>
		      <td><?php echo $rows->pemilik ?></td>
		      <td><?php echo $rows->nama_pemilik_barang ?></td>
		      <td><?php echo $rows->satuan ?></td>
		      <td><?php echo $rows->harga_modal ?></td>
		      <td><?php echo $rows->harga_jual ?></td>
		      <td><?php echo $rows->qty ?></td>
		      <td><?php echo $rows->laba ?></td>
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>