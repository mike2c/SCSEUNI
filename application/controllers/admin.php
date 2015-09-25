<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	if(!isset($_SESSION["administrador"])){
		#DESCOMENTAR ESTA LINEA CUANDO EL SISTEMA ESTE TERMINADO.
		//exit ("Error 404. pagina no encontrada");
	}

	class Admin extends CI_Controller{

		function __construct(){
			parent:: __construct();
			$this->load->library('session');
			$this->load->helper(array('form','url','sesion',"fecha"));
			$this->load->library('form_validation');
			
			$this->form_validation->set_rules('nombre','Nombre','trim|required|min_length[2]|max_length[45]');
			$this->form_validation->set_rules('apellido','Apellido','trim|required|min_length[2]|max_length[45]');
			$this->form_validation->set_rules('sexo','Sexo','trim|required|max_length[1]');
			$this->form_validation->set_rules('fecha',"Fecha","trim|required");
			$this->form_validation->set_rules('correo','Correo','trim|required|max_length[45]|valid_email');
			$this->form_validation->set_rules('pass','Contraseña','trim|required|matches[passConf]|min_length[6]|max_length[100]');
			$this->form_validation->set_rules('passConf','Confirmar Contraseña','trim|min_length[6]|required|max_length[100]');
		}

		function index(){
			
		}

		function registrar(){

			$this->load->model('admin_model','',true);
		
			if($this->form_validation->run()==false){ 
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view('administrador/registro_admin');
				$this->load->view("footer");
			
			}
			else{
				$data_usuario["correo"] = $this->input->post('correo');
				$data_usuario["clave"] = $this->input->post('pass');
				$data_usuario["activo"] = true;

				$data_persona["nombre"] = $this->input->post('nombre');
				$data_persona["apellido"] = $this->input->post('apellido');
				$data_persona["sexo"] = $this->input->post('sexo');
				$data_persona["fecha_nacimiento"] = format_date($this->input->post("fecha"));

				$this->admin_model->insertarAdmin($data_usuario,$data_persona); 
			}

		}
		
		function update(){
			$this->load->model('admin_model','',true);

			$user_data = $this->admin_model->adminInfo(getUsuarioId());

			if($this->form_validation->run()== FALSE){
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view('administrador/update_admin',$user_data);
				$this->load->view("footer");
			}else{							
				$data_usuario["correo"] = $this->input->post('correo');
				$data_usuario["clave"] = $this->input->post('pass');
				$data_usuario["usuario_id"] = getUsuarioId();
	
				$data_persona["nombre"] = $this->input->post('nombre');
				$data_persona["apellido"] = $this->input->post('apellido');
				$data_persona["sexo"] = $this->input->post('sexo');
				$data_persona["fecha_nacimiento"] = format_date($this->input->post("fecha"));
				$data_persona["persona_id"] = $user_data->persona_id;
	
				$this->admin_model->updateAdmin($data_usuario,$data_persona);
			}
		}

		function borrar(){
			$this->load->model('admin_model','',true);

			$data_usuario["usuario_id"] = "9";
			$data_usuario["activo"] = false;

			$this->admin_model->borrarAdmin($data_usuario);
		}

		function autenticarEmpresa(){
			$this->load->model('empresa_model',null,TRUE);
			$info = $this->empresa_model->getInfo();

			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("ver_empresas_autenticadas",$info);
			$this->load->view("footer");
	
			$empresa_id = $this->input->post('empresas[]');
			$verificar['autenticada'] = TRUE;

			$this->empresa_model->autenticar($verificar,$empresa_id);
		}
	}
?>
