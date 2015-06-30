<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Empresa extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper("url");
		}

		function Registro(){
				$this->load->model("listas_model","departamento");
			$data["departamentos"] = $this->departamento->listarDepartamentos();
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("registro_empresa",$data);
			$this->load->view("footer");
		}
		
		function subirImg(){
			$config['upload_path'] = '.uploads/';
			$config['allowed_types'] = 'gif|jpg|png|bmp';
			$config['max_size'] = '2048';
			$config['max_width'] = '400';
			$config['max_height'] = '400';

			$this->load->library('upload',$config);

			if(! $this->upload->do_upload()){
				$error = array('error'=>$this->upload->display_errors());
				$this->load->view('registro_empresa',$error);
			}else {
				$data = array('upload_data'=>$this->upload->data());
				$this->load->view('mostrar_imagen',$data);
			}
		}

	}
?>