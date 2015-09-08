<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#crearFicha">
<div class="modal fade" id="crearFicha" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
		<div style="padding:0px 10px;border-left:1px solid lightgray">
			<h3 class="modal-title">Nueva ficha ocupacional</h3>
			<div class="modal-body">
				<form action="<?=base_url('Ficha/Crear')?>" name="formCrearFicha" id="formCrearFicha" method="post" enctype="multipart/form-data">
					<div class="form-group" id="invalid">
						<?php echo validation_errors(); ?>
					</div>
					<div class="form-group">
						<label class="">Elige una imagen para la publicación(<small>Opcional</small>)</label><br>
						<img id="precarga" onclick="buscarImagen()" src="<?=base_url('public/res/add_image.png')?>" alt="La imagen no se puede visualizar">
						<input type="file" name="imagen" id="imagen" >
					</div>
					<div class="form-group">
						<label for="">Breve Descripción para la publicación(<small>Obligatorio</small>):</label><br>
						<textarea required name="descripcion"  id="descripcion" cols="30" rows="4" class="form-control" data-trigger="focus" data-container="body" data-toggle="popover" data-placement="top" title="Descripción de la publicación" data-content="
						Escriba descripción acerca de la publicación, explicando brevemente la finalidad del cargo y sus funciones."><?php echo set_value("descripcion"); ?></textarea>
					</div>
					<div class="form-inline" style="">
						<div class="form-group" style="">
							<label for="" class="">Denominación del cargo(<small>Obligatorio</small>)</label><br>	
							<input required style="width:360px;" value="<?php echo set_value("cargo"); ?>" type="text" class="form-control" name="cargo" data-trigger="focus" data-toggle="popover" data-placement="top" title="Denominación del Cargo" data-content="
							Escriba el nombre del cargo, ejemplo: (Gerente General, Administrador, Contador, etc.)">
						</div>
						<div class="form-group">
							<label  for="" class="">Ubicación de cargo(<small>Obligatorio</small>)</label><br>		
							<input required style="width:360px;" value="<?php echo set_value("ubicacion"); ?>" type="text" class="form-control" name="ubicacion" data-trigger="focus" data-toggle="popover" data-placement="top" title="Ubicacion del Cargo" data-content="
							Escriba el área en la que se ubica el Cargo, (ejemplo: Gerencia, Finanzas, etc.)">
						</div>
					</div>
					<br>
					<div class="form-inline">
						<div class="form-group">
							<label for="" class="">Cantidad de puestos(<small>Obligatorio</small>)</label><br>	
							<input required maxlength="4" value="<?php echo set_value("cantidad"); ?>" title="Digite un valor numerico" pattern="^([1-9])" style="width:360px;" type="text" class="form-control" name="cantidad" data-trigger="focus" data-toggle="popover" data-placement="top" title="cantidad de puestos" data-content="
							Escriba la cantidad de puestos disponibles para dicho cargo.">
						</div>
							<div class="form-group">
							<label for="" class="">Jefe inmediato(<small>Obligatorio</small>)</label><br>		
							<input style="width:360px;" value="<?php echo set_value("jefe"); ?>" type="text" class="form-control" name="jefe" data-toggle="popover" data-placement="top" title="Jefe inmediato" data-trigger="focus" data-content="
							Digite el cargo del jefe inmediato del puesto vacante, (ejemplo: Gerente, Administrador, etc.)">
						</div>
					</div><br>
					<div class="form-group">
					<label for="" class="">Experiencia(<small>Obligatorio</small>)</label>		
						<input required style="" value="<?php echo set_value("experiencia"); ?>"  type="text" class="form-control" name="experiencia" data-toggle="popover" data-placement="top" title="Experiencia"  data-trigger="focus" data-content="
						Ingrese la experiencia requerida para el cargo ofertado.">
					</div>
					<div class="form-group">
						<label for="" class="">Personal a cargo(<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="a_cargo" id="a_cargo" cols="30" rows="4" data-toggle="popover" data-placement="top" title="Personal a Cargo" data-trigger="focus" data-content="
						Escriba los cargos del personal que estar bajo la responsabilidad del puesto ofertado. (Ejemplo: Administrador, Contador, etc.)
						Nota =  en caso de que el puesto no tenga personal a cargo, escribir ninguno.
						"><?php echo set_value("a_cargo"); ?></textarea>
					</div>
					
					<div class="form-group">
						<label for="" class="">Finalidad(<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="finalidad" id="" cols="30" rows="5" data-toggle="popover" data-placement="top" title="Finalidad" data-trigger="focus" data-content="
						Digite la finalidad que tendrá el cargo, (ejemplo: Planificar, Organizar, Dirigir y controlar el funcionamiento y desarrollo de la empresa)."><?php echo set_value("finalidad"); ?></textarea>
					</div>
					<div class="form-group">
						<label for="" class="">Requisitos(<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="requisitos" id="requisitos" cols="30" rows="5" data-toggle="popover" data-placement="top" title="Requisitos" data-trigger="focus" data-content="
						Describa las destrezas o estudios necesarios para aplicar al cargo ofertado, (ejemplo: Ingeniería industrial, ingeniería de sistemas, etc.)"><?php echo set_value("requisitos"); ?></textarea>
					</div>
					
					<div class="form-group">
						<label for="" class="">Competencia(<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="competencia" id="" cols="30" rows="5" class="form-control" data-toggle="popover" data-placement="top" title="Competencia" data-trigger="focus" data-content="
						Escriba las aptitudes que deberá poseer el aplicante al cargo, (ejemplo: Ética, Alto sentido de la responsabilidad, Alta capacidad de análisis y de síntesis, etc.)"><?php echo set_value("competencia"); ?></textarea>
					</div>
					<div class="form-group">
						<label for="" class="">Funciones y responsabilidades(<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="funciones" id="funciones" cols="30" rows="5" data-toggle="popover" data-placement="top" title="Funciones y responsabilidades" data-trigger="focus" data-content="
						Digite las funciones y responsabilidades que tendrá el cargo ofertado, (ejemplo: mantener una línea directa de comunicación con sus colaboradores para estar al tanto de la situación de la empresa)."><?php echo set_value("funciones"); ?></textarea>
					</div>
					<div class="form-group">
						<label for="">Seleccione la fecha en la que la publicación dejara de estar visible(<small>Obligatorio</small>)</label>
						<input autocomplete="off" value="<?php echo set_value("fecha_alta"); ?>" class="form-control" style="width:150px;" type="text" id="fecha" maxlength="10" placeholder="dd/mm/aaaa" name="fecha_alta" data-toggle="popover" data-trigger="focus" data-placement="right" title="Fecha de Alta" data-content="
						Seleccione la fecha en la que la publicación finalizara y no se podrá aplicar al cargo ofertado.">
					</div>
					<div class="">
					<label for="">Seleccione las carreras a las que se mostrara esta ficha(<small>Obligatorio</small>).</label>
						<?php
							if(isset($carreras))
							{
								foreach ($carreras->result() as $row) {
									echo "
										<div class='form-group'>
											<div  class='checkbox'>
												<label for='checkbox_$row->carrera_id'>
													<input type='checkbox' id='checkbox_$row->carrera_id' name='carreras[]' value='$row->carrera_id'> $row->nombre_carrera
												</label>
											</div>
										</div>
										

									";
								}
							}
						?>
					</div>
			</div>
			<div class="modal-footer">
					<div class="">
						<button class="btn btn-primary" type="submit">Guardar</button>
						<button type="reset" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
					</div>
					<div class="form-group">
						<p id="shown_errors">
							
						</p>
					</div>
						<br>
				</form>
			</div>
			</div>
		</div>
	</div>
</div>
</div>

<style type="text/css">
	form img{
		border:1px solid lightgray;
		border-radius: 10px;
		height: 120px;
		min-width: 120px;
		cursor: pointer;
	}
	img:active{
		background-color: lightgray;
	}
	img:hover{
		border: 2px solid gray;
	}
	input[type="file"]{
		display: none;
	}
	#invalid{color: red;}
</style>
<script type="text/javascript" src="<?=base_url('public/js/precarga.js')?>"></script>
<script type="text/javascript">
	
	function buscarImagen(){
		$("#imagen").trigger("click");
	}

	$("#fecha").datepicker({dateFormat: 'dd/mm/yy'});

	$(function () {
  $('[data-toggle="popover"]').popover()
	})
</script>
