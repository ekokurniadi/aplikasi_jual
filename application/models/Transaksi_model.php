<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Transaksi_model extends CI_Model
{

    public $table = 'transaksi';
    public $id = 'id';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($t1=NULL,$t2=NULL) {
        if($t1=="" or $t2==""){
            $this->db->like('id', $t1);
            $this->db->or_like('kode_transaksi', $t1);
            $this->db->or_like('tanggal_transaksi', $t1);
            $this->db->or_like('kode_transaksi', $t2);
            $this->db->or_like('tanggal_transaksi', $t2);
            $this->db->from($this->table);
                return $this->db->count_all_results();
        }else{
            return $this->db->query("SELECT * FROM transaksi where tanggal_transaksi between '$t1' and '$t2'")->num_rows();
            
        }

       
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $t1=NULL,$t2=NULL) {
        if($t1=="" or $t2==""){
            $this->db->order_by($this->id, $this->order);
            $this->db->like('id',$t1);
            $this->db->or_like('kode_transaksi',$t1);
            $this->db->or_like('tanggal_transaksi', $t1);
            $this->db->or_like('kode_transaksi',$t2);
            $this->db->or_like('tanggal_transaksi', $t2);
            $this->db->limit($limit, $start);
            return $this->db->get($this->table)->result();
        }else{
            return $this->db->query("SELECT * FROM transaksi where tanggal_transaksi between '$t1' and '$t2'")->result();
        }
        
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file Transaksi_model.php */
/* Location: ./application/models/Transaksi_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-02-16 15:40:55 */
/* http://harviacode.com */