<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Admin extends CI_Controller{

		/*
			Te hace falta mejorar las validaciones:

			1-Asignarle el numeor maximo y minimo de caracteres a los campos con respecto a los campos de la base de datos.
			2-Validar las funciones para que no puedan acceder a ellas mediante la url o que solo pueda acceder a ellas el administrador.
			3-Valida los cambios tambien cuando se haga un update.	

			ah y elimine las vistas footer y header porque un no se como van a ir la interfaz estoy probando asi que esas no van ya
			eliminalas .|.. y no te me pongas al brinco oiste o te jak30.
		*/

		function __construct(){
			parent:: __construct();
			$this->load->helper(array('form','url'));
			$this->load->library('form_validation');
		}

		function registrar(){
			$this->load->model('admin_model','',true);

			$this->form_validation->set_rules('nombre','Nombre','required');
			$this->form_validation->set_rules('apellido','Apellido','required');
			$this->form_validation->set_rules('sexo','Sexo','required');
			$this->form_validation->set_rules('anio','Anio','required');
			$this->form_validation->set_rules('mes','Mes','required');
			$this->form_validation->set_rules('dia','Dia','required');
			$this->form_validation->set_rules('correo','Correo','required');
			$this->form_validation->set_rules('pass','Contraseña','required');
			$this->form_validation->set_rules('passConf','Confirmar Contraseña','required');

			if($this->form_validation->run()==false){
				$datos['title'] = 'Registrar Administrador';

		
				$this->load->view('registro_admin');
				//$this->load->view('footer');
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
			$this->load->model('admin_model','',true);

			$data_usuario["correo"] = "prueba@gmail.com";
			$data_usuario["clave"] = "1234";
			$data_usuario["usuario_id"] = "11";

			$data_persona["nombre"] = "Rene";
			$data_persona["apellido"] = "Cruz";
			$data_persona["sexo"] = "M";
			$data_persona["fecha_nacimiento"] = "1992-03-02";
			$data_persona["persona_id"] = "11";

			$this->admin_model->updateAdmin($data_usuario,$data_persona);
		}

		function borrar(){
			$this->load->model('admin_model','',true);

			$data_usuario["usuario_id"] = "9";
			$data_usuario["activo"] = false;

			$this->admin_model->borrarAdmin($data_usuario);
		}
	}
?>