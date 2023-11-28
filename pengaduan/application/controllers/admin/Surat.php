<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Surat extends MY_Controller {

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
            "title"                => 'Surat',
            "breadcumb"            => 'Surat',
            "content"              => 'surat/index'
        ];

        $this->load->view('template/view', $data, FALSE);
    }
}
