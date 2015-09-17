<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	
	class Curriculum  extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper(array("sesion","url","form","fecha"));
			$this->load->library(array("session","form_validation"));
			$this->load->model("curriculum_model","modelo");
		}

		function Index(){
			$data_curriculo["curriculum_id"] = $this->modelo->getCurriculumID(getUsuarioId());
			if ($data_curriculo["curriculum_id"]==NULL) {
				$this->Crear();
			}else{
				$data_curriculo = $this->modelo->listarCurriculo($data_curriculo["curriculum_id"]->curriculum_id);
				if(!$data_curriculo==null){
					$this->Editar($data_curriculo);
				}else{
					$this->Crear();
				}
			}
		}

		function Crear(){
			$validacion = $this->validarCampos();
			if(IS_AJAX){
				if ($validacion==TRUE) {
					$this->Guardar();
				}else{
					$this->load->view("curriculum/registro_curriculum");
				}
			}else{
				if ($validacion==TRUE) {
					$this->Guardar();
				}else{
					$this->load->view("cabecera");
					$this->load->view("nav");
					$this->load->view("curriculum/registro_curriculum");
					$this->load->view("footer");
				}
			}
		}
		
		function Editar($data_curriculo){
			$validacion = $this->validarCampos();
			
			if(IS_AJAX){
				if ($validacion==TRUE) {
					$this->actualizar();
				}else{
					$this->load->view("curriculum/actualizar_curriculo",$data_curriculo);
				}
			}else{
				if ($validacion==TRUE) {
					$this->actualizar();
				}else{
					$this->load->view("cabecera");
					$this->load->view("nav");
					$this->load->view("curriculum/actualizar_curriculo",$data_curriculo);
					$this->load->view("footer");
				}
			}
		}

		private function Guardar(){
			#formacion academica
			$titulo = $this->input->post("titulo[]");
			$comienzo_formacion = $this->input->post("comienzo_formacion[]");
			$finalizacion_formacion = $this->input->post("finalizacion_formacion[]");
			
			#experiencia laboral
			$empresa = $this->input->post("empresa[]");
			$cargo = $this->input->post("cargo[]");
			$comienzo_laboral = $this->input->post("comienzo_laboral[]");
			$finalizacion_laboral = $this->input->post("finalizacion_laboral[]");
			
			#experiencia complementaria
			$curso = $this->input->post("curso[]");
			$comienzo_curso = $this->input->post("comienzo_curso[]");
			$finalizacion_curso = $this->input->post("finalizacion_curso[]");
			
			#idioma
			$idioma = $this->input->post("idioma[]");
			$nivel_idioma = $this->input->post("nivel_idioma[]");
			
			#informatica
			$software = $this->input->post("software[]");
			$nivel_software =$this->input->post("nivel_software[]");
			
			$egresado_id = $this->modelo->getEgresadoID(getUsuarioId());
			
			if (!$egresado_id==NULL) {
				$curr_id = $this->modelo->guardarCurriculum($egresado_id->egresado_id);
			}else {
				exit("Error, no se encuentra el Egresado");
			}
			
			for($i = 0; $i < count($this->input->post("titulo[]")); $i++){
				if ($comienzo_formacion[$i]=="" || $finalizacion_formacion[$i]=="" || $titulo[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$this->modelo->guardarFormacionAcademica(array("curriculum_id"=>$curr_id,"fecha_comienzo"=>$comienzo_formacion[$i],"fecha_finalizacion"=>$finalizacion_formacion[$i],"titulo_id"=>$titulo[$i]));
				}
			}
			for ($i=0; $i < count($this->input->post("cargo[]")) ; $i++){ 
				if ($empresa[$i]=="" || $cargo[$i]=="" || $comienzo_laboral[$i]=="" || $finalizacion_laboral[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$this->modelo->guardarExperienciaLaboral(array("curriculum_id"=>$curr_id,"empresa"=>$empresa[$i],"cargo"=>$cargo[$i],"fecha_comienzo"=>$comienzo_laboral[$i],"fecha_finalizacion"=>$finalizacion_laboral[$i]));
				}
			}
			for ($i=0; $i < count($this->input->post("curso[]")); $i++){ 
				if ($curso[$i]=="" || $comienzo_curso[$i]=="" || $finalizacion_curso[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$this->modelo->guardarformacionComplementaria(array("curriculum_id"=>$curr_id,"curso"=>$curso[$i],"fecha_comienzo"=>$comienzo_curso[$i],"fecha_finalizacion"=>$finalizacion_curso[$i]));
				}
			}
			for ($i=0; $i < count($this->input->post("idioma[]")); $i++){ 
				if ($idioma[$i]=="" || $nivel_idioma[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$this->modelo->guardarIdiomas(array("curriculum_id"=>$curr_id,"idioma"=>$idioma[$i],"nivel"=>$nivel_idioma[$i]));
				}
			}
			for ($i=0; $i < count($this->input->post("software[]")); $i++){
				if ($software[$i]=="" || $nivel_software[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$this->modelo->guardarInformatica(array("curriculum_id"=>$curr_id,"software"=>$software[$i],"nivel"=>$nivel_software[$i]));
				}
			}
			echo "
				<script stype='text/javascript'>
					alert('Actualizada');
					window.location='". base_url("Perfil")."';
				</script>
			";
		}
		
		private function Actualizar(){
			
			#Se recive el ID del curriculo por medio de un campo hidden.
			$curr_id = $this->input->post("curriculum_id");
			
			$id_academico = $this->input->post("formacion_academica_id[]");
			$titulo[] = $this->input->post("titulo[]");
			$comienzo_formacion[] = $this->input->post("comienzo_formacion[]");
			$finalizacion_formacion[] = $this->input->post("finalizacion_formacion[]");
			
			$id_experiencia = $this->input->post("experiencia_laboral_id[]");
			$empresa[] = $this->input->post("empresa[]");
			$cargo[] = $this->input->post("cargo[]");
			$comienzo_laboral[] = $this->input->post("comienzo_laboral[]");
			$finalizacion_laboral[] = $this->input->post("finalizacion_laboral[]");
			
			$id_complemetario = $this->input->post("formacion_complementaria_id[]");
			$curso[] = $this->input->post("curso[]");
			$comienzo_curso[] = $this->input->post("comienzo_curso[]");
			$finalizacion_curso[] = $this->input->post("finalizacion_curso[]");
			
			$idioma_id = $this->input->post("idioma_id[]");
			$idioma[] = $this->input->post("idioma[]");
			$nivel_idioma[] = $this->input->post("nivel_idioma[]");
			
			$inforamtica_id=$this->input->post("informatica_id[]");
			$software[] = $this->input->post("software[]");
			$nivel_software[] =$this->input->post("nivel_software[]");
			
			$data_curriculo = $this->modelo->listarCurriculo($curr_id);
			
			for($i = 0; $i < count($this->input->post("titulo[]")); $i++){
				if ($comienzo_formacion[$i]=="" || $finalizacion_formacion[$i]=="" || $titulo[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$save = $this->modelo->actualizarOGuardar($data_curriculo["formacion_academica"],array("formacion_academica_id"=>$id_academico[$i],"curriculum_id"=>$curr_id,"fecha_comienzo"=>$comienzo_formacion[$i],"fecha_finalizacion"=>$finalizacion_formacion[$i],"titulo_id"=>$titulo[$i]));
					if ($save == TRUE) {
						$this->modelo->guardarFormacionAcademica(array("curriculum_id"=>$curr_id,"fecha_comienzo"=>$comienzo_formacion[$i],"fecha_finalizacion"=>$finalizacion_formacion[$i],"titulo_id"=>$titulo[$i]));
					}else{
						$this->modelo->actualizarFormacionAcademica(array("formacion_academica_id"=>$id_academico[$i],"curriculum_id"=>$curr_id,"fecha_comienzo"=>$comienzo_formacion[$i],"fecha_finalizacion"=>$finalizacion_formacion[$i],"titulo_id"=>$titulo[$i]));
					}
				}
			}
			for ($i=0; $i < count($this->input->post("cargo[]")) ; $i++){ 
				if ($empresa[$i]=="" || $cargo[$i]=="" || $comienzo_laboral[$i]=="" || $finalizacion_laboral[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$save = $this->modelo->actualizarOGuardar($data_curriculo["experiencia_laboral"],array("experiencia_laboral_id"=>$id_experiencia[$i],"curriculum_id"=>$curr_id,"empresa"=>$empresa[$i],"cargo"=>$cargo[$i],"fecha_comienzo"=>$comienzo_laboral[$i],"fecha_finalizacion"=>$finalizacion_laboral[$i]));
					if ($save == TRUE) {
						$this->modelo->guardarExperienciaLaboral(array("curriculum_id"=>$curr_id,"empresa"=>$empresa[$i],"cargo"=>$cargo[$i],"fecha_comienzo"=>$comienzo_laboral[$i],"fecha_finalizacion"=>$finalizacion_laboral[$i]));
					}else{
						$this->modelo->actualizarExperienciaLaboral(array("experiencia_laboral_id"=>$id_experiencia[$i],"curriculum_id"=>$curr_id,"empresa"=>$empresa[$i],"cargo"=>$cargo[$i],"fecha_comienzo"=>$comienzo_laboral[$i],"fecha_finalizacion"=>$finalizacion_laboral[$i]));
					}
				}
			}
			for ($i=0; $i < count($this->input->post("curso[]")); $i++){ 
				if ($curso[$i]=="" || $comienzo_curso[$i]=="" || $finalizacion_curso[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$save = $this->modelo->actualizarOGuardar($data_curriculo["formacion_complementaria"],array("formacion_academica_id"=>$id_complemetario[$i],"curriculum_id"=>$curr_id,"curso"=>$curso[$i],"fecha_comienzo"=>$comienzo_curso[$i],"fecha_finalizacion"=>$finalizacion_curso[$i]));
					if ($save == TRUE) {
						$this->modelo->guardarformacionComplementaria(array("curriculum_id"=>$curr_id,"curso"=>$curso[$i],"fecha_comienzo"=>$comienzo_curso[$i],"fecha_finalizacion"=>$finalizacion_curso[$i]));
					}else {
						$this->modelo->actualizarFormacionComplementaria(array("formacion_academica_id"=>$id_complemetario[$i],"curriculum_id"=>$curr_id,"curso"=>$curso[$i],"fecha_comienzo"=>$comienzo_curso[$i],"fecha_finalizacion"=>$finalizacion_curso[$i]));
					}
				}
			}
			for ($i=0; $i < count($this->input->post("idioma[]")); $i++){ 
				if ($idioma[$i]=="" || $nivel_idioma[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$save = $this->modelo->actualizarOGuardar($data_curriculo["idioma"],array("idioma_id"=>$idioma_id[$i],"curriculum_id"=>$curr_id,"idioma"=>$idioma[$i],"nivel"=>$nivel_idioma[$i]));
					if ($save == TRUE) {
						$this->modelo->guardarIdiomas(array("curriculum_id"=>$curr_id,"idioma"=>$idioma[$i],"nivel"=>$nivel_idioma[$i]));
					}else {
						$this->modelo->actualizarIdiomas(array("idioma_id"=>$idioma_id[$i],"curriculum_id"=>$curr_id,"idioma"=>$idioma[$i],"nivel"=>$nivel_idioma[$i]));
					}
				}
			}
			for ($i=0; $i < count($this->input->post("software[]")); $i++){ 
				if ($software[$i]=="" || $nivel_software[$i]=="") {
					# no guarda en caso de llevar campos vacios
				}else{
					$save = $this->modelo->actualizarOGuardar($data_curriculo["informatica"],array("informatica_id"=>$inforamtica_id[$i],"curriculum_id"=>$curr_id,"software"=>$software[$i],"nivel"=>$nivel_software[$i]));
					if ($save == TRUE) {
						$this->modelo->guardarInformatica(array("curriculum_id"=>$curr_id,"software"=>$software[$i],"nivel"=>$nivel_software[$i]));
					}else {
						$this->modelo->actualizarInformatica(array("informatica_id"=>$inforamtica_id[$i],"curriculum_id"=>$curr_id,"software"=>$software[$i],"nivel"=>$nivel_software[$i]));
					}
				}
			}
			
			echo "
				<script stype='text/javascript'>
					alert('Actualizada');
					window.location='". base_url("Perfil")."';
				</script>
			";
		}
		
		function validarCampos(){
			
			//Establecemos la Fecha maxima que se podra ingresar
			$anio_actual = obtener_anio_actual() + 1;
			
			//Establecemos la fecha minima que se podra ingersar
			$anio_minimo = $anio_actual - 50;
		
			$this->form_validation->set_rules("titulo[]","Nombre del Titulo","trim|required");
			$this->form_validation->set_rules("comienzo_formacion[]","Año Inicial","trim|required|integer|exact_length[4]|less_than[$anio_actual]|greater_than[$anio_minimo]|callback_periodoTitulo");
			$this->form_validation->set_rules("finalizacion_formacion[]","Año Final","trim|required|integer|exact_length[4]|less_than[$anio_actual]|greater_than[$anio_minimo]");
	
			$this->form_validation->set_rules("empresa[]","Nombre de la Empresa","trim|max_length[45]");
			$this->form_validation->set_rules("cargo[]","Cargo","trim|max_length[45]");
			$this->form_validation->set_rules("comienzo_laboral[]","Año Inicial","trim|integer|exact_length[4]|less_than[$anio_actual]|greater_than[$anio_minimo]|callback_periodoCargo");
			$this->form_validation->set_rules("finalizacion_laboral[]","Año Final","trim|integer|exact_length[4]|less_than[$anio_actual]|greater_than[$anio_minimo]");
			
			$this->form_validation->set_rules("curso[]","Nombre del Curso","trim|max_length[45]");
			$this->form_validation->set_rules("comienzo_curso[]","Año Inicial","trim|integer|exact_length[4]|less_than[$anio_actual]|greater_than[$anio_minimo]|callback_periodoCurso");
			$this->form_validation->set_rules("finalizacion_curso[]","Año Final","trim|integer|exact_length[4]|less_than[$anio_actual]|greater_than[$anio_minimo]");
			
			$this->form_validation->set_rules("idioma[]","Idioma","trim|max_length[10]");
			
			$this->form_validation->set_rules("software[]","Software","trim|max_length[45]");
			
			if ($this->form_validation->run()==FALSE){
				return FALSE;
			}else {
				return TRUE;
			}
		}
		
		function periodoTitulo(){
			$periodoTitulo = menor_o_igual($this->input->post("comienzo_formacion[]"),$this->input->post("finalizacion_formacion[]"));
			if (!$periodoTitulo==TRUE){
				$this->form_validation->set_message("periodoTitulo","El campo Año Inicial debe ser menor que el Año Final en la Seccion de <strong>Formacion Academica</strong>");
				return FALSE;
			}else {
				return TRUE;
			}
		}
		
		function periodoCargo(){
			$periodoCargo = menor_o_igual($this->input->post("comienzo_laboral[]"),$this->input->post("finalizacion_laboral[]"));
			if(!$periodoCargo==TRUE){
				$this->form_validation->set_message("periodoCargo","El campo Año Inicial debe ser menor que el Año Final en la Seccion de <strong>Experiencia Laboral</strong>");
				return FALSE;
			}else{
				return TRUE;
			}
		}
		
		function periodoCurso(){
			$periodoCurso = menor_o_igual($this->input->post("comienzo_curso[]"),$this->input->post("finalizacion_curso[]"));
			if(!$periodoCurso==TRUE){
				$this->form_validation->set_message("periodoCurso","El campo Año Inicial debe ser menor que el Año Final en la Seccion de <strong>Formacion Complementaria</strong>");
				return FALSE;
			}else{
				return TRUE;
			}
		}
		
		function prueba(){
			$data = array("hola"=>"hola","mundo"=>"mundo","Probando"=>"probando","el"=>"el comportamiento de un arreglo");
			
			echo $data["hola"]."<br/>" ;
			echo $data["Probando"]."<br/>" ;
			echo $data["el"]."<br/>" ;
			
			$data_curriculo = $this->modelo->listarCurriculo('27');
			foreach($data_curriculo["formacion_academica"]->result() as $formacion_academica){
				if (isset($formacion_academica->fecha_comienzo)) {
					echo $formacion_academica->fecha_comienzo."<br/>";
				}else{
					echo "no funciona - ";
				}
			}
		}
	}
?>