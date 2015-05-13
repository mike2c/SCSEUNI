<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Admin extends CI_Controller{
		function __construct(){
			parent:: __construct();
		}

		function registrar(){
			$this->load->model('admin_model','',true);

			$data_usuario["correo"] ="reneblackr@gmail.com";
			$data_usuario["clave"] = "123";
			$data_usuario["activo"] = true;

			$data_persona["nombre"] = "Rene";
			$data_persona["apellido"] = "Cruz";
			$data_persona["sexo"] = "M";
			$data_persona["fecha_nacimiento"] = "1992-03-02";

			$this->admin_model->insertarAdmin($data_usuario,$data_persona);
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
	}
?>