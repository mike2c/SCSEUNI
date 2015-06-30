<?php defined('BASEPATH') OR exit('No direct script access allowed');

		if(!isset($_SESSION["empresa"])){
		#DESCOMENTAR ESTA LINEA CUANDO EL SISTEMA ESTE TERMINADO.
		//exit ("Error 404. pagina no encontrada");
	}

	class Empresa extends CI_Controller{

		function __construct(){

			parent:: __construct();

			$this->load->helper(array('form','url'));
			$this->load->library('form_validation');
			$this->load->library('session');
		}

		function actualizar(){
			$this->load->model('empresa_model','',TRUE);
			$info["sociedad"] = $this->empresa_model->getInfo();
			$info["empresa"] = $this->empresa_model->fillCampos();
			$user_id = $this->session->userdata('empresa');

			$this->load->view("cabecera"); 
			$this->load->view("nav");
			$this->load->view("update_empresa",$info);
			$this->load->view("footer");

			if ($this->input->post('nombre_empresa') and $this->input->post('nombre_empresa') !="") {
				$this->form_validation->set_rules('nombre_empresa','Nombre de la Empresa','trim|required|min_length[2]|max_length[45]');			
				$this->form_validation->set_rules('sitio_web','Sitio Web','trim|max_length[100]');
				$this->form_validation->set_rules('ocupacion','Ocupacion','trim|max_length[500]');
				$this->form_validation->set_rules('mision','Mision','trim|max_length[500]');
				$this->form_validation->set_rules('vision','Vision','trim|max_length[500]');
				$this->form_validation->set_rules('sociedad','Sociedad','trim|max_length[40]');

				$data_empresa['empresa_id'] = $info["empresa"]["data_empresa"]->row()->empresa_id;
				$data_empresa['nombre_empresa'] = $this->input->post('nombre_empresa');
				$data_empresa['sociedad_id'] = $this->input->post('sociedad');
				$data_empresa['mision'] = $this->input->post('mision');
				$data_empresa['vision'] = $this->input->post('vision');
				$data_empresa['ocupacion'] = $this->input->post('ocupacion');
				$data_empresa['sitio_web'] = $this->input->post('sitio_web');

				if($this->form_validation->run() == TRUE){
				$msg = $this->empresa_model->editarEmpresa($data_empresa);
					if($msg){

					}
				}
			}else{}
				if ($this->input->post('correo') !=="" and $this->input->post('correo')) {
				$this->form_validation->set_rules('correo','Correo','trim|required|max_length[45]|valid_email');
				$this->form_validation->set_rules('clave','Contraseña','trim|required|min_length[6]|max_length[100]');

				$data_usuario['usuario_id']  = $user_id['usuario_id'];
				$img = $this->subirImg();
					if($img == ""){

					}else{
						$data_usuario['imagen_perfil'] = $this->subirImg();
					}
				
				$data_usuario['correo'] = $this->input->post('correo');
				$data_usuario['clave'] = $this->input->post('clave');

				if($this->form_validation->run() == TRUE){
				$msg = $this->empresa_model->editarUsuarioEmpresa($data_usuario);
					if($msg){

					}
				}
			}else{}
				if ($this->input->post('telefono')!=="" and $this->input->post('telefono')) {
				#FAlTA MUNCIPIO
					$this->form_validation->set_rules('direccion','Direccion','trim|max_length[100]');
					$this->form_validation->set_rules('telefono','Telefono','trim|max_length[10]|min_length[8]');
					$this->form_validation->set_rules('celular','Celular','trim|max_length[10]|min_length[8]');

					$data_contacto['contacto_id'] = $info["empresa"]["data_empresa"]->row()->contacto_id;
					$data_contacto['telefono'] = $this->input->post('telefono');
					$data_contacto['celular'] = $this->input->post('celular');
					$data_contacto['direccion'] = $this->input->post('direccion');

					if($this->form_validation->run() == TRUE){
					$msg = $this->empresa_model->editarContactoEmpresa($data_contacto);
						if($msg){
		
						}
					}
				}
			}

		function registro(){
			$this->form_validation->set_rules('nombre_empresa','Nombre de la Empresa','trim|required|min_length[2]|max_length[45]');
			$this->form_validation->set_rules('telefono','Telefono','trim|required|max_length[10]|min_length[8]');
			
			$this->form_validation->set_rules('direccion','Direccion','trim|required|max_length[100]');
			
			$this->form_validation->set_rules('correo','Correo','trim|required|max_length[45]|valid_email');
			$this->form_validation->set_rules('clave','Contraseña','trim|required|matches[conf_clave]|min_length[6]|max_length[100]');
			$this->form_validation->set_rules('conf_clave','Confirmar Contraseña','trim|min_length[6]|required|max_length[100]');

			$this->load->model('empresa_model','',TRUE);

			if($this->form_validation->run()==FALSE){
				$this->load->model("listas_model","departamento");
				$data["departamentos"] = $this->departamento->listarDepartamentos();
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view("registro_empresa",$data);
				$this->load->view("footer");
			}else{
				$data_empresa['nombre_empresa'] = $this->input->post('nombre_empresa');

				$data_usuario['correo'] = $this->input->post('correo');
				$data_usuario['clave'] = $this->input->post('clave');
				$data_usuario['activo'] = TRUE;
				//$data_usuario['imagen_perfil'] = $this->subirImg();

				$data_contacto['telefono'] = $this->input->post('telefono');
				//$data_contacto['celular'] = $this->input->post('celular');
				$data_contacto['direccion'] = $this->input->post('direccion');
				$data_contacto['municipio_id'] = $this->input->post('municipio');

				$this->empresa_model->insertarEmpresa($data_usuario,$data_empresa,$data_contacto);
			}
			
		} 

		function Eliminar(){

		}

		function subirImg(){
			$config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpeg|png|jpg';
			$config['max_size'] = '2048';
			$config['max_width'] = '400';
			$config['max_height'] = '400';

			$this->load->library('upload',$config);

			if(! $this->upload->do_upload()){
				$error = array('error'=>$this->upload->display_errors());
				$this->load->view('update_empresa',$error);
			}else {
				$data = array('upload_data'=>$this->upload->data());
				return $data['upload_data']['file_name'];
			}
		}
	}
?>