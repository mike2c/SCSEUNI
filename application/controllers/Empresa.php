<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Empresa extends CI_Controller{

		function __construct(){
			parent::__construct();
<<<<<<< HEAD
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
		
		function Actualizar(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			/**/
			$this->load->view("footer");
		}
=======
			$this->load->helper(array('form','url'));
		/*	$this->load->library('form_validation');
			$this->load->library('session');

			$this->form_validation->set_rules('nombre_empresa','Nombre de la Empresa','trim|required|min_length[2]|max_length[45]');
			$this->form_validation->set_rules('telefono','Telefono','trim|required|max_length[10]|min_length[8]');
			$this->form_validation->set_rules('celular','Celular','trim|required|max_length[10]|min_length[8]');
			$this->form_validation->set_rules('direccion','Direccion','trim|required|max_length[100]');
			$this->form_validation->set_rules('sitio_web','Sitio Web','trim|max_length[100]');
			$this->form_validation->set_rules('ocupacion','Ocupacion','trim|required|max_length[500]');
			$this->form_validation->set_rules('mision','Mision','trim|max_length[500]');
			$this->form_validation->set_rules('vision','Vision','trim|max_length[500]');
			$this->form_validation->set_rules('sociedad','Sociedad','trim|required|max_length[40]');	
			$this->form_validation->set_rules('correo','Correo','trim|required|max_length[45]|valid_email');
			$this->form_validation->set_rules('clave','Contraseña','trim|required|matches[clave_repetida]|min_length[6]|max_length[100]');
			$this->form_validation->set_rules('clave_repetida','Confirmar Contraseña','trim|min_length[6]|required|max_length[100]');
*/
		}

		function registro(){
			#	$this->load->model('empresa_model');
			#	if($this->form_validation->run()==FALSE){
					#$this->load->view("registro_empresa",array('error'=>''));	
			/*	}else{
					$data_empresa['sociedad_id'] = $this->input->post('sociedad_id');
					$data_empresa['mision'] = $this->input->post('mision');
					$data_empresa['vision'] = $this->input->post('vision');
					$data_empresa['ocupacion'] = $this->input->post('ocupacion');
					$data_empresa['sitio_web'] = $this->input->post('sitio_web');

					$data_usuario['correo'] = $this->input->post('correo');
					$data_usuario['clave'] = $this->input->post('clave');
					$data_usuario['activo'] = TRUE;

					$data_usuario['imagen_perfil'] = ;

					$data_contacto['telefono'] = $this->input->post('telefono');
					$data_contacto['celular'] = $this->input->post('celular');
					$data_contacto['direccion'] = $this->input->post('direccion');
					$data_contacto['municipio_id'] = $this->input->post('municipio_id');

					$this->empresa_model->insertarEmpresa($data_usuario,$data_empresa,$data_contacto);*/

					$this->subirImg();
				#}
		} 
>>>>>>> 24993d1d79e69dbe6b4b6c7cc4f10c8692f39225

		function Eliminar(){

		}
<<<<<<< HEAD
		
=======

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
>>>>>>> 24993d1d79e69dbe6b4b6c7cc4f10c8692f39225
	}
?>