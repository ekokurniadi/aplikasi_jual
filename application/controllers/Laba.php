<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Laba extends MY_Controller {

    // protected $access = array('Admin', 'Pimpinan','Finance');
    
    function __construct()
    {
        parent::__construct();
        $this->load->model('Barang_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'laba/index.dart?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'laba/index.dart?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'laba/index.dart';
            $config['first_url'] = base_url() . 'laba/index.dart';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Barang_model->total_rows($q);
        $barang = $this->Barang_model->get_limit_data($config['per_page'], $start, $q);

        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'barang_data' => $barang,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->load->view('header');
        $this->load->view('laba_list', $data);
        $this->load->view('footer');
    }

    public function reset(){
        
        $reset = $this->db->query("UPDATE barang set harga_terjual ='0', qty_terjual='0',laba='0'");
        if($reset){
            redirect('laba','refresh');
        }else{
            echo "<script>
            alert('Something went wrong')
            </script>";
        }

    }

    function load_laba(){
        $warna = $this->input->post('warna');
        $t1    = $this->input->post('tanggal1');
        $t2    = $this->input->post('tanggal2');
       
        echo "
            <table id='example1' class='table'>
            <thead>
            <tr>
                <th>No</th>
                <th>Kode Barang</th>
                <th>Nama Barang</th>
                <th>Pemilik Barang</th>
                <th>Nama Pemilik Barang</th>
                <th>Satuan Barang</th>
                <th>Harga Modal</th>
                <th>Qty Terjual</th>
                <th>Keuntungan</th>
                <th>Action</th>
          </tr>
          </thead>
          <tbody>";
        
        if($warna=="#ffffff" && $t1 != "" && $t2 != ""){
            $data = $this->db->query("SELECT a.id,a.kode_barang,a.nama_barang,a.pemilik,c.nama_pemilik_barang,a.satuan,c.warna,
            COALESCE(SUM(b.qty)) as qty,a.harga_modal,b.harga_jual,
            COALESCE(SUM(b.laba)) as lab from barang a join detail_transaksi b 
            on a.kode_barang=b.kode_barang left join pemilik_barang c on a.pemilik =c.pemilik_barang where b.tanggal_transaksi between '$t1' and '$t2' group by a.kode_barang")->result();
        }else if($t1 == "" && $t2 == "" && $warna=="#ffffff"){
            $data = $this->db->query("SELECT a.id,a.kode_barang,a.nama_barang,a.satuan,c.warna,c.nama_pemilik_barang,
            COALESCE(SUM(b.qty)) as qty,a.harga_modal,b.harga_jual,a.pemilik,
            COALESCE(SUM(b.laba)) as lab from barang a join detail_transaksi b 
            on a.kode_barang=b.kode_barang left join pemilik_barang c on a.pemilik=c.pemilik_barang group by a.kode_barang")->result();
        }else{
            $data = $this->db->query("SELECT a.id,a.kode_barang,a.nama_barang,a.satuan,c.warna,c.nama_pemilik_barang,
            COALESCE(SUM(b.qty)) as qty,a.harga_modal,b.harga_jual,
            COALESCE(SUM(b.laba)) as lab,a.pemilik from barang a join detail_transaksi b 
            on a.kode_barang=b.kode_barang left join pemilik_barang c on a.pemilik =c.pemilik_barang where c.warna='$warna' group by a.kode_barang")->result();
        }
        $no=1;
        foreach($data as $rows){
            echo "
                <tr style='background-color:$rows->warna;color:black;'>
                    <td>".$no."</td>
                    <td>".$rows->kode_barang."</td>
                    <td>".$rows->nama_barang."</td>
                    <td>".$rows->pemilik."</td>
                    <td>".$rows->nama_pemilik_barang."</td>
                    <td>".$rows->satuan."</td>
                    <td>".number_format($rows->harga_modal,0,',','.')."</td>
                    <td>".number_format($rows->qty,0,',','.')."</td>
                    <td>".number_format($rows->lab,0,',','.')."</td>
                    <td>".anchor(site_url('laba/read/'.$rows->id),'<i class="fa fa-eye"></i>',array('title'=>'detail','class'=>'btn btn-icon icon-left btn-flat btn-primary')). "</td>
                </tr>
            ";
            $no++;
        }
        echo"</tbody>
            </table>
        ";
        echo "
        <script type='text/javascript'>
    $(document).ready( function () {
        $('#example1').DataTable({
        'paging':true,
        'lengthChange': true,
        'searching': true,
        'ordering': true,
        'info': true,
        'autoWidth':false,
        'scrollX':true,
        'scrollY':true,
        'responsive':true,
        'lengthMenu': [[10, 25, 50,75,100, -1], [10, 25, 50,75,100, 'All']],
        'order': []
        });
        
      $('#example1').on( 'keyup', function () {
      table.search(this.value).draw();
    });
  });
</script>
        ";

    }

    public function read($id) 
    {
        $row = $this->Barang_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id' => $row->id,
		'kode_barang' => $row->kode_barang,
		'nama_barang' => $row->nama_barang,
		'satuan' => $row->satuan,
		'harga_modal' => $row->harga_modal,
		'harga_terjual' => $row->harga_terjual,
		'qty_terjual' => $row->qty_terjual,
        'detail_transaksi'=> $this->db->query("SELECT a.*,b.* from detail_transaksi a join barang b on a.kode_barang=b.kode_barang where a.kode_barang='$row->kode_barang'")->result()
	    );
            $this->load->view('header');
            $this->load->view('laba_read', $data);
            $this->load->view('footer');
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('laba'));
        }
    }

    public function ambil_data_barang()
    {
        $kode_barang = $_POST['kode_barang'];
        $data = $this->db->query("SELECT * FROM barang WHERE kode_barang='$kode_barang'")->result();
        foreach($data as $dd)
        {
            $data =array(
                'harga_modal'=>$dd->harga_modal    
            );
            
           echo json_encode($data);
        }
    }

    public function import_barang() {
        $this->load->view('header');
        $this->load->view('import_view');
        $this->load->view('footer');
    }


    public function import_barang_aksi(){
        date_default_timezone_set('Asia/Jakarta');
        $filename = $_FILES['filename']['name'];
        

            $this->load->library('upload');
            $nmfile = "home".time();
            $config['upload_path']   = './excel/';
            $config['overwrite']     = true;
            $config['allowed_types'] = 'xlsx';
            $config['file_name'] = $_FILES['filename']['name'];

            $this->upload->initialize($config);

            if($_FILES['filename']['name'])
            {
                if($this->upload->do_upload('filename'))
                {
                $gbr = $this->upload->data();
                include APPPATH.'third_party/PHPExcel/PHPExcel.php';
					
                $excelreader = new PHPExcel_Reader_Excel2007();
                $loadexcel = $excelreader->load('excel/'.$filename.''); 
                $sheet = $loadexcel->getActiveSheet()->toArray(null, true, true ,true);
                unset($sheet[1]);
        
                $no1=0;
                $urutan=0;  
                           
                foreach ($sheet as $rows) { 
                    $no1++;
                    $data = array(
                        "kode_barang"=>$this->kode(),
                        "nama_barang"=>strtoupper($rows['B']),
                        "satuan"=>strtoupper($rows['C']),
                        "harga_modal"=>$rows['D'],
                        "harga_terjual"=>0,
                        "qty_terjual"=>0,
                       
                    );

                    $this->db->insert('barang',$data);
                   
                }

                $this->session->set_flashdata('message', 'Create Record Success');
                redirect(site_url('barang'));
            }

        }
    }


    function kode()
    {
             $this->db->select('RIGHT(barang.kode_barang,3) as kode_barang', FALSE);
             $this->db->order_by('kode_barang','DESC');    
             $this->db->limit(1);    
             $query = $this->db->get('barang');  //cek dulu apakah ada sudah ada kode di tabel.    
             if($query->num_rows() <> 0){      
                  //cek kode jika telah tersedia    
                  $data = $query->row();      
                  $kode = intval($data->kode_barang) + 1; 
             }
             else{      
                  $kode = 1;  //cek jika kode belum terdapat pada table
             }  
                date_default_timezone_set("Asia/Jakarta");
                 $tgl=date("dYm");
                 $sessi=strtoupper($_SESSION['nama']); 
                 $angka_acak=rand(100,1000);
                 $batas = str_pad($kode, 3, "0", STR_PAD_LEFT);    
                 $kodetampil = "BRG-".$batas;  //format kode
                 return $kodetampil;  
   }

    public function create() 
    {
       
        $data = array(
            'button' => 'Create',
            'action' => site_url('barang/create_action'),
	    'id' => set_value('id'),
	    'kode_barang' =>$this->kode(),
	    'nama_barang' => set_value('nama_barang'),
	    'satuan' => set_value('satuan'),
	    'harga_modal' => set_value('harga_modal'),
	    'harga_terjual' => set_value('harga_terjual'),
	    'qty_terjual' => set_value('qty_terjual'),
	);

        $this->load->view('header');
        $this->load->view('barang_form', $data);
        $this->load->view('footer');
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'kode_barang' => $this->input->post('kode_barang',TRUE),
		'nama_barang' => $this->input->post('nama_barang',TRUE),
		'satuan' => $this->input->post('satuan',TRUE),
		'harga_modal' => str_replace(',','',$this->input->post('harga_modal',TRUE)),
		'harga_terjual' => 0,
		'qty_terjual' => 0,
        );
        
        // print_r($_POST);

            $this->Barang_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('barang'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Barang_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('barang/update_action'),
		'id' => set_value('id', $row->id),
		'kode_barang' => set_value('kode_barang', $row->kode_barang),
		'nama_barang' => set_value('nama_barang', $row->nama_barang),
		'satuan' => set_value('satuan', $row->satuan),
		'harga_modal' => set_value('harga_modal', $row->harga_modal),
		'harga_terjual' => set_value('harga_terjual', $row->harga_terjual),
		'qty_terjual' => set_value('qty_terjual', $row->qty_terjual),
	    );
            $this->load->view('header');
            $this->load->view('barang_form', $data);
            $this->load->view('footer');
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('barang'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id', TRUE));
        } else {
            $data = array(
		'kode_barang' => $this->input->post('kode_barang',TRUE),
		'nama_barang' => $this->input->post('nama_barang',TRUE),
		'satuan' => $this->input->post('satuan',TRUE),
		'harga_modal' => $this->input->post('harga_modal',TRUE),
		'harga_terjual' => $this->input->post('harga_terjual',TRUE),
		'qty_terjual' => $this->input->post('qty_terjual',TRUE),
	    );

            $this->Barang_model->update($this->input->post('id', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('barang'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Barang_model->get_by_id($id);

        if ($row) {
            $this->Barang_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('barang'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('barang'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('kode_barang', 'kode barang', 'trim|required');
	$this->form_validation->set_rules('nama_barang', 'nama barang', 'trim|required');
	$this->form_validation->set_rules('harga_modal', 'harga modal', 'trim|required');


	$this->form_validation->set_rules('id', 'id', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}

/* End of file Barang.php */
/* Location: ./application/controllers/Barang.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-02-16 15:47:12 */
/* http://harviacode.com */