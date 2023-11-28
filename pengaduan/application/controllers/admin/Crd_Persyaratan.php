<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Crd_Persyaratan extends CI_Controller {

    public function index()
    {
        $persyaratan = $this->M_all->tampilSemua('tb_persyaratan')->result_array();
        $data = [
            "persyaratan"  => $persyaratan,
            "title"             => 'Data Persyaratan',
            "breadcumb"         => 'Persyaratan',
            "content"           => 'crd_persyaratan/crd_persyaratan'
        ];
        $this->load->view('template/view', $data, FALSE);
        
    }

    public function tambah_persyaratan()
    {
        $this->form_validation->set_rules('judul', 'Judul', 'required', ['required' => '%s harus diisi']);
        $this->form_validation->set_rules('isi', 'Isi', 'required', ['required' => '%s harus diisi']);
        
        
        if ($this->form_validation->run() == TRUE) {
            $data = [
                'judul' => htmlspecialchars($this->input->post('judul')),
                'isi' => $this->input->post('isi')
            ];
            $tambah = $this->M_all->simpan('tb_persyaratan', $data);
            if($tambah){
                echo "<script>";
                echo "alert('Data berhasil ditambah')";
                echo "</script>";
                redirect(base_url('admin/crd_persyaratan'),'refresh');
            }else{
                echo "<script>";
                echo "alert('Data gagall ditambah')";
                echo "</script>";
                redirect(base_url('admin/crd_persyaratan'),'refresh');
            }
            
        }else{
            $data = [
                        "title"             => 'Tambah data persyaratan',
                        "breadcumb"         => 'Admin / Tambah Persyaratan',
                        "content"           => 'crd_persyaratan/tambah_persyaratan'
            ];
            $this->load->view('template/view', $data, FALSE);;
        }
    }

}