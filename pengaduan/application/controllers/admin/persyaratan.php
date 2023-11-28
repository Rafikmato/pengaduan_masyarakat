<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Persyaratan extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        // $this->cekAdmin();
    }

    public function index()
    {
        // $kelola = $this->M_all->tampilKelola()->result_array();
        $data = [
            // "kelola"               => $kelola,
            "title"                => 'Persyaratan',
            "breadcumb"            => 'Persyaratan',
            "content"              => 'persyaratan/index',
            "persyaratan" => $this->M_all->tampilSemua('tb_persyaratan')->result_array(),
        ];

        $this->load->view('template/view', $data, FALSE);
    }
}
