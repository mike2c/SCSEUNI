<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Perfil extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->library("session");
			$this->load->helper("sesion","sesion_helper");
			if(!sesionIniciada()){
				exit("error 404 page not found");
			}
		}

		function Index(){
		
			$this->CargarPerfil();
		}

		private function CargarPerfil(){
			
			if(esEgresado()){
				$this->PerfilEgresado();
			}elseif(esEmpresa()){
				$this->PerfilEmpresa();
			}elseif(esPublicador()){
				$this->PerfilPublicador();
			}elseif(esAdministrador()){
				
			}

			
		
			$this->load->view("footer");
		}

		#Cargar perfil de la empresa
		function PerfilEgresado(){

			$this->load->model("egresado_model","modelo");
			$resultado = $this->modelo->buscarEgresado(array("usuario_id"=>getUsuarioId()));
			$data["perfil"] = ($resultado != null) ? $resultado->row() : null;
			
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


		function CambiarClave(){
			$this->load->model("perfil_model");
			$this->load->library("Encrypter");

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
				if($last_name != $new_name["file_name"]){
				
					if(($last_name == "male.jpg") || ($last_name == "female.jpg")){
					
					}else{
						try{
							if(file_exists("/uploads/$last_name")){
								unlink("/uploads/$last_name");
							}
						}catch(Exception $e){
							echo $e->getMessage();
						}
						
					}
				}
			}

			return $this->upload->data();
		}

	}
?>