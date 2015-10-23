<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Perfil extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper(array("sesion","imagen","fecha"));
			if(!sesionIniciada()){
				show_404();
			}
		}

		function Index($page = "default"){
		
			$this->CargarPerfil();

			switch ($page) {
				case 'fichas':
					echo "<script type='text/javascript>
					cargarFichas();
					</script>";
					break;
				case 'cursos':
					echo "<script type='text/javascript>
					cargarCursos();
					</script>";
					break;
				case 'becas':
					echo "<script type='text/javascript>
					cargarBecas();
					</script>";
					break;
				default:
					# code...
					break;
			}
		}

		function getPass(){
			$this->load->library("Encrypter");
			$value = '3/M1lheRMJsAIpFCnnte2Aut1JdVC8P2Q0OGD6KAOc8=';
			echo Encrypter::decrypt($value);
		}

		private function CargarPerfil(){
			
			if(esEgresado()){
				$this->PerfilEgresado();
			}elseif(esEmpresa()){
				$this->PerfilEmpresa();
			}elseif(esPublicador()){
				$this->PerfilPublicador();
			}elseif(esAdministrador()){
				$this->PerfilAdmin();
			}
		}

		#Cargar perfil de la empresa
		function PerfilEgresado(){

			$this->load->model("egresado_model","modelo");
			$this->load->model("privacidad_model");
			$resultado = $this->modelo->buscarEgresado(array("usuario_id"=>getUsuarioId()));
			$data["perfil"] = ($resultado != null) ? $resultado->row() : null;
			$data["privacidad"] = $this->privacidad_model->consultar_privacidad(getUsuarioId());
 
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("perfil_egresado",$data);
			$this->load->view("footer");

		}
		
		function PerfilEmpresa(){
			$this->load->model("empresa_model","modelo");
			$resultado = $this->modelo->buscarEmpresa(array("usuario_id"=>getUsuarioId()));
			$data["perfil"] = ($resultado != null) ? $resultado->row() : null;
			
			$this->load->view("cabecera");
			$this->load->view("nav");
			
			$this->load->view("perfil_empresa",$data);
			$this->load->view("footer");

		}

		function PerfilPublicador(){
			$this->load->model("publicador_model","modelo");
			$resultado = $this->modelo->buscarPublicador(array("usuario_id"=>getUsuarioId()));
			$data["perfil"] = ($resultado != null) ? $resultado->row() : null;
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("perfil_publicador",$data);
			$this->load->view("footer");

		}

		function PerfilAdmin(){

			$this->load->model("admin_model");
			$resultado = $this->admin_model->listar(array("usuario_id"=>getUsuarioId()));

			$data["perfil"] = ($resultado != null) ? $resultado->row() : null;
			
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("perfil_admin",$data);
			$this->load->view("footer");
		}

		function CambiarClave(){

			$this->load->model("perfil_model");
			$this->load->library("Encrypter");
			$this->load->library("form_validation");

			$this->form_validation->set_rules('clave_actual','Clave actual','trim|required|min_length[5]|max_length[20]');
			$this->form_validation->set_rules('clave_nueva','Clave nueva','trim|required|min_length[5]|max_length[20]');
			$this->form_validation->set_rules('clave_repetida','Clave repetida','trim|required|min_length[5]|max_length[20]');

			if($this->form_validation->run() == FALSE){
				echo validation_errors();
			}else{

				$clave_actual = Encrypter::encrypt($this->input->post("clave_actual"));
				$clave_nueva = $this->input->post("clave_nueva");
				$clave_repetida = $this->input->post("clave_repetida");

				if($clave_actual == $this->perfil_model->getClave(getUsuarioId())){
					if($clave_nueva == $clave_repetida){

						$clave_nueva = Encrypter::encrypt($clave_nueva);
						$this->perfil_model->cambiarClave(getUsuarioId(),$clave_nueva);
						echo "<script type='text/javascript'>
							alert('La contraseña ha sido cambiada');
							window.location='". base_url('Perfil')."'"; 
							echo "
						</script>";
						
					}else{
						echo "Las contraseñas no coinciden";
					}
				}else{
					echo "La contraseña actual que digitaste es incorrecta";
				}
			}
		}

		private function cargarVistasDinamicamente(){

			if(isset($_GET["page"])){
				switch ($_GET["page"]){

					case 'fichas':
						echo "<script type='text/javascript'>
							$(document).ready(function(){
								
								cargarFichas();
							});
						</script>";
						break;
					case 'cursos':
						echo "<script type='text/javascript'>
							$(document).ready(function(){
								
								cargarCursos();
							});
						</script>";
						break;
					case 'becas':
						echo "<script type='text/javascript'>
							$(document).ready(function(){
								console.log('entro');
								cargarBecas();
							});
						</script>";
						break;
					default:
						echo "La pagina que estas intentando acceder no existe.\n ERROR 404";
						break;
				}
			}
		}

		function CambiarImagenDePerfil(){
			
			$this->load->model("perfil_model");
			$data = $this->subirImagen();
			
			if(isset($data["file_name"])){
				$this->perfil_model->actualizarImagen(getUsuarioId(),$data["file_name"]);	
				setImagenPerfil($data["file_name"]);
				redirect(base_url("Perfil"));
			}else{
				echo "<script type='text/javascript'>
					alert('La imagen que estas intentado subir no es permitida o su tamaño sobre pasa el limite');
					window.location = '". base_url('Perfil') ."';
				</script>";
			}

			
		}

		function prueba(){
			$this->load->model("perfil_model");
			echo $this->perfil_model->getClave(getUsuarioId());

		}

		function accion(){
			echo $this->input->post("var1");
			echo $this->input->post("var2");
		}

		function subirImagen(){
			
			$config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpeg|png|jpg';
			$config['max_size'] = 1024;
			$config['max_width'] = 1000;
			$config['max_height'] = 1000;
			$config['overwrite'] = TRUE;		
			$config['file_name'] = 'perfil_'. getUsuarioId();

			$this->load->library("upload",$config);

			$last_name = getImagenPerfil();

			if(!$this->upload->do_upload("imagen")){
				
				$data["upload_error"] = $this->upload->display_errors();
				return $data;
			
			}else{
								
				$new_name = $this->upload->data();
				
				//casoEmergencia($new_name["full_path"]);
				
				$config = redimensionarImagen($new_name["full_path"]);
				
				$this->load->library("image_lib",$config);
				$this->image_lib->resize();
				
				if($last_name != $new_name["file_name"]){
				
					if(($last_name == "default/male.jpg") || ($last_name == "default/female.jpg") || ($last_name == "default/no_imagen.gif")){
					
					}else{

						try{
							if(imagen_disponible()){
								unlink("uploads/$last_name");
							}
						}catch(Exception $e){
							echo $e->getMessage();
						}
					}
				}

			return $this->upload->data();
			}

		}

		
		function DesactivarCuenta(){
			$this->load->model("perfil_model");			
			$this->perfil_model->desactivarCuenta(getUsuarioId());
			redirect("Sesion/CerrarSesion");		
		}
}
?>