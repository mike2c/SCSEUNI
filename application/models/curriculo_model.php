<?php
	class Curriculo_model extends CI_Model{
		function __Construct(){
			parent::__construct();
			$this->load->library("session");
		}

		function getId(){
			$user = $this->session->userdata("egresado");
			$data["egresado_id"] = $this->db->query("select egresado_id from egresado, usuario where egresado.usuario_id= '$user[usuario_id]'");
			if($data["curriculum_id"] = $this->db->query("select curriculum_id form curriculum where curriculum.egresado_id = '$egresado_id'")){
				return $data["curriculum_id"];
			}else{
				return $data["egresado_id"];
			}
		}

		function guardarCurriculo(){
			$data_curriculo = $this->getId();
			$this->db->insert("curriculum", $data_curriculo["egresado_id"]);
		}

		function guardar_experiencia_laboral($data_experiencia){
			$data_experiencia["curriculum_id"] = $this->getId();
			$this->db->insert("experiencia_laboral",$data_experiencia);
		}

		function guardarTitulo($data_titulo){
			$this->db->insert("titulo",$data_titulo);
			$data_titulo["titulo_id"] = $this->db->insert_id();
			return $data_titulo["titulo_id"];
		}

		function guardar_formacion_academica($data_academica,$data_titulo){
			$data_academica["titulo_id"] = $this->guardarTitulo($data_titulo);
			$data_academica["curriculum_id"] = $this->getId();
			$this->db->insert("formacion_academica",$data_academica);
		}

		function guardar_formacion_complementaria($data_complementaria){
			$data_complementaria["curriculum_id"] = $this->getId();
			$this->db->insert("formacion_complementaria",$data_complementaria);
		}

		function guardarIdioma($data_idioma){
			$data_idioma["curriculum_id"] = $this->getId();
			$this->db->insert("idioma",$data_idioma);
		}

		function guardarInformatica($data_informatica){
			$data_informatica["curriculum_id"] = $this->getId();
			$this->db->insert("informatica",$data_informatica);
		}
	}
?>