<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script type="text/javascript">
function hitung()
        {

            var warna  =  $("#warna").val();
            var tanggal1  =  $("#tanggal1").val();
            var tanggal2  =  $("#tanggal2").val();
            $.ajax({
                type:"POST",
                url:"<?php echo base_url('laba/load_laba')?>",
                data:{
                  "warna" :warna,
                  "tanggal1":tanggal1,
                  "tanggal2":tanggal2
                },
                beforeSend:function(){
                  $('#list_ku').show();
                
                },
                success:function(hasilajax){
                  $('#loading').hide();
                  $('#list_ku').show();
                    $('#list_ku').html(hasilajax);
                }
            });
            
        }
        
</script>


 <div class="main-content">
<section class="section">
  <div class="section-header">
    <h1> Laba </h1>
    <div class="section-header-breadcrumb">
      <div class="breadcrumb-item active"><a href="<?php echo base_url(); ?>dashboard"><i class="fa fa-dashboard"></i> Home</a></div>
      <div class="breadcrumb-item"><a href="#"> Laba </a></div>
    </div>
  </div>

          <div class="section-body">
            <div class="row">
              <div class="col-12 col-md-12 col-lg-12">
                <div class="card">
                  <div class="card-header">
                  <div class="card-header">
                      <h4>Laba </h4>
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
                  <div class="container">
                  
                  <div class="row">
                      
                      <div class="col-md-3">
                      <form action="" method="post">
                            Berdasarkan Warna
                           <input type="color" class="form-control" name="warna" id="warna" value='#ffffff'>  
                      </div>
                      
                      <div class="col-md-3">
                            Periode Awal
                            <input type="date" class="form-control" name="tanggal1" id="tanggal1">
                      </div>
                      <div class="col-md-3">
                            Periode Akhir
                            <input type="date" class="form-control" name="tanggal2" id="tanggal2">
                      </div>
                      <div class="col-md-2">
                      <br>
                         
                          <a href="#" type="button" class="btn btn-primary btn-md btn-flat" onclick="hitung();"><i class="fa fa-search"></i> Search</a>
                      </div>
                      </form>
                  </div>
                  </div>
                  <div class="card-body">

                    <div class="table-responsive">
                      <div id="list_ku" class="table-responsive">
                        <div id="loading" style="position:relative;display:flex;justify-content:center;">Tidak Ada Data, silahkan search...</div>
                     
                    </div>
                  </div>
                  <div class="card-footer text-right">
                  <!-- <?php echo $pagination ?> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <div class="row">
        <div class="col-md-6">
            <!-- <a href="#" class="btn btn-primary">Total Data : <?php echo $total_rows ?></a> -->
            
	    </div>
       
    </div>
      </div>
      