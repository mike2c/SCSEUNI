<script type="text/javascript">
	function cargarTitulos(contenedor,titulo_id){
		$.ajax({
			url: "<?=base_url('Ajax/CargarTitulos').'/'?>"+ titulo_id,
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
<?php
    if(!isset($formacion_academica)){
        exit("<h3>No se ha podido cargar la informacion de curriculum</h3>");
    }
?>
<link rel="stylesheet" href="<?=base_url('public/js/jquery.mask.js')?>">
<div class="contenido">
    <h2 class="form-title">Editar curriculum</h2>
    <form id="form_actualizar_curriculum" action="<?=base_url('Curriculum/Actualizar')?>" method="POST">
	
    <div id="formacion_academica" class="field"><!-- FORMACION ACADEMICA -->
	<input name="curriculum_id" type="hidden" value="<?php echo $curriculum_id; ?>">
        <div class="group-title">
            <h4>1. Formacion academica</h4>
            <p class="help-block">Indica los estudios que has realizado.</p>

        </div>
		<div class='group-body'>
        <?php
		$cont = 1;
             foreach ($formacion_academica->result() as $FA){
                echo "
                        <div class='form-inline'>
                            <div class='form-group'>
								<input name='formacion_academica_id[]' type='hidden' value='$FA->formacion_academica_id'>
                                <label>Nombre de la titulación</label><br>
                                <div class='input-group'>
                                    <div class='titulo' id='titulo_".$cont."'></div>
                                        <div class='input-group-btn'>
                                       	 	<button id='btnAgregarTitulo' onclick='agregarTitulo()' type='button' class='btn btn-warning btn-sm'>Agregar</button>
                                    	</div>
                                </div>
                            </div>
                            <div class='form-group'>
                                <label>Año de comienzo</label><br>
                                <input style='width:auto;'class='form-control fecha' type='text' name='comienzo_formacion[]' value='$FA->fecha_comienzo' >
                            </div>
                            <div class='form-group'>
                                <label>Año de finalización</label><br>
                                <input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_formacion[]' value='$FA->fecha_finalizacion' >
                            </div><br>
                        </div>  
                    ";
					echo "<script>
						cargarTitulos($('#titulo_".$cont."'),'$FA->titulo_id');
					</script>";
					$cont +=1;
            }
        ?>
		</div>
	</div>
        <div class="group-footer">
			<a href='javascript:nuevaFormacionAcademica()' name='btn_agregar'>Agregar Fila</a>
			<a href='javascript:removerFila(formacion_academica)' name='btn_eliminar'>Eliminar Fila</a>
		</div>
		 <hr class="">
		      <div id="experiencia_laboral" class="field"><!-- EXPERIENCIA LABORAL -->
			<div class="group-title">
				<h4>2. Experiencia Laboral</h4>
			</div>
        <?php 
            if($experiencia_laboral==""){
                echo '
			<div class="group-body">
				<div class="form-inline">
                    <div class="form-group">
						<label>cargo</label><br>
						<input style="width:auto;" class="form-control" type="text" name="cargo[]" >
					</div>
					<div class="form-group">
						<label>Nombre de la empresa</label><br>
						<input style="width:300px;" class="form-control" type="text" name="empresa[]" >
					</div>
					<div class="form-group">
						<label>Año de comienzo</label><br>
						<input style="width:auto;" class="form-control fecha" type="text" name="comienzo_laboral[]" >
					</div>
					<div class="form-group">
						<label>Año de finalización</label><br>
						<input style="width:auto;" class="form-control fecha" type="text" name="finalizacion_laboral[]" >
					</div>
				</div>	
			</div>
                ';
            }else{
				echo "<div class='group-body'>";
				foreach($experiencia_laboral->result() as $EP){
                echo "
				<div class='form-inline'>
                    <div class='form-group'>
					<input name='experiencia_laboral_id[]' type='hidden' value= '$EP->experiencia_laboral_id' >
						<label>cargo</label><br>
						<input style='width:auto;' class='form-control' type='text' name='cargo[]' value='$EP->cargo' >
					</div>
					<div class='form-group'>
						<label>Nombre de la empresa</label><br>
						<input style='width:300px;' class='form-control type='text' name='empresa[]' value='$EP->empresa'>
					</div>
					<div class='form-group'>
						<label>Año de comienzo</label><br>
						<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_laboral[]' value='$EP->fecha_comienzo'>
					</div>
					<div class='form-group'>
						<label>Año de finalización</label><br>
						<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_laboral[]' value='$EP->fecha_finalizacion'>
					</div>
				</div>	
			
                ";
            }
			echo "</div>";
		}
        ?>
        	<div class="group-footer">
				<a href='javascript:agregarExperienciaLaboral()' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:removerFila(experiencia_laboral)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
    
		</div>
		<hr class="">
		<div id="formacion_complementaria" class="field"><!--FORMACION COMPLEMENTARIA-->
			<div class="group-title">
				<h4>3. Formacion Complementaria</h4>
				<p class="help-block">Cursos que has tomado o estudios extras.</p>
			</div>
		<?php 
			if($formacion_complementaria==""){
				echo "
					<div class='group-body'>
						<div class='form-inline'>
						<div class='form-group'>
							<label>Nombre del curso</label><br>
							<input style='width:300px;' class='form-control' type='text' name='curso[]' >
						</div>
						<div class='form-group'>
							<label>Año de comienzo</label><br>
							<input style='width:auto;' class='form-control fecha' type='text name='comienzo_curso[]' >
						</div>
						<div class='form-group'>
							<label>Año de finalización</label><br>
							<input style='width:auto;' class='form-control fecha'' type='text' name='finalizacion_curso[]' >
						</div>
					</div>	
				</div>
				";
			}else{
				echo "<div class='group-body'>";
				foreach($formacion_complementaria->result() as $FC){
					echo "
						
						<div class='form-inline'>
						<div class='form-group'>
						<input name='formacion_complementaria_id[]' type='hidden' value= '$FC->formacion_complementaria_id'>
							<label>Nombre del curso</label><br>
							<input style='width:300px;' class='form-control' type='text' name='curso[]' value= '$FC->curso' >
						</div>
						<div class='form-group'>
							<label>Año de comienzo</label><br>
							<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_curso[]' value= '$FC->fecha_comienzo' >
						</div>
						<div class='form-group'>
							<label>Año de finalización</label><br>
							<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_curso[]' value= '$FC->fecha_finalizacion' >
						</div>
					</div>	
				
					";
				}
			}
		?>
		</div>
		<div class="group-footer">
			<a href='javascript:agregarFormacionComplementaria()' name='btn_agregar'>Agregar Fila</a>
			<a href='javascript:removerFila(formacion_complementaria)' name='btn_eliminar'>Eliminar Fila</a>
		</div>
		
		<hr class="">
		<div id="dominio_idiomas" class="field"><!--DOMINIO DE IDIOMAS-->
			<div class="group-title">
				<h4>4. Dominio de Idiomas</h4>
			</div>
			<?php
				if($idioma==""){
					echo '
						<div class="group-body">
						<div class="form-inline">
							<div class="form-group">
								<label>Idioma</label><br>
								<input style="width:300px;" placeholder="ejemplo: Ingles" class="form-control" type="text" name="idioma[]" >
							</div>
							<div class="form-group">
							<br>
								<label class="radio" for=""><input type="radio" id="" value="basico" name="nivel_idioma[]"> Basico</label>	
								<label class="radio" for=""><input type="radio" id="" value="medio" name="nivel_idioma[]"> Intermedio</label>	
								<label class="radio" for=""><input type="radio" id="" value="alto" name="nivel_idioma[]"> Alto</label>	
							</div>
						</div>	
					</div>
					';
				}else{
					echo "<div class='group-body'>";
					$cont = 0;
					foreach($idioma->result() as $idiom){
						echo "
							
							<div class='form-inline'>
								<div class='form-group'>
								<input name='idioma_id[]' type='hidden' value= '$idiom->idioma_id'>
									<label>Idioma</label><br>
									<input style='width:300px;' placeholder='ejemplo: Ingles' class='form-control' type='text' name='idioma[]' value='$idiom->idioma' >
								</div>
								<div class='form-group'>
								<br>";
									echo"<label class='radio' for=''><input type='radio' id='' value='basico' name='nivel_idioma[".$cont."]' ".(($idiom->nivel == "basico") ? 'checked':'')." > Basico</label>";	
									echo"<label class='radio' for=''><input type='radio' id='' value='medio' name='nivel_idioma[".$cont."]' ".(($idiom->nivel == "medio") ? 'checked':'')."  > Intermedio</label>";	
									echo"<label class='radio' for=''><input type='radio' id='' value='alto' name='nivel_idioma[".$cont."]' ".(($idiom->nivel == "alto") ? 'checked':'')."  > Alto</label>";	
								echo"</div>
							</div>	
						
						";
						$cont += 1;
					}
				}
			?>
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
			<?php
				if($informatica==""){
					echo '
						<div class="group-body">
						<div class="form-inline">
							<div class="form-group">
								<label>Softwares</label><br>
								<input style="width:300px;" placeholder="ejemplo: Microsoft Word" class="form-control" type="text" name="software[]" >
							</div>
							<div class="form-group">
							<br>
								<label class="radio" for=""><input type="radio" id="" value="basico" name="nivel_software[]"> Basico</label>	
								<label class="radio" for=""><input type="radio" id="" value="usuario" name="nivel_software[]"> Usuario</label>	
								<label class="radio" for=""><input type="radio" id="" value="experto" name="nivel_software[]"> Experto</label>	
							</div>
						</div>
					</div>
					';
				}else{
					echo "<div class='group-body'>";
					$cont = 0;
					foreach($informatica->result() as $infor){	
						echo "
						
						<div class='form-inline'>
							<div class='form-group'>
							<input name='informatica_id[]' type='hidden' value='$infor->informatica_id'>
								<label>Softwares</label><br>
								<input style='width:300px;' placeholder='ejemplo: Microsoft Word' class='form-control' type='text' name='software[]' value='$infor->software'>
							</div>
							<div class='form-group'>
							<br>";
							echo"<label class='radio' for=''><input type='radio' id='' value='basico' name='nivel_software[".$cont."]' ".(($infor->nivel == "basico") ? 'checked':'')." > Basico</label>";	
							echo"<label class='radio' for=''><input type='radio' id='' value='usuario' name='nivel_software[".$cont."]' ".(($infor->nivel == "usuario") ? 'checked':'')."> Usuario</label>";	
							echo"<label class='radio' for=''><input type='radio' id='' value='experto' name='nivel_software[".$cont."]' ".(($infor->nivel == "experto") ? 'checked':'')."> Experto</label>";	
							echo"</div>
						</div>
					
						";	
						$cont += 1;
					}
				}
			?>
			</div>
			<div class="group-footer">
				<a href='javascript:agregarInformatica()' name='btn_agregar'>Agregar Fila</a>
				<a href='javascript:removerFila(informatica)' name='btn_eliminar'>Eliminar Fila</a>
			</div>
		</div>
		<div class="form-group">
			<button class="btn btn-primary" type="submit">Actualizar curriculum</button>
			<button class="btn btn-danger" type="button">Cancelar</button>
		</div>
	</form>
	</div>
</div>
<div class="panel panel-danger ">
	<div class="panel-body text-danger content-hidden" id="respuesta">
		
	</div>
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
<script type="text/javascript" src="<?=base_url('public/js/validar.js')?>"></script>
<script type="text/javascript">
	
	function nuevaFormacionAcademica(){

		var child = $("#formacion_academica").find(".group-body").append("<div class='form-inline'> \
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
						<label>Año de comienzo</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_formacion[]' > \
					</div> \
					<div class='form-group'> \
						<label>Año de finalización</label><br> \
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
						<label>cargo</label><br> \
						<input style='width:auto;' class='form-control' type='text' name='cargo[]' > \
					</div> \
					<div class='form-group'> \
						<label>Empresa</label><br> \
						<input style='width:300px;' class='form-control' type='text' name='empresa[]' > \
					</div> \
					<div class='form-group'> \
						<label>Año de comienzo</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_laboral[]' > \
					</div> \
					<div class='form-group'> \
						<label>Año de finalización</label><br> \
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
						<label>Año de comienzo</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='comienzo_curso[]' > \
					</div> \
					<div class='form-group'> \
						<label>Año de finalización</label><br> \
						<input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_curso[]' > \
					</div> \
				</div>");
		formatear();
	}

	function agregarDominioIdiomas(){
		count = $("#dominio_idiomas .group-body .form-inline").size();	
		
		$("#dominio_idiomas").find(".group-body").append("<div class='form-inline'> \
					<div class='form-group'> \
						<label>Idioma</label><br> \
						<input style='width:300px;' placeholder='ejemplo: Ingles' class='form-control' type='text' name='idioma[]' > \
					</div> \
					<div class='form-group'> \
					<br> \
						<label class='radio' for='radio_nivel_1'><input type='radio' id='' value='basico' name='nivel_idioma[" + count + "]'> Basico</label>	\
						<label class='radio' for='radio_nivel_2'><input type='radio' id='' value='medio' name='nivel_idioma[" + count + "]'> Intermedio</label>	\
						<label class='radio' for='radio_nivel_3'><input type='radio' id='' value='alto' name='nivel_idioma[" + count + "]'> Alto</label>	 \
					</div> \
				</div>");
		formatear();

	}

	function agregarInformatica(){

		contador = $("#informatica .group-body .form-inline").size();

		$("#informatica").find(".group-body").append("<div class='form-inline'> \
					<div class='form-group'> \
						<label>Softwares</label><br> \
						<input style='width:300px;' placeholder='ejemplo: Microsoft Word' class='form-control' type='text' name='software[]' > \
					</div> \
					<div class='form-group'> \
					<br> \
						<label class='radio' for=''><input type='radio' id='' value='basico' name='nivel_software[" + contador + "]'> Basico</label>	\
						<label class='radio' for=''><input type='radio' id='' value='usuario' name='nivel_software[" + contador + "]'> Usuario</label>	\
						<label class='radio' for=''><input type='radio' id='' value='experto' name='nivel_software[" + contador + "]'> Experto</label>	\
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
		//$(".fecha").datepicker();

		$(".fecha").mask("0000",{
			placeholder: "0000"
		});
		$(".fecha").css("width",150);
		$("input").attr("autocomplete","off");
	}

	function agregarTitulo(){
		var titulo = prompt("Digita el nombre del titulo","");
		
		if(titulo != null){
			registrarTitulo(titulo);
			cargarTitulos($(".titulo"));
		}
		
	}
	$("#form_actualizar_curriculum").submit(function(e){
		e.preventDefault();
		validarForm(this,$("#respuesta"));
	});
</script>