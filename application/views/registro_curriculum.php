<!--BASE URL--><input type="hidden" value="<?=base_url()?>" name="base_url" id="base_url">

<div class="contenido" style="" id="contenido">
	<h2 class="form-title">Creación de curriculum</h2><br>
	<form method="POST" action='<?=base_url('Curriculum/Guardar')?>'>

		<div id="formacion_academica" class="field"><!-- FORMACION ACADEMICA -->
			<div class="group-title">
				<h4>1. Formacion academica</h4>
			</div>
			<div class="group-body">
				<div class='form-inline'>
					<div class='form-group'>
						<label>Nombre de la titulación</label><br>
						<div class='input-group'>
						<div class='titulo'></div>
					    	<div class="input-group-btn">
					        <button id="btnAgregarTitulo" onclick='agregarTitulo()' type='button' class='btn btn-warning btn-sm'>Agregar</button>
					    </div><!-- /btn-group -->
					    </div><!-- /input-group -->
					</div>
					<div class='form-group'>
						<label>Fecha de comienzo</label><br>
						<input style='width:auto;' pattern="^([0-9]{2})+[/]+([0-9]{2})+[/]+([0-9]{4})" class='form-control fecha' type='text' name='comienzo_formacion[]' >
					</div>
					<div class='form-group'>
						<label>Fecha de finalización</label><br>
						<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_formacion[]' >
					</div><br>
				</div>	
			</div>
			<div class="group-footer">
				<a href='javascript:nuevaFormacionAcademica(formacion_academica)' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:removerFila(formacion_academica)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<hr class="">
		<div id="experiencia_laboral" class="field"> <!--EXPERIENCIA LABORAL-->
			<div class="group-title">
				<h4>2. Experiencia Laboral</h4>
			</div>
			<div class="group-body">
				<div class='form-inline'>
					<div class='form-group'>
						<label>Nombre de la empresa</label><br>
						<input style='width:300px;' class='form-control' type='text' name='empresa[]' >
					</div>
					<div class='form-group'>
						<label>cargo</label><br>
						<input style='width:auto;' class='form-control' type='text' name='cargo' >
					</div>
					<div class='form-group'>
						<label>Fecha de comienzo</label><br>
						<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_laboral[]' >
					</div>
					<div class='form-group'>
						<label>Fecha de finalización</label><br>
						<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_laboral[]' >
					</div>
				</div>	
			</div>
			<div class="group-footer">
				<a href='javascript:agregarExperienciaLaboral()' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:removerFila(experiencia_laboral)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<hr class="">
		<div id="formacion_complementaria" class="field"><!--FORMACION COMPLEMENTARIA-->
			<div class="group-title">
				<h4>3. Formacion Complementaria</h4>
			</div>
			<div class="group-body">
				<div class='form-inline'>
					<div class='form-group'>
						<label>Nombre del curso</label><br>
						<input style='width:300px;' class='form-control' type='text' name='curso[]' >
					</div>
					<div class='form-group'>
						<label>Fecha de comienzo</label><br>
						<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_curso[]' >
					</div>
					<div class='form-group'>
						<label>Fecha de finalización</label><br>
						<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_curso[]' >
					</div>
				</div>	
			</div>
			<div class="group-footer">
				<a href='javascript:agregarFormacionComplementaria()' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:removerFila(formacion_complementaria)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<hr class="">
		<div id="dominio_idiomas" class="field"><!--DOMINIO DE IDIOMAS-->
			<div class="group-title">
				<h4>4. Dominio de Idiomas</h4>
			</div>
			<div class="group-body">
				<div class='form-inline'>
					<div class='form-group'>
						<label>Idioma</label><br>
						<input style='width:300px;' placeholder='ejemplo: Ingles' class='form-control' type='text' name='idioma[]' >
					</div>
					<div class='form-group'>
					<br>
						<label class='radio' for=''><input type='radio' id='' value='basico' name='nivel_idioma[]'> Basico</label>	
						<label class='radio' for=''><input type='radio' id='' value='medio' name='nivel_idioma[]'> Medio</label>	
						<label class='radio' for=''><input type='radio' id='' value='alto' name='nivel_idioma[]'> Alto</label>	
					</div>
				</div>	
			</div>
			<div class="group-footer">
				<a href='javascript:agregarDominioIdiomas()' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:removerFila(dominio_idiomas)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<hr class="">
		<div id="informatica" class="field"><!--INFORMATICA -->
			<div class="group-title">
				<h4>5. Informatica</h4>
			</div>
			<div class="group-body">
				<div class='form-inline'>
					<div class='form-group'>
						<label>Softwares</label><br>
						<input style='width:300px;' placeholder='ejemplo: Microsoft Word' class='form-control' type='text' name='idioma[]' >
					</div>
					<div class='form-group'>
					<br>
						<label class='radio' for=''><input type='radio' id='' value='basico' name='nivel_software[]'> Basico</label>	
						<label class='radio' for=''><input type='radio' id='' value='usuario' name='nivel_software[]'> Usuario</label>	
						<label class='radio' for=''><input type='radio' id='' value='experto' name='nivel_software[]'> Experto</label>	
					</div>
				</div>
				<div class='form-inline'>
					<div class='form-group'>
						<label>Softwares</label><br>
						<input style='width:300px;' placeholder='ejemplo: Microsoft Word' class='form-control' type='text' name='idioma[]' >
					</div>
					<div class='form-group'>
					<br>
						<label class='radio' for=''><input type='radio' id='' value='basico' name='nivel_software[1]'> Basico</label>	
						<label class='radio' for=''><input type='radio' id='' value='usuario' name='nivel_software[1]'> Usuario</label>	
						<label class='radio' for=''><input type='radio' id='' value='experto' name='nivel_software[1]'> Experto</label>	
					</div>
				</div>	
			</div>
			<div class="group-footer">
				<a href='javascript:agregarInformatica()' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:removerFila(informatica)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<div class="form-group">
			<button class="btn btn-primary" type="submit">Crear curriculum</button>
			<button class="btn btn-danger" type="button">Cancelar</button>
		</div>
	</form>
</div>
<style type="text/css">
	input{
		height: 20px;
	}
	#contenido{
		background-color:white;
	}
	
	body{
		background-color: #eaeaea;
	}

	.group-footer{

		overflow: auto;
		//border-top: 1px solid lightgray;
		padding:5px 10px;
		margin:0px 0px;
	}

	.group-footer a{
		margin-right: 10px;
		display: inline-block;
		padding: 3px 3px;
		text-decoration: underline;
		float: right;
	}
	
	.group-body{
		padding-top: 0px;
	}

	.group-body .form-inline{
		padding-left: 10px;
		padding-top:5px;
		padding-bottom:8px;
		border-bottom: 1px dotted gray ;
		margin:1px 0px;
	}

	.group-footer a:hover{
		//background-color: lightgray;
	}

	.group-title{
		color: #3b5995;
		margin-bottom: 10px;
	}

	.form-inline .form-group{
		margin-right: 10px;

	}
	
	.form-inline{
		background-color: rgba(174,174,174,0.2);
		
	}

	.field{
		margin-top: 0px;
	}
	
	.form-control{
		border-radius: 1px;
		border-color: gray;
	
	}
	
	input.form-control{
		height: 25px;
	}
	
	.fecha{
		width: 10px;
	}
	.form-title{
		margin-bottom: 0px;
	}
	.titulo select{
		border-color: #eea236;
	}
	
	.btn-sm{
		height: 28px;
	}

	.radio{
		padding-top: 6px;
		font-size: 16px;
		margin-right: 20px;
	}
</style>
<script type="text/javascript" src="<?=base_url('public/js/curriculum.js')?>"></script>
<script type="text/javascript">
	
	function nuevaFormacionAcademica(parent){

		var child = $(parent).find(".group-body").append("<div class='form-inline'> \
					<div class='form-group'> \
						<label>Nombre de la titulación</label><br> \
						<div class='input-group'> \
						<div class='titulo'></div> \
					    	<div class='input-group-btn'> \
					        <button id='btnAgregarTitulo' onclick='agregarTitulo()' type='button' class='btn btn-warning btn-sm'>Agregar</button> \
					    </div><!-- /btn-group --> \
					    </div><!-- /input-group --> \
					</div> \
					<div class='form-group'> \
						<label>Fecha de comienzo</label><br> \
						<input style='width:auto;' pattern='^([0-9]{2})+[/]+([0-9]{2})+[/]+([0-9]{4})' class='form-control fecha' type='text' name='comienzo_formacion[]' > \
					</div> \
					<div class='form-group'> \
						<label>Fecha de finalización</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_formacion[]' > \
					</div><br> \
				</div>");
		
		cargarTitulos($(child).find(".titulo"));
		formatear();
	}

	function agregarExperienciaLaboral(){
		var child = $("#experiencia_laboral").find(".group-body").append("\
			<div class='form-inline'> \
					<div class='form-group'> \
						<label>Empresa</label><br> \
						<input style='width:300px;' class='form-control' type='text' name='empresa[]' > \
					</div> \
					<div class='form-group'> \
						<label>cargo</label><br> \
						<input style='width:auto;' class='form-control' type='text' name='cargo' > \
					</div> \
					<div class='form-group'> \
						<label>Fecha de comienzo</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_laboral[]' > \
					</div> \
					<div class='form-group'> \
						<label>Fecha de finalización</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_laboral[]' > \
					</div> \
				</div>");
		formatear();	
	}

	function agregarFormacionComplementaria(){
		$("#formacion_complementaria").find(".group-body").append("<div class='form-inline'> \
					<div class='form-group'> \
						<label>Nombre del curso</label><br> \
						<input style='width:300px;' class='form-control' type='text' name='curso[]' > \
					</div> \
					<div class='form-group'> \
						<label>Fecha de comienzo</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_curso[]' > \
					</div> \
					<div class='form-group'> \
						<label>Fecha de finalización</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_curso[]' > \
					</div> \
				</div>");
		formatear();
	}

	function agregarDominioIdiomas(){
		$("#dominio_idiomas").find(".group-body").append("<div class='form-inline'> \
					<div class='form-group'> \
						<label>Idioma</label><br> \
						<input style='width:300px;' placeholder='ejemplo: Ingles' class='form-control' type='text' name='idioma[]' > \
					</div> \
					<div class='form-group'> \
					<br> \
						<label class='radio' for='radio_nivel_1'><input type='radio' id='' value='basico' name='nivel_idioma[]'> Basico</label>	\
						<label class='radio' for='radio_nivel_2'><input type='radio' id='' value='medio' name='nivel_idioma[]'> Medio</label>	\
						<label class='radio' for='radio_nivel_3'><input type='radio' id='' value='alto' name='nivel_idioma[]'> Alto</label>	 \
					</div> \
				</div>");
		formatear();
	}

	function agregarInformatica(){
		$("#informatica").find(".group-body").append("<div class='form-inline'> \
					<div class='form-group'> \
						<label>Softwares</label><br> \
						<input style='width:300px;' placeholder='ejemplo: Microsoft Word' class='form-control' type='text' name='idioma[]' > \
					</div> \
					<div class='form-group'> \
					<br> \
						<label class='radio' for=''><input type='radio' id='' value='basico' name='nivel_software[]'> Basico</label>	\
						<label class='radio' for=''><input type='radio' id='' value='usuario' name='nivel_software[]'> Usuario</label>	\
						<label class='radio' for=''><input type='radio' id='' value='experto' name='nivel_software[]'> Experto</label>	\
					</div> \
				</div>	");
	}
	
	function removerFila(parent){

		if($(parent).find(".group-body").find(".form-inline").size() > 1){
			$(parent).find(".group-body").find(".form-inline").last().remove();
		}
	}

	formatear();
	function formatear(){
		$(".fecha").datepicker();
		$(".fecha").attr("placeholder","00/00/0000");
		$(".fecha").attr("pattern","^([0-9]{2})+[/]+([0-9]{2})+[/]+([0-9]{4})");
		//$(".fecha").attr("required",true);
		$(".fecha").css("width",150);
		$("input[type='text']").attr("required",true);
		$("input[type='radio']").attr("required",true);

		$("input").attr("autocomplete","off");
	}

	function agregarTitulo(){
		var titulo = prompt("Digita el nombre del titulo","");
		
		if(titulo != null){
			registrarTitulo(titulo);
			cargarTitulos($(".titulo"));
		}
		
	}

	cargarTitulos($(".titulo"));
	function cargarTitulos(contenedor){
		$.ajax({
			url: "<?=base_url('Ajax/CargarTitulos')?>",
			datatype: "html",
			success: function(data){
				if(data != null){
					$(contenedor).html(data);
					$("select[name='titulo[]']").addClass("form-control");
					$("select[name='titulo[]']").css("width","230px");
				}
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(jqXHR.responseText);
				alert("Ha ocurrido un error y no se ha podido procesar la peticion. \n"+errorThrown);
			},
			async: true
		});
	}

</script>