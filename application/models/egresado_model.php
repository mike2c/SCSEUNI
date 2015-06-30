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

		function buscarEgresado($campo,$valor){
			
			return $this->db->query("SELECT 
		        `egresado`.`cedula` AS `Cedula`,
		        `egresado`.`carnet` AS `Carnet`,
		        `persona`.`nombre` AS `Nombre`,
		        `persona`.`apellido` AS `Apellido`,
		        IF((`persona`.`sexo` = 'M'),
		            'Masculino',
		            'Femenino') AS `Sexo`,
		        `contacto`.`celular` AS `Celular`,
		        `contacto`.`telefono` AS `Telefono`,
		        `usuario`.`correo` AS `Correo`,
		        `contacto`.`direccion` AS `Dirección`,
		        IF((`usuario`.`activo` = 1),
		            'Activa',
		            'Inactiva') AS `Estado`,
		        IF((`egresado`.`titulado` = 1),
		            'Titulado',
		            'No titulado') AS `Titulado`,
		        IF((`egresado`.`trabaja` = 1),
		            'Trabaja',
		            'No trabaja') AS `Trabajando`,
		        `carrera`.`nombre_carrera` AS `Carrera`,
		        `egresado`.`persona_id` AS `persona_id`,
		        `egresado`.`usuario_id` AS `usuario_id`,
		        `egresado`.`contacto_id` AS `contacto_id`,
		        `egresado`.`egresado_id` AS `egresado_id`
		    FROM
		        ((((`persona`
		        JOIN `egresado`)
		        JOIN `usuario`)
		        JOIN `contacto`)
		        JOIN `carrera`)
		    WHERE
		        ((`persona`.`persona_id` = `egresado`.`persona_id`)
		            AND (`egresado`.`contacto_id` = `contacto`.`contacto_id`)
		            AND (`egresado`.`usuario_id` = `usuario`.`usuario_id`)
		            AND (`egresado`.`carrera_id` = `carrera`.`carrera_id`)
		            AND ($campo like '%$valor%'));");
		}
	
		function eliminarEgresado($persona_id,$egresado_id,$contacto_id,$usuario_id){
			$this->db->query("delete from usuario where usuario_id=$usuario_id");
			$this->db->query("delete from contacto where contacto_id=$contacto_id");
			$this->db->query("delete from egresado where egresado_id=$egresado_id");
			$this->db->query("delete from persona where persona_id=$persona_id");
		}

		function listarEgresados(){
			return $this->db->query("select * from listar_egresados;");
		}
	}

?>