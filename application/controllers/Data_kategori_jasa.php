<?php

/**
 *
 */
class Data_kategori_jasa extends CI_Controller {

  public function __construct() {
    parent::__construct();
  }

  public function index() {
    $data['kategori'] = $this->all_model->get_where_kategori(array(), 'jasa');
    $this->load->view('admin/data_kategori_jasa_view', $data);
  }

  public function simpan() {
    $kategori_id    = $this->input->post('kategori_id');
    $nama_kategori  = $this->input->post('nama_kategori');
    $harga_jasa     = $this->input->post('harga_pertemuan');
    if (!empty($kategori_id)) {
      $a = $this->all_model->update_kategori_jasa(array('jenis_jasa_id' => $kategori_id), array('nama_jasa' => $nama_kategori, 'harga_jasa'=>$harga_jasa), 'jasa');
      if ($a) {
        redirect('data_kategori_jasa');
      }
    }else {
      $a = $this->all_model->insert_kategori_jasa(array('nama_jasa' => $nama_kategori, 'harga_jasa'=>$harga_jasa), 'jasa');
      if ($a) {
        redirect('data_kategori_jasa');
      }
    }
  }

  public function hapus($id) {
    $a = $this->all_model->delete_kategori_jasa(array('jenis_jasa_id' => $id), 'jasa');
    if ($a) {
      redirect('data_kategori_jasa');
    }
  }

}

 ?>
