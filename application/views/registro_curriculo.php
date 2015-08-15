<<<<<<< HEAD
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
=======
<script type="text/javascript" src="jquery-1.3.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var counter1 = 2;
		var counter2 = 2;
		var counter3 = 2;
		var counter4 = 2;
		var counter5 = 2;
		
		$.crearText = function(l_name, i_name){
			var i = 0;
			var texto ="";
			var text ="";
			if (i===4) {
				i=0;
				texto ="";
				text ="";
			}
			for(i;i<i_name.length;i++){
				texto = ' <label> '+l_name[i] + ':</label>' + ' <input type="text" class = "form-control" name="'+i_name[i]+'[]" id="'+i_name+'" />' ;
				text = text+texto;
			}
			return text;
		}

		$.crearDiv = function(div_name,labels_name, input_name,sub_div, cont, value){				
			var newTextboxs = $(document.createElement('div'))
			.attr("id",sub_div + value, "class","form-group");
			newTextboxs.after().html($.crearText(labels_name,input_name));
			newTextboxs.appendTo("#"+div_name);
			if (cont == "counter1") {
				counter1 ++;
			};
			if (cont == "counter2") {
				counter2 ++;
			};
			if (cont == "counter3") {
				counter3 ++;
			};
			if (cont == "counter4") {
				counter4 ++;
			};
			if (cont == "counter5") {
				counter5 ++;
			};
		}

		$.borrarDiv = function(div_name, cont, value){
				if (value == 2){
				alert("No se pueden borrar más campos");
				return false;
			}
			if (cont == "counter1") {
				counter1 --;
				value = counter1;
			};
			if (cont == "counter2") {
				counter2 --;
				value = counter2;
			};
			if (cont == "counter3") {
				counter3 --;
				value = counter3;
			};
			if (cont == "counter4") {
				counter4 --;
				value = counter4;
			};
			if (cont == "counter5") {
				counter5 --;
				value = counter5;
			};
			$("#"+div_name+ value).remove();
		}

		$("#addDiv1").click(function () {
			var nombreLabel = ["Empresa","Cargo","Fecha Comienzo","Fecha Finalización"];
			var nombreInput = ["empresa","cargo","fecha_exp_comienzo","fecha_exp_finalizacion"];
			$.crearDiv("exp_lab_grp",nombreLabel,nombreInput,"exp_lab","counter1",counter1);
		});

		$("#removeDiv1").click(function (){
			$.borrarDiv("exp_lab","counter1",counter1);
		});

		$("#addDiv2").click(function () {
			var nombreLabel = ["Titulo","Fecha Comienzo","Fecha Finalización"];
			var nombreInput = ["titulo","fecha_formacion_comienzo","fecha_formacion_finalizacion"];
			$.crearDiv("for_acad_grp",nombreLabel,nombreInput,"form_acad","counter2",counter2);
		});

		$("#removeDiv2").click(function (){
			$.borrarDiv("form_acad","counter2",counter2);
		});

		$("#addDiv3").click(function () {
			var nombreLabel = ["Curso","Fecha Comienzo","Fecha Finalización"];
			var nombreInput = ["curso","fecha_formacion_comienzo","fecha_formacion_finalizacion"];
			$.crearDiv("for_comp_grp",nombreLabel,nombreInput,"form_comp","counter3",counter3);
		});

		$("#removeDiv3").click(function (){
			$.borrarDiv("form_comp","counter3",counter3);
		});

		$("#addDiv4").click(function () {
			var nombreLabel = ["Idioma","Nivel"];
			var nombreInput = ["idioma","nivel_idioma"];
			$.crearDiv("idioma_grp",nombreLabel,nombreInput,"idioma","counter4",counter4);
		});

		$("#removeDiv4").click(function (){
			$.borrarDiv("idioma","counter4",counter4);
		});

		$("#addDiv5").click(function () {
			var nombreLabel = ["Software","Nivel"];
			var nombreInput = ["software","nivel_software"];
			$.crearDiv("informatica_grp",nombreLabel,nombreInput,"infor","counter5",counter5);
		});

		$("#removeDiv5").click(function (){
			$.borrarDiv("infor","counter5",counter5);
		});

	});
</script>

<?php
	$atributos = array("class"=>"form-inline");
	echo form_open("curriculo/crearCurriculo",$atributos);
?>
<div class="container">
	<div class="row">
		<div class="col-md-12 col-lg-12 contenido">
			<div id="exp_lab_grp">
				<label class="page-header">Experiencia Laboral
				<input type="button" class="btn btn-link btn-sm" value="Agregar" id="addDiv1" />
				<input type="button" class="btn btn-link btn-sm" value="Borrar" id="removeDiv1" />
				</label><br/>
				<div id="exp_lab1" class="form-group">
					<label>Empresa:</label>
					<input type="text" name="empresa[]" class="form-control" id="empresa"/>
					<label>Cargo:</label>
					<input type="text" class="form-control" name="cargo[]" id="cargo"/>
					<label>Fecha Comienzo:</label>
					<input type="text" class="form-control" name="fecha_exp_comienzo[]" id="fecha_comienzo"/>
					<label>Fecha Finalización:</label>
					<input type="text" class="form-control" name="fecha_exp_finalizacion[]" id="fecha_finalizacion"/><br/>
				</div>
			</div>

			<div id="for_acad_grp">
			<label class="page-header">Formación Académica
				<input type="button" class="btn btn-link btn-sm" value="Agregar" id="addDiv2" />
			<input type="button" class="btn btn-link btn-sm" value="Borrar" id="removeDiv2" />
			</label>
				<div id="form_acad1">
					<label>Titulo:</label>
					<input type="text" class="form-control" name="titulo[]" id="titulo" />
					<label>Fecha Comienzo:</label>
					<input type="text" class="form-control" name="fecha_formacion_comienzo[]" id="fecha_formacion_comienzo" />
					<label>Fecha Finalización:</label>
					<input type="text" class="form-control" name="fecha_formacion_final[]" id="fecha_formacion_final" />
				</div>
			</div>
			

			<div id="for_comp_grp">
			<label class="page-header">Formación Complementaria
				<input type="button" class="btn btn-link btn-sm" value="Agregar" id="addDiv3" />
			<input type="button" class="btn btn-link btn-sm" value="Borrar" id="removeDiv3" />
			</label>
				<div id="form_comp1">
					<label>Curso:</label>
					<input type="text" class="form-control" name="curso[]" id="curso" />
					<label>Fecha Comienzo:</label>
					<input type="text" class="form-control" name="fecha_comp_comienzo[]" id="fecha_comp_comienzo" />
					<label>Fecha Finalización:</label>
					<input type="text" class="form-control" name="fecha_comp_final[]" id="fecha_comp_final" />
				</div>
			</div>
			

			<div id="idioma_grp">
			<label class="page-header">Idiomas
				<input type="button" class="btn btn-link btn-sm" value="Agregar" id="addDiv4" />
			<input type="button" class="btn btn-link btn-sm" value="Borrar" id="removeDiv4" />
			</label>
				<div id="idioma1">
					<label>Idioma:</label>
					<input type="text" class="form-control" name="idioma[]" id="idioma" />
					<label>Nivel:</label>
					<input type="text" class="form-control" name="nivel_idioma[]" id="nivel_idioma" />
				</div>
			</div>
			

			<div id="informatica_grp">
			<label class="page-header">Informática
			<input type="button" class="btn btn-link btn-sm" value="Agregar" id="addDiv5" />
			<input type="button" class="btn btn-link btn-sm" value="Borrar" id="removeDiv5" />
			</label>
				<div id="infor1">
					<label>Software:</label>
					<input type="text" class="form-control" name="software[]" id="software" />
					<label>Nivel:</label>
					<input type="text" class="form-control" name="nivel_software[]" id="nivel_software" />
				</div>
			</div>
			<br/><input type="submit" class="btn btn-primary btn-sm" value="Guardar" />
		</div>
	</div>
</div>
</form>
>>>>>>> 729fd08111a3e492b8f1545c3d6761e52695ded8
