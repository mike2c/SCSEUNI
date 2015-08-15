<input type="hidden" name="base_url" id="base_url" value="<?=base_url()?>">
<div class='container' style="background-color: white;border:1px solid gray;margin-top:5px;">
	<h2 class='page-header'>
	Creación de curriculum vitae
	</h2>
	<form action='<?=base_url('Curriculum/Guardar')?>'>
	<!--FORMACION ACADEMICA-->
		<div id='form_academica' class='parent-field'>
			<h3 class='form-title'>Formación Acádemica</h3>
			<div id='form_academica_container'>
				<div id='form_academica_field' class="curr_field">
					<div class='form-inline'>
						<div class='form-group'>
							<label>Nombre de la titulación</label><br>
							<div class='input-group'>
							<div class='titulo'></div>
						    	<div class="input-group-btn">
						        <button id="btnAgregarTitulo" onclick='agregarTitulo()' type='button' class='btn btn-warning'>Agregar</button>
						     
						      </div><!-- /btn-group -->
						    </div><!-- /input-group -->
						</div>
						<div class='form-group'>
							<label>Fecha de comienzo</label><br>
							<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_formacion[]' >
						</div>
						<div class='form-group'>
							<label>Fecha de finalización</label><br>
							<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_formacion[]' >
						</div><br>
					</div>			
				</div>
					<div id='form_academica_field' class="curr_field">
					<div class='form-inline'>
						<div class='form-group'>
							<label>Nombre de la titulación</label><br>
							<div class="input-group">
							<div class="titulo"></div>
						    	<div class="input-group-btn">
						        <button id="btnAgregarTitulo" onclick="agregarTitulo()" type="button" class="btn btn-warning">Agregar</button>
						     
						      </div><!-- /btn-group -->
						    </div><!-- /input-group -->
						</div>
						<div class='form-group'>
							<label>Fecha de comienzo</label><br>
							<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_formacion[]' >
						</div>
						<div class='form-group'>
							<label>Fecha de finalización</label><br>
							<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_formacion[]' >
						</div><br>
					</div>			
				</div>
			</div>
			
			<div class='field-footer'>
				<a href='javascript:agregarCampoFormAcademica()' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:eliminarFila(form_academica_container)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
	<!--EXPERIENCIA LABORAL-->
		<div id='exp_laboral' class='parent-field'>
			<h3 class='form-title'>Experiencia Laboral</h3>
			<div id="exp_laboral_container">
				<div id='exp_laboral_field' class="curr_field">
					<div class='form-inline'>
						<div class='form-group'>
							<label>Empresa</label><br>
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
			</div>
			<div class='field-footer'>
				<a href='javascript:agregarFila(exp_laboral_field)' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:eliminarFila(exp_laboral_container)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<!--FORMACION COMPLEMENTARIA-->
		<div id='form_complementaria' class='parent-field'>
			<h3 class='form-title'>Formación complementaria</h3>
			<div id="form_complementaria_container">
				<div id='form_complementaria_field' class="curr_field">
					<div class='form-inline'>
						<div class='form-group'>
							<label>Curso</label><br>
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
			</div>
			
			<div class='field-footer'>
				<a href='javascript:agregarFila(form_complementaria_field)' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:eliminarFila(form_complementaria_container)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<!--IDIOMAS-->
		<div id='dom_idiomas' class='parent-field'>
			<h3 class='form-title'>Dominio de idiomas</h3>
			<div id="dom_idiomas_container">
				<div id='dom_idiomas_field' class="curr_field">
					<div class='form-inline'>
						<div class='form-group'>
							<label>Idioma</label><br>
							<input style='width:300px;' placeholder='ejemplo: Ingles' class='form-control' type='text' name='idioma[]' >
						</div>
						<div class='form-group'>
						<br>
							<label class='radio' for='radio_nivel_1'><input type='radio' id='' value='basico' name='nivel_idioma[]'> Basico</label>	
							<label class='radio' for='radio_nivel_2'><input type='radio' id='' value='medio' name='nivel_idioma[]'> Medio</label>	
							<label class='radio' for='radio_nivel_3'><input type='radio' id='' value='alto' name='nivel_idioma[]'> Alto</label>	
						</div>
					
					</div>			
				</div>
			</div>
		
			<div class='field-footer'>
				<a href='javascript:agregarFila(dom_idiomas_field)' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:eliminarFila(dom_idiomas_container)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<!--IDIOMAS-->
		<div id='dom_informatica' class='parent-field'>
			<h3 class='form-title'>Informatica</h3>
			<div id="dom_informatica_container">
				<div id='dom_informatica_field' class="curr_field">
					<div class='form-inline'>
						<div class='form-group'>
							<label>Softwares</label><br>
							<input style='width:300px;' placeholder='ejemplo: Microsoft Word' class='form-control' type='text' name='idioma[]' >
						</div>
						<div class='form-group'>
						<br>
							<label class='radio' for='informatica_nivel_1'><input type='radio' id='' value='basico' name='nivel_software[]'> Basico</label>	
							<label class='radio' for='informatica_nivel_2'><input type='radio' id='' value='usuario' name='nivel_software[]'> Usuario</label>	
							<label class='radio' for='informatica_nivel_3'><input type='radio' id='' value='experto' name='nivel_software[]'> Experto</label>	
						</div>
					</div>			
				</div>
			</div>
		
			<div class='field-footer'>
				<a href='javascript:agregarFila(dom_informatica_field)' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:eliminarFila(dom_informatica_container)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<br>
		<div class="form-group">
			<button class="btn btn-primary" type="submit">Crear curriculum</button>
			<button class="btn btn-danger" type="button">Cancelar</button>
		</div>
	</form>

</div>
<style type='text/css'>
	#btnAgregarTitulo{
		
		padding: 0px 8px;
		height: 28px;
		line-height: 28px;
	}

	body{
		background-color: #03447F;
	}
	
	.page-header{
		text-align: left;
		color: #337AB7;
	}

	.radio{
		font-size: 16px;
		margin-right: 20px;
	}
	
	.radio label{
		
		display: block;
	}

	.form-title{
		color: #337AB7;
	}

	.form-inline{
		background-color: rgba(174,174,174,0.2);
		padding:8px;
		margin-bottom:2px;
	}

	.form-inline .form-group{
		margin-right: 10px;
		
	}

	.parent-field{
		padding-bottom: 10px;
		padding:10px;
		border:1px solid lightgray;
		border-radius: 0px;
		margin-bottom: 10px;
	}
	.field-footer{
		margin-top: 10px;
		border-top:1px solid lightgray;
		overflow: auto;
		padding-top: 5px;
	}

	.field-footer a{
		
		display: inline-block;
		width: 100px;
		margin-right: 10px;
		float: right;
		text-decoration: underline;
	}
	
	.field-footer a:hover{

		font-weight: bold;
	}

	.form-control{
		border-radius: 0px;
	}


</style>
<script type="text/javascript" src="<?=base_url('public/js/curriculum.js')?>"></script>
<script type='text/javascript'>
	$(document).ready(function(){
		indexarRadios();		
		cargarTitulos();
		formatearCamposAgregados();
	});
	
	function cargarTitulos(){
		$.ajax({
			url: "<?=base_url('Ajax/CargarTitulos')?>",
			datatype: "html",
			success: function(data){
				if(data != null){
					$(".titulo").html(data);
					$("select[name='titulo[]']").addClass("form-control");
					$("select[name='titulo[]']").css("width","230px");
				}
			},
			error: function(jqXHR, textStatus, errorThrown){

			},
			async: true
		});
		
	}

	function indexarRadios(){

		$(".radio").each(function(indice,element){
			element.setAttribute("for",indice);
			$(element).find("input[type='radio']").attr("id",indice);
		});
	}

	function eliminarFila(parent){
		if($(parent).find(".curr_field").size() > 1){
			$(parent).find(".curr_field").last().remove();
		}
		
	}

	function agregarFila(field){
		var parent = $(field).parent();
		var clon = $(field).clone();
		
		$(clon).attr("id",$(clon).attr("id")+$(parent).find("div").size());
		$(clon).find("input").each(function(indice,elemento){
			elemento.value = "";
		});

		$(clon).find("select").attr("selectedIndex",0);
		$(clon).appendTo($(parent));
		indexarRadios();
		//formatearCamposAgregados();
	}

	function agregarTitulo(){
		var titulo = prompt("Digita el nombre del titulo","");
		if(titulo != ""){
			registrarTitulo(titulo);
			cargarTitulos();
		}
	}

	function agregarCampoFormAcademica(){
		$("#formacion_academica_container")("<div id='form_academica_field' class='curr_field'>
					<div class='form-inline'>
						<div class='form-group'>
							<label>Nombre de la titulación</label><br>
							<div class='input-group'>
							<div class='titulo'></div>
						    	<div class='input-group-btn'>
						        <button id='btnAgregarTitulo' onclick='agregarTitulo()' type='button' class='btn btn-warning'>Agregar</button>
						     
						      </div><!-- /btn-group -->
						    </div><!-- /input-group -->
						</div>
						<div class='form-group'>
							<label>Fecha de comienzo</label><br>
							<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_formacion[]' >
						</div>
						<div class='form-group'>
							<label>Fecha de finalización</label><br>
							<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_formacion[]' >
						</div><br>
					</div>			
				</div>");
	}
	
	function formatearCamposAgregados(){
		$(".fecha").each(function(indice, elemento){
			elemento.id = "";
			$(elemento).datepicker();
			$(elemento).attr("placeholder","00/00/0000");
		});
		
		$('input[type="radio"]').attr('required','true');
	}
</script>