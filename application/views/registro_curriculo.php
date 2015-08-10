<script type="text/javascript" src="jquery-1.3.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var counter = 2;
		
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

		$.crearDiv = function(div_name,labels_name, input_name,sub_div){				
			var newTextboxs = $(document.createElement('div'))
			.attr("id",sub_div + counter, "class","form-group");
			newTextboxs.after().html($.crearText(labels_name,input_name));
			newTextboxs.appendTo("#"+div_name);
			counter ++;
			console.log();
		}

		$.borrarDiv = function(div_name){
				if (counter == 2){
				alert("No se pueden borrar más campos");
				return false;
			}
			counter --;
			$("#"+div_name+ counter).remove();
		}

		$("#addDiv1").click(function () {
			var nombreLabel = ["Empresa","Cargo","Fecha Comienzo","Fecha Finalización"];
			var nombreInput = ["empresa","cargo","fecha_exp_comienzo","fecha_exp_finalizacion"];
			$.crearDiv("exp_lab_grp",nombreLabel,nombreInput,"exp_lab");
		});

		$("#removeDiv1").click(function (){
			$.borrarDiv("exp_lab");
		});

		$("#addDiv2").click(function () {
			var nombreLabel = ["Titulo","Fecha Comienzo","Fecha Finalización"];
			var nombreInput = ["titulo","fecha_formacion_comienzo","fecha_formacion_finalizacion"];
			$.crearDiv("for_acad_grp",nombreLabel,nombreInput,"form_acad");
		});

		$("#removeDiv2").click(function (){
			$.borrarDiv("form_acad");
		});

		$("#addDiv3").click(function () {
			var nombreLabel = ["Curso","Fecha Comienzo","Fecha Finalización"];
			var nombreInput = ["curso","fecha_formacion_comienzo","fecha_formacion_finalizacion"];
			$.crearDiv("for_comp_grp",nombreLabel,nombreInput,"form_comp");
		});

		$("#removeDiv3").click(function (){
			$.borrarDiv("form_comp");
		});

		$("#addDiv4").click(function () {
			var nombreLabel = ["Idioma","Nivel"];
			var nombreInput = ["idioma","nivel_idioma"];
			$.crearDiv("idioma_grp",nombreLabel,nombreInput,"idioma");
		});

		$("#removeDiv4").click(function (){
			$.borrarDiv("idioma");
		});

		$("#addDiv5").click(function () {
			var nombreLabel = ["Software","Nivel"];
			var nombreInput = ["software","nivel_software"];
			$.crearDiv("informatica_grp",nombreLabel,nombreInput,"infor");
		});

		$("#removeDiv5").click(function (){
			$.borrarDiv("infor");
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
				<label class="page-header">Experiencia Laboral</label><label class="page-header">
				<input type="button" class="btn btn-primary btn-sm" value="Agregar Experiencias" id="addDiv1" />
				<input type="button" class="btn btn-danger btn-sm" value="Borrar Experiencias" id="removeDiv1" /></label><br/>
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
				<input type="button" class="btn btn-primary btn-sm" value="Agregar formación academica" id="addDiv2" />
			<input type="button" class="btn btn-danger btn-sm" value="Borrar formación academica" id="removeDiv2" />
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
				<input type="button" class="btn btn-primary btn-sm" value="Agregar formación complementaria" id="addDiv3" />
			<input type="button" class="btn btn-danger btn-sm" value="Borrar formación complementaria" id="removeDiv3" />
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
				<input type="button" class="btn btn-primary btn-sm" value="Agregar idioma" id="addDiv4" />
			<input type="button" class="btn btn-danger btn-sm" value="Borrar idioma" id="removeDiv4" />
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
			<input type="button" class="btn btn-primary btn-sm" value="Agregar informatica" id="addDiv5" />
			<input type="button" class="btn btn-danger btn-sm" value="Borrar informatica" id="removeDiv5" />
			</label>
				<div id="infor1">
					<label>Software:</label>
					<input type="text" class="form-control" name="software[]" id="software" />
					<label>Nivel:</label>
					<input type="text" class="form-control" name="nivel_software[]" id="nivel_software" />
				</div>
			</div>
			
		</div>
	</div>
</div>
</form>