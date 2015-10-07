
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
				<li><a href="<?=base_url('Perfil')?>">Perfil</a></li>
				<li><a href="<?=base_url('Correo')?>">Mensajes</a></li>
			
				<li><a href="<?=base_url('Publicaciones/Cursos')?>">Cursos</a></li>
				<li><a href="<?=base_url('Publicaciones/Becas')?>">Becas</a></li>
				<li><a href="javascript:cargarCurriculum()">Curriculum</a></li>
			</ul>
		</div>
	</div>
	<div class="col-md-10 col-lg-10" style="padding-right:0px;">
		<div id="area_perfil">
					  
		    <!--Div a donde se cargan los errores-->
		    <div id="area_response" class="panel panel-danger text-danger panel-body response-area"></div>
		      
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
			
				<li><button form="formActualizarPerfil" id="update" class="btn btn-primary btn-sm">Actualizar perfil</button></li>
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
								<input form="formActualizarPerfil" name="cedula" id="cedula" class="form-control" type="text" value="<?=$perfil->cedula?>">
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
								<input form="formActualizarPerfil" value="<?=date_toDMY($perfil->fecha_nacimiento)?>" id="fecha_nacimiento" name="fecha_nacimiento" class="form-control fecha" type="text" value="<?=""?>">
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
								<div id="carrera_area"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Año de egresado:</label>
							<div class="col-sm-6">
								<input form="formActualizarPerfil" value="<?=$perfil->fecha_egresado?>" id="fecha_egresado" name="fecha_egresado" id="fecha_egresado" class="form-control" type="text" value="<?=""/*$perfil->año_egresado*/?>">
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
					<p class="help-block">Desactivar cuenta</p>
					<hr>
					<form method="post" action="<?=base_url('Perfil/DesactivarCuenta')?>" id="formDesactivarCuenta">
						<div class="form-group">
							<span class="help-block">Puedes desactivar temporalmente tu cuenta, esta volvera a estar activa la proxima vez que inicies sesión.
							Cuando tu cuenta se encuentre inactiva los demás usuarios no podran enviarte mensajes.</span>
						</div>
						<div class="form-group">
							<button class="btn btn-danger btn-sm">Desactivar cuenta</button>
						</div>
					</form>
				</div><!--Fin de la columna-->
			</div><!--Fin de informacion de la cuenta-->
				
			<!--Informacion de contacto-->
		    <div role="tabpanel" class="tab-pane" id="info_contacto">
				<div class="col-md-12 col-lg-12">
				<p class="help-block">Información de contacto</p>
				<hr>
					<div class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-sm-3">Telefono:</label>
							<div class="col-sm-6">
								<input form="formActualizarPerfil" id="telefono" name="telefono" class="form-control" type="text" value="<?=$perfil->telefono?>">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Celular:</label>
							<div class="col-sm-6">
								<input form="formActualizarPerfil" id="celular" name="celular" class="form-control" type="text" value="<?=$perfil->celular?>">
							</div>
						</div>	
					</div>
					<p class="help-block">Ubicación actual</p>
					<hr>
						<div class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-3">Departamento:</label>
								<div class="col-sm-6">
									<div id="departamento_area"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3">Municipio:</label>
								<div class="col-sm-6">
									<div id="municipio_area"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3">Dirección:</label>
								<div class="col-sm-6">
									<textarea form="formActualizarPerfil" name="direccion" id="direccion" class="form-control" rows="4"><?=$perfil->direccion?></textarea>
								</div>
							</div>
						</div>
				</div>
        	</div><!--Fin de la informacion de contacto-->

        	<div role="tabpanel" class="tab-pane" id="privacidad">
				<div class="col-md-12 col-lg-12">
					<p class="help-danger">La configuración de privacidad te permite que información parcial de tu perfil sea filtrada solamente a determinados grupos de usuarios, ejemplo: empresas, usuarios no registrados en el sistema.</p>
					<p class="text-danger">Puedes filtrar la información de contacto,ubicación actual, foto de perfil, curriculum, empleado o no.</p>
					<br>
					<label>¿Quienes pueden ver mi foto de perfil?</label>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_foto" value="publica">
					  	Publica
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_foto" value="empresas">
					  	Solamente empresas
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input class="privada" form="formActualizarPerfil" type="radio" name="visiblidad_foto" value="privada">
					  	Unicamente yo o privada
					  </label>
					</div>

					<label>¿Quienes pueden ver mi informacion de contacto?</label>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_contacto" value="publica">
					  	Publica
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_contacto" value="empresas">
					  	Solamente empresas
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input class="privada" form="formActualizarPerfil" type="radio" name="visiblidad_contacto" value="privada">
					  	Unicamente yo o privada
					  </label>
					</div>

					<label>¿Quienes pueden saber mi ubicación?</label>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_ubicacion" value="publica">
					  	Publica
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_ubicacion" value="empresas">
					  	Solamente empresas
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input class="privada" form="formActualizarPerfil" type="radio" name="visiblidad_ubicacion" value="privada">
					  	Unicamente yo o privada
					  </label>
					</div>

					<label>¿Quienes pueden ver mi curriculum?</label>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_curriculum" value="publica">
					  	Publica
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_curriculum" value="empresas">
					  	Solamente empresas
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input class="privada" form="formActualizarPerfil" type="radio" name="visiblidad_curriculum" value="privada">
					  	Unicamente yo o privada
					  </label>
					</div>

					<label>¿Quienes pueden ver mi informacion adicional?</label>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_info_adicional" value="publica">
					  	Publica
						  </label>
						</div>
					<div class="radio">
					  <label>
					    <input form="formActualizarPerfil" type="radio" name="visiblidad_info_adicional" value="empresas">
					  	Solamente empresas
					  </label>
					</div>
					<div class="radio">
					  <label>
					    <input class="privada" form="formActualizarPerfil" type="radio" name="visiblidad_info_adicional" value="privada">
					  	Unicamente yo o privada
					  </label>
					</div>
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
<script type="text/javascript" src="<?=base_url('public/js/perfil.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/Jquery.cedula_plugin.js')?>"></script>
<script type="text/javascript">
	
	$(document).ready(function(){

		listarDepartamentos(<?=$perfil->departamento_id?>,"formActualizarPerfil","form-control");
		listarMunicipios($("#departamento").val(),<?=$perfil->municipio_id?>,"formActualizarPerfil","form-control");
		listarCarreras(<?=$perfil->carrera_id?>,"formActualizarPerfil","form-control");

		$("#cambiar_imagen").click(function(){
			$("#imagen").trigger("click");
		});

		$("#imagen").change(function(){
			$("#formSubirImg").submit();
		});

		$("#telefono").mask("0000-0000",{placeholder: "0000-0000"});
		$("#celular").mask("0000-0000",{placeholder: "0000-0000"});
		$("#fecha_nacimiento").datepicker({dateFormat:"dd/mm/yy"});

		$("#cedula").mask("000-000000-0000A",{placeholder: "000-000000-0000L"});
		$("#fecha_egresado").mask("0000",{placeholder: "0000"});
		
	});
	
	function cargarCurriculum(){
		$("#area_perfil").load("<?=base_url('Curriculum')?>");
	}
	
	$("#formActualizarPerfil").submit(function(e){
		e.preventDefault();
		if($("#cedula").valida()){
			validarForm(this,$("#area_response"));
		}else{
			alert("Formato de Cedula Incorrecto");
		}
	});
	
</script>