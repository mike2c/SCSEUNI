<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Admin extends CI_Controller{

		function __construct(){
			parent:: __construct();
			$this->load->helper(array('form','url'));
			$this->load->library('form_validation');
			$this->load->library('session');

			$this->form_validation->set_rules('nombre','Nombre','trim|required|min_length[2]|max_length[45]');
			$this->form_validation->set_rules('apellido','Apellido','trim|required|min_length[2]|max_length[45]');
			$this->form_validation->set_rules('sexo','Sexo','trim|required|max_length[1]');
			$this->form_validation->set_rules('anio','Anio','trim|required|min_length[4]|max_length[4]|numeric');
			$this->form_validation->set_rules('mes','Mes','trim|required|min_length[2]|max_length[2]|numeric');
			$this->form_validation->set_rules('dia','Dia','trim|required|min_length[2]|max_length[2]|numeric');

			$this->form_validation->set_rules('correo','Correo','trim|required|max_length[45]|valid_email');
			$this->form_validation->set_rules('pass','Contraseña','trim|required|matches[passConf]|min_length[6]|max_length[100]');
			$this->form_validation->set_rules('passConf','Confirmar Contraseña','trim|min_length[6]|required|max_length[100]');
		}

		function registrar(){

			$this->load->model('admin_model','',true);
		
			if($this->form_validation->run()==false){ 
				$datos['title'] = 'Registrar Administrador';
				$this->load->view('registro_admin',$datos);
			
			}
			else{
				$data_usuario["correo"] = $this->input->post('correo');
				$data_usuario["clave"] = $this->input->post('pass');
				$data_usuario["activo"] = true;

				$data_persona["nombre"] = $this->input->post('nombre');
				$data_persona["apellido"] = $this->input->post('apellido');
				$data_persona["sexo"] = $this->input->post('sexo');
				$fecha = $this->input->post('anio') . '-' . $this->input->post('mes') . '-' . $this->input->post('dia');
				$data_persona["fecha_nacimiento"] = $fecha;

				$this->admin_model->insertarAdmin($data_usuario,$data_persona);
			}

		}
		
		function update(){
			if (isset ($this->session)){
				$info = $this->getIds();
				if ($info['tipo_usuario']=='admin'){
					$this->load->model('admin_model','',true);
		
					$user_data = $this->admin_model->getInfo();

					if($this->form_validation->run()== FALSE){
						$user_data["title"] = "Actualizar Informacion";
						$this->load->view('update_admin',$user_data);

					}else{							
						$data_usuario["correo"] = $this->input->post('correo');
						$data_usuario["clave"] = $this->input->post('pass');
						$data_usuario["usuario_id"] = $info['usuario_id'];
			
						$data_persona["nombre"] = $this->input->post('nombre');
						$data_persona["apellido"] = $this->input->post('apellido');
						$data_persona["sexo"] = $this->input->post('sexo');
						$fecha = $this->input->post('anio') . '-' . $this->input->post('mes') . '-' . $this->input->post('dia');
						$data_persona["fecha_nacimiento"] = $fecha;
						$data_persona["persona_id"] = $info['persona_id'];
			
						$this->admin_model->updateAdmin($data_usuario,$data_persona);
					}
				}
			}
		}

		function borrar(){
			$this->load->model('admin_model','',true);

			$data_usuario["usuario_id"] = "9";
			$data_usuario["activo"] = false;

			$this->admin_model->borrarAdmin($data_usuario);
		}

		function getIds(){
				$user_info['tipo_usuario'] = $this->session->userdata('tipo_usuario');
				$user_info['usuario_id'] = $this->session->userdata('usuario_id');
				$user_info['persona_id'] = $this->session->userdata('persona_id');
				return $user_info;
		}
	}
?>
