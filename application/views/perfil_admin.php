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
			    <li role="presentation" class="active"><a href="#info_personal" role="tab" data-toggle="tab">Datos personales</a></li>
			    <li role="presentation"><a href="#info_cuenta" aria-controls="profile" role="tab" data-toggle="tab">Mi cuenta</a></li>
			    <li role="presentation"><a href="#info_contacto" aria-controls="messages" role="tab" data-toggle="tab">Contacto</a></li>
			    <li role="presentation"><a href="#privacidad" aria-="settings" role="tab" data-toggle="tab">Privacidad</a></li>
			
				<li><button form="formActualizarPerfil" class="btn btn-primary btn-sm">Actualizar perfil</button></li>
			</ul>

			<!--Paneles-->
			<div class="tab-content">

			<!--Informacion personal-->
			<div role="tabpanel" class="tab-pane active" id="info_personal">
				<div class="col-md-12 col-lg-12">
					<p class="help-block">Información personal</p>
					<hr>
					<div class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-sm-3">Cedula:</label>
							<div class="col-sm-6">
								<input form="formActualizarPerfil" name="cedula" class="form-control" type="text" value="<?=$perfil->cedula?>">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Nombre:</label>
							<div class="col-sm-6">
								<input form="formActualizarPerfil" name="nombre" class="form-control" type="text" value="<?=$perfil->nombre?>">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Apellido:</label>
							<div class="col-sm-6">
								<input form="formActualizarPerfil" name="apellido" class="form-control" type="text" value="<?=$perfil->apellido?>">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Genero:</label>
							<div class="col-sm-6">
								<select form="formActualizarPerfil" class="form-control" name="genero" id="genero">
									<?php
										if($perfil->sexo == "F"){
											echo "<option value='M'>Masculino</option>";
											echo "<option selected value='F'>Femenino</option>";
										}else{
											echo "<option selected value='M'>Masculino</option>";
											echo "<option value='F'>Femenino</option>";
										}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Fecha de nacimiento:</label>
							<div class="col-sm-6">
								<input form="formActualizarPerfil" name="fecha_nacimiento" class="form-control fecha" type="text" value="<?=""?>">
							</div>
						</div>
					</div>
					<p class="help-block">Información de estudio</p><hr>
					<div class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-sm-3">Carnet:</label>
							<div class="col-sm-6">
								<input disabled class="form-control" type="text" value="<?=$perfil->carnet?>">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Carrera:</label>
							<div class="col-sm-6">
								<div id="carrera_seleccion"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Año de egresado:</label>
							<div class="col-sm-6">
								<input name="año_egresado" id="año_egresado" class="form-control" type="text" value="<?=""/*$perfil->año_egresado*/?>">
							</div>
						</div>
					</div>

					<p class="help-block">Información adicional</p><hr>
					<!--Trabajando-->
					<label for="">¿Actualmente te encuentras trabajando?</label>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="trabaja" id="optionsRadios1" value="1" checked>
					  	Si, actualmente me encuentro trabajando.
					  </label>
					</div>
					<?php
						if(!$perfil->trabaja){
							?>
							<div class="radio">
							  <label>
							    <input form="formActualizarPerfil" type="radio" name="trabaja" id="optionsRadios1" value="0" checked>
							  	No.
							  </label>
							</div>
							<?
						}else{
						?>
						<div class="radio">
						  <label>
						    <input form="formActualizarPerfil" type="radio" name="trabaja" id="optionsRadios1" value="0">
						  	No.
						  </label>
						</div>
						<?
						}
					?>
					
					<!--Curriculum-->
					<label for="">¿Ya posees el titulo de ingeniero de la UNI?</label>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="titulado" value="1" checked>
					  	Si, ya poseo el titulo.
					  </label>
					</div>
					<?php
						if(!$perfil->titulado){
							?>
							<div class="radio">
							  <label>
							    <input form="formActualizarPerfil" type="radio" name="titulado" value="0" checked>
							  	No, aun no poseo el titulo.
							  </label>
							</div>
							<?
						}else{
							?>
							<div class="radio">
							  <label>
							    <input form="formActualizarPerfil" type="radio" name="titulado" value="0">
							  	No, aun no poseo el titulo.
							  </label>
							</div>
							<?
						}
					?>
				
				</div>
			</div>

			<!--Informacion de la cuenta-->
			<div role="tabpanel" class="tab-pane" id="info_cuenta">
				<div class="col-md-12 col-lg-12">
					<p class="help-block">Cambiar correo</p>
					<hr>
						<div class="form-horizontal">
							<div class="form-group">
						    	<label for="inputEmail3" class="col-sm-3 control-label">Correo:</label>
						    	<div class="col-sm-6">
							    	<input required value="<?=$perfil->correo?>" form="formActualizarPerfil" type="correo" class="form-control" name="correo" id="correo" placeholder="cambiar correo">
							    </div>
						  	</div>
						</div>
					<p class="help-block">Cambiar contraseña</p>							
					<hr>
					<form class="form-horizontal" action="<?=base_url('Perfil/CambiarClave')?>" name="formCambiarClave" id="formCambiarClave">
						<div class="form-group">
					    	<label for="inputEmail3" class="col-sm-3 control-label">Actual:</label>
					    	<div class="col-sm-6">
						      <input required type="password" class="form-control" name="clave_actual" placeholder="contraseña actual">
						    </div>
					  	</div>
					  	<div class="form-group">
					    	<label for="inputEmail3" class="col-sm-3 control-label">Nueva:</label>
					    	<div class="col-sm-6">
						      <input required type="password" class="form-control" name="clave_nueva" placeholder="nueva contraseña">
						    </div>
					  	</div>
					  	<div class="form-group">
					    	<label for="inputEmail3" class="col-sm-3 control-label">Repite la contraseña</label>
					    	<div class="col-sm-6">
						      <input required type="password" class="form-control" name="clave_repetida" placeholder="repite la contraseña">
						    </div>
					  	</div>
					  	<div class="form-group">
					  		<div class="col-sm-9">
					  			<button type="submit" class="pull-right btn btn-danger btn-sm">Cambiar contraseña</button>
					  		</div>
					  	</div>
					  	<div class="form-group">
					  		<p id="cambiarClaveRespuesta" style="padding:10px;display:none" class="text-center bg-danger text-danger"></p>
					  	</div>
					</form>
				</div><!--Fin de la columna-->
			</div><!--Fin de informacion de la cuenta-->
		</div>
	</div>
	</div>

</div>	
<form action="<?=base_url('Perfil/CambiarImagenDePerfil')?>" method="POST" id="formSubirImg" enctype='multipart/form-data'>
	<input type="file" name="imagen" id="imagen" style="visibility:hidden" accept=".jpg,.png,.gif,.jpeg">
</form>
<link rel="stylesheet" href="<?=base_url('public/css/perfil.css')?>"></link>
<script type="text/javascript" src="<?=base_url('public/js/jquery.mask.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/perfil.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript">
	
	$(document).ready(function(){

		$("#carrera").attr("form","formActualizarPerfil");

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

	
</script>
<style type="text/css">
body{
	overflow-y:scroll;
}
	hr{
		margin: 0px 0px;
		margin-bottom: 10px;
	}

	p.help-block{
		margin-bottom: 4px;
	}
	.bg-primary{
		padding: 10px;
	}
</style>