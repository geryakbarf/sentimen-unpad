<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	  {
	      parent::__construct();
	      include(APPPATH."libraries/autoload.php");
				if($this->session->userdata('username') == null)
					redirect(base_url().'Login', 'refresh');
	  }

	public function index(){
		$data['title'] = "Halaman Dashboard";
		$this->load->view('dashboard/index',$data);
	}

	public function pendidikan(){
		$data['title'] = "Trending #Pendidikan";
		$this->load->view('dashboard/pendidikan',$data);
	}

	public function penelitian(){
		$data['title'] = "Trending #Penelitian";
		$this->load->view('dashboard/penelitian',$data);
	}

	public function mahasiswa(){
		$data['title'] = "Trending #Mahasiswa";
		$this->load->view('dashboard/mahasiswa',$data);
	}

	public function alumni(){
		$data['title'] = "Trending #Alumni";
		$this->load->view('dashboard/alumni',$data);
	}

	public function penerimaan(){
		$data['title'] = "Trending #Penerimaan";
		$this->load->view('dashboard/penerimaan',$data);
	}

	public function pelayanan(){
		$data['title'] = "Trending #Pelayanan";
		$this->load->view('dashboard/pelayanan',$data);
	}

	public function positif(){
		$data['title'] = "Sentimen Positif Tentang Unpad";
		$this->load->view('dashboard/positif',$data);
	}

	public function negatif(){
		$data['title'] = "Sentimen Negatif Tentang Unpad";
		$this->load->view('dashboard/negatif',$data);
	}

	public function netral(){
		$data['title'] = "Sentimen Netral Tentang Unpad";
		$this->load->view('dashboard/netral',$data);
	}
}
