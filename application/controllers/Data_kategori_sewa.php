<?php

/**
 *
 */
class Data_kategori_sewa extends CI_Controller {

  public function __construct() {
    parent::__construct();
  }

  public function index() {
    $data['kategori'] = $this->all_model->get_where(array(), 'sewa');
    $this->load->view('admin/data_kategori_sewa_view', $data);
  }

  public function simpan() {
    $kategori_id  = $this->input->post('kategori_id');
    $nama_kategori  = $this->input->post('nama_kategori');
    if (!empty($kategori_id)) {
      $a = $this->all_model->update_kategori_sewa(array('kategori_id' => $kategori_id), array('nama_kategori' => $nama_kategori), 'sewa');
      if ($a) {
        redirect('data_kategori_sewa');
      }
    }else {
      $a = $this->all_model->insert_kategori_sewa(array('nama_kategori' => $nama_kategori), 'sewa');
      if ($a) {
        redirect('data_kategori_sewa');
      }
    }
  }

  public function hapus($id) {
    $a = $this->all_model->delete_kategori_sewa(array('kategori_id' => $id), 'sewa');
    if ($a) {
      redirect('data_kategori_sewa');
    }
  }

}

 ?>
