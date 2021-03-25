
 <div class="main-content">
<section class="section">
  <div class="section-header">
    <h1> Transaksi </h1>
    <div class="section-header-breadcrumb">
      <div class="breadcrumb-item active"><a href="<?php echo base_url(); ?>dashboard"><i class="fa fa-dashboard"></i> Home</a></div>
      <div class="breadcrumb-item"><a href="#"> Transaksi </a></div>
    </div>
  </div>

          <div class="section-body">
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                  
                    <!-- 0 -->
                    <div class="col-md-4">
                      <?php echo anchor(site_url('transaksi/create'),'<i class="fa fa-plus"></i> Add New', 'class="btn btn-icon icon-left btn-primary"'); ?>
                    </div>

                  <div class="col-md-4 text-center">
                      <div style="margin-top: 8px" id="message">
                       <h5> <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?></h5>
                      </div>
                  </div>

                  <div class="col-md-1 text-right">
                  </div>

                  <div class="col-md-3 text-right">
                    
                  </div>

                  </div>
                  <div class="row">
                      <div class="col-md-4">
                          
                      </div>
                      <div class="col-md-3">
                      <form action="<?=base_url('transaksi/index')?>">
                      Tanggal Awal
                          <input type="date" name="tanggal_awal" id="tanggal_awal" class="form-control" value="<?=$tanggal1?>">
                      </div>
                      <div class="col-md-3">
                      Tanggal Akhir
                          <input type="date" name="tanggal_akhir" id="tanggal_akhir" class="form-control" value="<?=$tanggal2?>">
                      </div>
                      <div class="col-md-2">
                      <br>
                            <?php 
                              if($tanggal1 <> '' or $tanggal2 <> ''){ ?>
                                     <a href="<?php echo site_url('transaksi'); ?>" class="btn btn-warning"><span class="fa fa-close"> </span> Reset</a>
                            <?php } ?>
                              
                            
                            <button class="btn btn-flat btn-primary"><span class="fa fa-search"></span></button>
                      </div>
                      </form>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-bordered table-md" id="table-1">
                      <thead>
                      <tr>
                          <th>No</th>
		<th>Kode Transaksi</th>
		<th>Tanggal Transaksi</th>
		<th>Barang Terjual</th>
		<th>Action</th>
                    </tr>
                    </thead><?php
                    foreach ($transaksi_data as $transaksi)
                    {
                        $detailBarang = $this->db->query("SELECT a.*, b.nama_barang,b.pemilik from detail_transaksi a join barang b on a.kode_barang=b.kode_barang where a.kode_transaksi='$transaksi->kode_transaksi'")->result();
                        ?>
                          <tbody>
                          <tr>
			<td width="80px"><?php echo ++$start ?></td>
			<td><?php echo $transaksi->kode_transaksi ?></td>
			<td><?php echo formatTanggal($transaksi->tanggal_transaksi) ?></td>
			<td>
        <?php
          foreach($detailBarang as $rows){
            $pemilik="";
            if($rows->pemilik==""){
              $pemilik="";
            }else{
              $pemilik ="(".$rows->pemilik.")";
            }
            echo $rows->nama_barang.$pemilik."<br>";
          }
        ?>
      </td>
			<td style="text-align:center" width="200px">
				<?php 
				echo anchor(site_url('transaksi/read/'.$transaksi->id),'<i class="fa fa-eye"></i>',array('title'=>'detail','class'=>'btn btn-icon icon-left btn-light')); 
				echo '  '; 
				echo anchor(site_url('transaksi/update/'.$transaksi->id),'<i class="fa fa-pencil-square-o"></i>',array('title'=>'edit','class'=>'btn btn-icon icon-left btn-warning')); 
				echo '  '; 
				echo anchor(site_url('transaksi/delete/'.$transaksi->id),'<i class="fa fa-trash-o"></i>','title="delete" class="btn btn-icon icon-left btn-danger" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
				?>
			</td>
		</tr></tbody>
                          <?php
                      }
                      ?>
                    
                    </table>
                    </div>
                  </div>
                  <div class="card-footer text-right">
                  <?php echo $pagination ?>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <div class="row">
        <div class="col-md-6">
            <a href="#" class="btn btn-primary">Total Data : <?php echo $total_rows ?></a>
            
	    </div>
       
    </div>
      </div>
      