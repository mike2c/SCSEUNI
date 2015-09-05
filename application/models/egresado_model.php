<?php

	class Egresado_model extends CI_Model{

		function __construct(){
			parent::__construct();
			/*$this->load->database();*/
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
	}

?>