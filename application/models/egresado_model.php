<?php
	include "publicacion_model.php";
	class Egresado_model extends Publicacion_model{

		function __construct(){
			parent::__construct("listar_egresados");
			/*$this->load->database();*/
		}
		
		function autenticarEgresado($data){
			$query = $this->db->query("select correo, clave, activo from usuario where usuario.correo='$data'");
			if ($query->num_rows()>0) {
				$data_user = $query->row();
				if ($data_user->activo == TRUE) {
					return TRUE;
				}else {
					$this->db->where("correo",$data);
					$this->db->update("usuario",array("activo"=>TRUE));
					return $data_user;
				}
			}else {
				$msg = "ERROR";
				return $msg;
			}
		}

		function insertarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto){

			$this->db->insert("contacto",$data_contacto);
			$data_egresado["contacto_id"] = $this->db->insert_id();
			
			$this->db->insert("usuario",$data_usuario);
			$data_egresado["usuario_id"] = $this->db->insert_id();
			
			$this->db->insert("persona",$data_persona);
			$data_egresado["persona_id"] = $this->db->insert_id();

			$this->db->insert("egresado",$data_egresado);
		
		}

		function actualizarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto){
			
			$this->db->where('persona_id',$data_persona["persona_id"]);
			$this->db->update('persona',$data_persona);

			$this->db->where('contacto_id',$data_contacto["contacto_id"]);
			$this->db->update("contacto",$data_contacto);

			$this->db->where("usuario_id",$data_usuario["usuario_id"]);
			$this->db->update("usuario",$data_usuario);

			$this->db->where("egresado_id",$data_egresado["egresado_id"]);
			$this->db->update("egresado",$data_egresado);

			
		}

		function buscarEgresado($where){
			
			if(!empty($where)){
				$this->db->like($where);
			}
			
			$query = $this->db->get("listar_egresados");

			return $query;
			
		}
	
		function eliminarEgresado($persona_id,$egresado_id,$contacto_id,$usuario_id){
			$this->db->query("delete from usuario where usuario_id=$usuario_id");
			$this->db->query("delete from contacto where contacto_id=$contacto_id");
			$this->db->query("delete from egresado where egresado_id=$egresado_id");
			$this->db->query("delete from persona where persona_id=$persona_id");
		}

		function listarEgresados(){
			return $this->db->get("listar_egresados");
		}

		function getReporteEgresadosTrabajando(){
			$query = $this->db->query("select count(*) as trabajando from listar_egresados where trabaja = true;")->row();
			$data["trabajando"] = $query->trabajando;
			
			$query = $this->db->query("select count(*) as no_trabajando from listar_egresados where trabaja = false;")->row();
			$data["no_trabajando"] = $query->no_trabajando;

			return $data;	
		}

		function getReporteEgresadosTitulados(){
			$query = $this->db->query("select count(*) as titulado from listar_egresados where titulado = true;")->row();
			$data["titulados"] = $query->titulado;
			$query = $this->db->query("select count(*) as no_titulado from listar_egresados where titulado = false;")->row();
			$data["no_titulados"] = $query->no_titulado;

			return $data;
		}

		function getReporteEgresadosCarrera(){
			$query = $this->db->query("select carrera,count(egresado_id) as cantidad from listar_egresados group by carrera;");
			return $query;
		}
		
		function validarCarnetEgresado($data){
			$query = $this->db->query("select carnet from egresado where egresado.carnet = '$data';");
			if($query->num_rows()==0){
				return false;
			}else{
				return true;
			}
		}
		function validarCedulaEgresado($data){
			if ($data == ""){
				return false;
			}else{
				$query = $this->db->query("select cedula from egresado where egresado.cedula = '$data';");
				if($query->num_rows()>0){
					return true;
				}else{
					return false;	
				}
			}
		}
		function getCedulaEgresado($egresado_id){
			$query = $this->db->query("select carnet from egresado where egresado.egresado_id = '$egresado_id';");
			if($query->num_rows()>0){
					return $query->row();
				}else{
					return false;	
				}
		}
		function getCarnetEgresado($egresado_id){
			$query = $this->db->query("select carnet from egresado where egresado.egresado_id = '$egresado_id';");
			if($query->num_rows()>0){
					return $query->row();
				}else{
					return false;	
				}
		}
	}

?>