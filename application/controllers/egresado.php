<?php defined('BASEPATH') OR exit('No direct script access allowed');
	//DEFINIENDO LA CONSTANTE  IS_AJAX
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	class Egresado extends CI_Controller{
		
		function __construct(){
			parent::__construct();
			$this->load->library(array("form_validation","email","Encrypter"));
			$this->email->set_newline("\r\n");
			$this->load->model("egresado_model","modelo");
			$this->load->helper(array("url","form_helper","sesion"));
			
		}

		function Autenticar(){
			if (!$this->input->post('correo')=="") {
			
				$data = $this->modelo->autenticarEgresado($this->input->post('correo'));
				if ($data == TRUE || $data=="ERROR") {
					
					if ($data == 1){
						$msg["existe"] = "El correo proporcionado ya se encuentra autenticado y en uso.";
					}else{
						$msg["no_existe"] = "El correo proporcionado no se encuentra registrado en el sistema, por favor contactar con el administrador.";
					}
					$this->load->view("cabecera");
					$this->load->view("nav");
					$this->load->view("egresado/error_autenticacion",$msg);
					$this->load->view("footer");
					
				}else{
					$this->EnviarCorreoEgresado($data);
				}
			}else{
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view("egresado/autenticar_egresado");
				$this->load->view("footer");
			}
		}

		function Listado(){
			
			$this->load->model("listas_model","lista");
			try{
				if(isset($_POST["carrera"]) && $this->input->post("carrera") !== '0'){

					$data["registro"] = $this->modelo->listar(array("carrera_id"=>$this->input->post("carrera")),array("nombre"=>$this->input->post("nombre")),"nombre");
					$data["carrera"] = $this->input->post("carrera");
				}else{
				
					$data["registro"] = $this->modelo->listar(null,null,"nombre");
				}

			}catch(Exception $e){
				exit($e->getMessage());
			}
			
			$data["carreras"] = $this->lista->listarCarreras();
			if($data["registro"] != null){
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view("egresado/listado",$data);
				$this->load->view("footer");
			}else{
				exit("No ha registros");
			}
		}

		function Registro(){

			if(!isset($_SESSION["administrador"])){
				#show_404();
			}
			$this->form_validation->set_rules("cedula","Cedula","trim|max_length[16]|min_length[16]");	
			$this->form_validation->set_rules("nombre","Nombre","trim|required|max_length[45]");
			$this->form_validation->set_rules("apellido","Apellido","trim|required|max_length[45]");
			$this->form_validation->set_rules("genero","Genero","trim|required|max_length[1]");
			$this->form_validation->set_rules("carnet","Carnet","trim|required|max_length[10]");
			$this->form_validation->set_rules("telefono","Telefono","trim|max_length[9]");
			$this->form_validation->set_rules("celular","Celular","trim|max_length[9]");
			$this->form_validation->set_rules('correo','Correo','trim|required|min_length[10]|max_length[45]|valid_email');
			$this->form_validation->set_rules("direccion","Direccion","trim|max_length[100]|min_length[6]");
			$this->form_validation->set_rules("municipio","Municipio","trim|required|max_length[10]|min_length[1]");
			$this->form_validation->set_rules("departamento","Departamento","trim|required|max_length[10]|min_length[1]");


			if($this->form_validation->run()==false){
				echo validation_errors();
			}elseif($this->modelo->existe_cedula($this->input->post("cedula"))){
				echo "La cedula que estas ingresando ya existe";
			}elseif($this->modelo->existe_carnet($this->input->post("carnet"))){
				echo "El carnet que estas ingresando ya existe";
			}elseif($this->modelo->existe_correo($this->input->post("correo"))){
				echo "El correo que estas ingresando ya existe";
				return FALSE;
			}else{

				$this->load->helper(array("pass_gen","fecha"));
				$data_persona["nombre"] = $this->input->post("nombre");
				$data_persona["apellido"] = $this->input->post("apellido");
				$data_persona["sexo"] = $this->input->post("genero");
				
				$data_persona["fecha_nacimiento"] = format_date($this->input->post("fecha_nacimiento"));
				
				$data_contacto["telefono"] = $this->input->post("telefono");
				$data_contacto["celular"] = $this->input->post("celular");
				$data_contacto["direccion"] = $this->input->post("direccion");
				$data_contacto["municipio_id"] = $this->input->post("municipio");;

				$data_egresado["carnet"] = $this->input->post("carnet");
				$data_egresado["cedula"] = $this->input->post("cedula");
				$data_egresado["titulado"] = FALSE;
				$data_egresado["trabaja"] = FALSE;
				$data_egresado["carrera_id"] = $this->input->post("carrera");;
				$data_egresado["fecha_egresado"] = $this->input->post("fecha_egresado");

				if($data_persona["sexo"] == "M"){
					$data_usuario["imagen"]="male.jpg";
				}else{
					$data_usuario["imagen"]="female.jpg";
				}

				$data_usuario["correo"] = $this->input->post("correo");
				$data_usuario["clave"] =  Encrypter::encrypt(generarClave(20));
				$data_usuario["activo"] = FALSE;

				$this->modelo->insertarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
				echo "<script type='text/javascript'>
					alert('Registrado');
					window.location='". base_url('CPanel') ."';
				</script>";
		
			}
		}

		function ActualizarPerfil(){

			if($this->Actualizar()){
				echo "<script type='text/javascript'>
					alert('Perfil actualizado');
					window.location='". base_url('Perfil') ."';
				</script>";
			}
		}

		function Actualizar(){

			if(!isset($_SESSION["egresado"])){
				#show_404();
			}

			$this->form_validation->set_rules("cedula","Cedula","trim|required|max_length[16]|min_length[16]");			
			$this->form_validation->set_rules("nombre","Nombre","trim|required|max_length[45]|min_length[5]");
			$this->form_validation->set_rules("apellido","Apellido","trim|required|max_length[45]|min_length[5]");
			$this->form_validation->set_rules("genero","Genero","trim|required");
			$this->form_validation->set_rules("telefono","Telefono","trim|max_length[9]");
			$this->form_validation->set_rules("celular","Celular","trim|max_length[9]");
			$this->form_validation->set_rules('correo','Correo','trim|required|min_length[10]|max_length[45]|valid_email');
			$this->form_validation->set_rules("telefono","Telefono","trim|max_length[9]");
			$this->form_validation->set_rules("direccion","Direccion","trim|max_length[100]|min_length[6]");
			$this->form_validation->set_rules("municipio","Municipio","trim|required|max_length[10]|min_length[1]");
			$this->form_validation->set_rules("departamento","Departamento","trim|required|max_length[10]|min_length[1]");

			if($this->form_validation->run()==false){
				echo validation_errors();
			}elseif($this->modelo->existe_cedula($this->input->post("cedula"),getUsuarioId())){
				echo "La cedula que estas ingresando ya existe";
			}elseif($this->modelo->existe_correo($this->input->post("correo"),getUsuarioId())){
				echo "El correo que estas ingresando ya existe";
				return FALSE;
			}else{
				
				$this->load->helper("fecha");#HELPER DE FECHA

				$data_persona["persona_id"] = $this->input->post("persona_id");
				$data_persona["nombre"] = $this->input->post("nombre");
				$data_persona["apellido"] = $this->input->post("apellido");
				$data_persona["sexo"] = $this->input->post("genero");
	
				$data_persona["fecha_nacimiento"] = format_date($this->input->post("fecha_nacimiento"));
	
				$data_contacto["contacto_id"]= $this->input->post("contacto_id");
				$data_contacto["telefono"] = $this->input->post("telefono");
				$data_contacto["celular"] = $this->input->post("celular");
				$data_contacto["direccion"] = $this->input->post("direccion");
				$data_contacto["municipio_id"] = $this->input->post("municipio");
				$data_egresado["fecha_egresado"] = $this->input->post("fecha_egresado");
	
				$data_egresado["egresado_id"]= $this->input->post("egresado_id");
				
				$data_egresado["cedula"] = $this->input->post("cedula");
				$data_egresado["titulado"] = $this->input->post("titulado");
				$data_egresado["trabaja"] = $this->input->post("trabaja");
				$data_egresado["carrera_id"] = $this->input->post("carrera");
	
				$data_usuario["usuario_id"]= $this->input->post("usuario_id");
				$data_usuario["correo"] = $this->input->post("correo");
					
				$this->modelo->actualizarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
				return TRUE;
			}
		}

	}

	/*		
		function EnviarCorreoEgresado($data){
			$clave = Encrypter::decrypt($data->clave);
			 
			$this->email->from("UniAdmin@gmail.com","UNIVERSIDAD NACIONAL DE INGENIERIA");
			$this->email->reply_to("UniAdmin@gmail.com","UNIVERSIDAD NACIONAL DE INGENIERIA");
			$this->email->to($data->correo);	
			$this->email->subject("Autentificación de Egresados");
			$this->email->message("Hola, tu cuenta ha sido autentificada, tu correo y contraseña para iniciar sesion son los siguientes:
			Correo: $data->correo
			Contraseña: $clave
			Te recomendamos que no borres este correo, en caso de que olvides tu contraseña.");	
				
			if (!$this->email->send()) {
				echo "ERROR, no se pudo enviar el mensaje<br/>";
				echo $this->email->print_debugger();
			}else {
				redirect("Sesion");
			}
		}
		*/	
?>
