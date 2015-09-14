<?php
	if($perfil == null){
		exit("<h3>No se ha podido cargar el perfil</h3>");
	}
?>
<input type="hidden" value="formActualizarPerfil" id="defaultForm">
<input type="hidden" value="<?=base_url()?>" id="base_url"><!--CARGANDO LA URL BASE-->
<div class="container no-padding">
	<div class="col-md-2 col-lg-2 no-padding">
		<div class="perfil">
			<a href="#" id="cambiar_imagen" class="thumbnail">
				<?php
			
					if(file_exists("uploads/". getImagenPerfil())){
						?> <img src="<?=base_url('uploads/'. getImagenPerfil())?>" alt=""> <?
					}else{
						?> <img src="<?=base_url('public/res/no_image.gif')?>" alt=""> <?
					}
				?>
				<span class="glyphicon glyphicon-camera"></span>
			</a>
			<div class="perfil-nombre">
				<label>
					<?=$perfil->nombre?>
				</label>
			</div>
			<div class="perfil-correo">
				<strong>
					<small><?=getCorreo()?></small>
				</strong>
			</div>

			<ul id="perfil_menu" class="perfil-menu">
				<li><a href="<?=base_url('Correo')?>">Mensajes</a></li>
				<li><a href="javascript:cargarCurriculum()">Curriculum</a></li>
				<li><a href="">Cursos</a></li>
				<li style=""><a href="">Becas</a></li>
			</ul>

			<script type="text/javascript">

				console.log($(".perfil-menu").html());
				
			</script>
		</div>
	</div>
	<div class="col-md-10 col-lg-10" style="padding-right:0px;">
		<div id="area_perfil">

			<!-- formulario-->
			<form action="<?=base_url('Egresado/ActualizarPerfil')?>" method="post" id="formActualizarPerfil">
			    <input type="hidden" id="egresado_id" name="egresado_id" value="<?=$perfil->egresado_id?>">
			    <input type="hidden" id="persona_id" name="persona_id" value="<?=$perfil->persona_id?>">
			    <input type="hidden" id="contacto_id" name="contacto_id" value="<?=$perfil->contacto_id?>">
			    <input type="hidden" id="usuario_id" name="usuario_id" value="<?=$perfil->usuario_id?>">
			    <input type="hidden" id="municipio_id" name="municipio_id" value="<?=$perfil->municipio_id?>">
			    <input type="hidden" id="departamento_id" name="departamento_id" value="<?=$perfil->departamento_id?>">
		    	<input type="hidden" id="carrera_id" name="carrera_id" value="<?=$perfil->carrera_id?>">   
			</form>
			
			<!--menu de pestañas-->
			<ul class="nav nav-tabs" role="tablist">
			    <li role="presentation" class="active"><a href="#info_personal" role="tab" data-toggle="tab">Informacion personal</a></li>
			    <li role="presentation"><a href="#info_cuenta" aria-controls="profile" role="tab" data-toggle="tab">Informacion de cuenta</a></li>
			    <li role="presentation"><a href="#info_contacto" aria-controls="messages" role="tab" data-toggle="tab">Informacion de contacto</a></li>
			    <li role="presentation"><a href="#contraseña" aria-="settings" role="tab" data-toggle="tab">Cambiar contraseña</a></li>
			
				<li><button form="formActualizarPerfil" class="btn btn-primary btn-sm">Actualizar perfil</button></li>
			</ul>

			<!--Paneles-->
			<div class="tab-content">
			    <div role="tabpanel" class="tab-pane active" id="info_personal">
			   		<div class="col-md-6 col-lg-6">
			   			<div class="form-group">
				   			<label for="">Nombre</label>
			                 <input required form="formActualizarPerfil" type="text" id="nombre" name="nombre" class="form-control">
		                </div>
		                <div class="form-group">
			                <label for="">Apellido</label>
			                <input required form="formActualizarPerfil" type="text" id="apellido" name="apellido" class="form-control">
		                </div>
		                <div class="form-group">
		                	<label required for="">Sexo</label>
		                	<select form="formActualizarPerfil" name="genero" id="genero" class="form-control">
			              	    <option value="M">Masculino</option>
				                <option value="F">Femenino</option>
		               		</select>
		                </div>
		                <div class="form-group">
             				<label for="">Fecha de nacimiento</label>
			                <?php
			                	$sqldate = $perfil->fecha_nacimiento;
								$fecha = date("d/m/Y",strtotime($sqldate));
			                ?>
			               	<input maxlength="10" required form="formActualizarPerfil" value="<?=$fecha?>" type="text" id="fecha_nacimiento" name="fecha_nacimiento" class="form-control">
						</div>
						<div class="form-group">
		                    <label for="">Carrera</label>
		                    <div id="carrera_seleccion"></div>
		              	</div>
			    	</div>
			    	<div class="col-md-6 col-lg-6">
			    		<div class="form-group">
			                <label for="">Carnet</label>
			                <input form="formActualizarPerfil" form="formActualizarPerfil" type="text" id="carnet" disabled class="form-control" >
		                </div>
		                <div class="form-group">
			                <label for="">Cedula</label>
			                <input form="formActualizarPerfil" form="formActualizarPerfil" type="text" id="cedula" name="cedula" class="form-control">
		                </div>
		                <div class="form-group">
		                	<label for="">¿Te encuentras trabajando actualmente?</label>
		                	<div class="radio">
		                		<label for="check_trabaja_1"><input form="formActualizarPerfil" type="radio" name="trabaja" value="1" id="check_trabaja_1">Si</label>
          					</div>
          					<div class="radio">
          						<label for="check_trabaja_2"><input form="formActualizarPerfil" type="radio" name="trabaja" value="0" id="check_trabaja_2">No</label>
          					</div>
		                </div>
		                <div class="form-group">
		                	<label for="">¿Posees tu titulo?</label>
		                	<div class="radio">
		                		<label for="check_titulado_1"><input form="formActualizarPerfil" type="radio" name="titulado" value="1" id="check_titulado_1">Si</label>
          					</div>
          					<div class="radio">
          						<label for="check_titulado_2"><input form="formActualizarPerfil" type="radio" name="titulado" value="0" id="check_titulado_2">No</label>
          					</div>
		                </div>
			    	</div>
			   </div>
			<div role="tabpanel" class="tab-pane" id="info_cuenta">
				<div class="col-md-5 col-lg-5">
					<div class="form-group">
						<label for="">Correo</label>
						<input required form="formActualizarPerfil" type="text" name="correo" id="correo" class="form-control">
					</div>
					
				</div>
				<div class="col-md-5 col-lg-5">
					<div class="form-group">
						<label for="">Ultima vez que iniciaste sesión</label>
						<p id="sesion"></p>
					</div>
					<div class="form-group">
						<label for="">Estado de la cuenta</label>
						<p id="estado"></p>
					</div>
					<div class="form-group">
						<button class="btn btn-danger">Desactivar cuenta</button>
					</div>
				</div>
			</div>
		    <div role="tabpanel" class="tab-pane" id="info_contacto">
		    	<div class="col-lg-5 col-md-5">
			    	<div class="form-group">
			        	<label for="">Telefono</label>
			        	<input form="formActualizarPerfil tel" type="text" name="telefono" value="<?=$perfil->telefono?>" class="form-control tel">
			        </div>
	        		<div class="form-group">
	          			<label for="">Celular</label>
	          			<input form="formActualizarPerfil" type="text" name="celular" value="<?=$perfil->celular?>" class="form-control tel">
	        		</div>
		    	</div>
				<div class="col-lg-5 col-md-5">
					<div class="form-group">
            			<label for="">Departamento</label>
           				<div id="departamento_seleccion"></div>
        			</div>
			        <div class="form-group">
			        	<label for="">Municipio</label>
						<div id="municipio_seleccion"></div>
			        </div>
			        <div class="form-group">
			          	<label for="">Dirección actual</label>
			          	<textarea form="formActualizarPerfil" class="form-control" name="direccion" id="direccion" cols="30" rows="4"><?=$perfil->direccion?></textarea>
			        </div>
				</div>
        	</div>
	  		<div role="tabpanel" class="tab-pane" id="contraseña">
		  		<div class="col-lg-5 col-md-5">
		  			<form method="post" action="<?=base_url('Perfil/CambiarClave')?>" name="formCambiarClave" id="formCambiarClave">
	              		<div class="form-group">
			                <label for="">Digite su contraseña actual</label>
			                <input type="password" name="clave_actual" class="form-control">
	             		</div>
			           	<div class="form-group">
			            	<label for="">Contraseña</label>
							<input required type="password" name="clave_nueva" class="form-control">
						</div>
			            <div class="form-group">
			            	<label for="">Repite contraseña</label>
							<input required type="password" name="clave_repetida" class="form-control">
						</div>
		              	<div class="form-group">
		                	<input onclick="cambiarClave()" class="btn btn-danger" value="Cambiar contraseña">
		              	</div>
           			</form>
		  		</div>
		  		<div class="col-md-5 col-lg-5">
		        	<div id="cambiarClaveRespuesta"></div>
		        </div>
			</div>
		</div>
	</div>
	</div>

</div>	
<form action="<?=base_url('Perfil/CambiarImagenDePerfil')?>" method="POST" id="formSubirImg" enctype='multipart/form-data'>
	<input type="file" name="imagen" id="imagen" style="visibility:hidden" accept=".jpg,.png,.gif,.jpeg">
</form>
<link rel="stylesheet" href="<?=base_url('public/css/perfil.css')?>"></link>
<script type="text/javascript" src="<?=base_url('public/js/jquery.mask.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		var perfil = <?=json_encode($perfil)?>;

		$("#nombre").val(perfil.nombre);
		$("#apellido").val(perfil.apellido);
		$("#carnet").val(perfil.carnet);
		$("#cedula").val(perfil.cedula);

		$("#correo").val(perfil.correo);
		$("#sesion").text(perfil.ultima_sesion);

		if(perfil.activo){
			$("#estado").text("Activa");
		}
		
		if(perfil.sexo == 'F'){
			document.getElementById("genero").selectedIndex = 1;
		}

		if(perfil.trabaja == true){
			$("#check_trabaja_1").attr("checked",true);
		}else{
			$("#check_trabaja_2").attr("checked",true);
		}

		if(perfil.titulado == true){
			$("#check_titulado_1").attr("checked",true);
		}else{
			$("#check_titulado_1").attr("checked",true);
		}

		$("#carrera").attr("form","formActualizarPerfil");

		$("#formCambiarClave").submit(function(e){
			e.preventDefault();
			cambiarClave(this);
		});
			
		$("#cambiar_imagen").click(function(){
			$("#imagen").trigger("click");
		});

		$("#imagen").change(function(){
			$("#formSubirImg").submit();
		});

		$(".tel").mask("0000-0000",{placeholder: "0000-0000"});
		$("#cedula").mask("000-000000-0000A",{placeholder: "000-000000-0000S"});

	});
	
	function cargarCurriculum(){
		$("#area_perfil").load("<?=base_url('Curriculum')?>");
	}

	function cambiarClave(){
		var form = document.getElementById("formCambiarClave");

		if(form.clave_actual.value !="" && form.clave_nueva.value != "" && form.clave_repetida.value != ""){
			if(confirm("¿Esta seguro que desea cambiar su contraseña?")){
			   	$.ajax({url:form.action,
				data: $(form).serialize(),
				type: "post",
				datatype: "html",
				success:function(data){
					$("#cambiarClaveRespuesta").html(data);
				},
				aync: false
				});
    		}

		}else{
			alert("Hay campos incompletos");
		}
	}
</script>