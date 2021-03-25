
 <div class="main-content">
<section class="section">
  <div class="section-header">
    <h1> Detail Laba </h1>
    <div class="section-header-breadcrumb">
      <div class="breadcrumb-item active"><a href="<?php echo base_url(); ?>dashboard"><i class="fa fa-dashboard"></i> Home</a></div>
      <div class="breadcrumb-item"><a href="#"> Detail Laba </a></div>
    </div>
  </div>

  <div class="section-body">
  <div class="row">
      <div class="col-12 col-md-12 col-lg-12">
        <div class="card">
        <div class="card-header">
        <a href="<?php echo site_url('laba') ?>" class="btn btn-icon icon-left btn-danger"><i class="fa fa-arrow-left"></i> Back</a>
        </div>
        <form class="form-horizontal">
	   
              <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <table id="example1" class="table">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Kode Barang</th>
                                    <th>Nama Barang</th>
                                    <th>Pemilik</th>
                                    <th>Kode Transaksi</th>
                                    <th>Tanggal Transaksi</th>
                                    <th>Qty Terjual</th>
                                    <th>Harga Modal</th>
                                    <th>Harga Jual</th>
                                    <th>Keuntungan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; 
                                 $total=0;
                                 $period_array=array();
                                foreach($detail_transaksi as $rows){?>
                                <tr>
                                    <td><?=$no++?></td>
                                    <td><?=$rows->kode_barang?></td>
                                    <td><?=$rows->nama_barang?></td>
                                    <td><?=$rows->pemilik?></td>
                                    <td><?=$rows->kode_transaksi?></td>
                                    <td><?=formatTanggal($rows->tanggal_transaksi)?></td>
                                    <td><?=$rows->qty?></td>
                                    <td><?=number_format($rows->harga_modal,0,',','.')?></td>
                                    <td><?=number_format($rows->harga_jual,0,',','.')?></td>
                                    <td><?=number_format($rows->laba,0,',','.')?></td>
                                </tr>
                                <?php
                                $period_array[] = intval($rows->laba);
                             }?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th colspan="9" style='text-align:right;'>Total Keuntungan :</th>
                                    <th><?php echo number_format($total=array_sum($period_array),0,',','.')?></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
              </div>
	   
     
        <div class="card-footer text-left"> 
	  
	
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
</div>


