<div class="modal fade" id="crearFicha" role="dialog" aria-labelledby="crearFichaLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="crearFichaLabel">Nueva Publicación <small>Ficha Ocupacional</small></h4>
			</div>
			<div class="modal-body" style="max-height:450px;overflow:hidden;overflow-y:scroll;">
				<form action="<?=base_url('Ficha/Crear')?>" name="formCrearFicha" id="formCrearFicha" method="post" enctype="multipart/form-data">
					<div id="invalid">
						<?php echo validation_errors(); ?>
					</div>
					<div class="form-group" style="">
						<label for="" class="">Denominación del cargo (<small>Obligatorio</small>):</label><br>	
						<input accept="image/jpg" required value="<?php echo set_value("cargo"); ?>" type="text" class="form-control" name="cargo" data-trigger="focus" data-container="body" data-placement="right" data-toggle="popover" title="Denominación del Cargo" data-content="
						Escriba el nombre del cargo, ejemplo: (Gerente General, Administrador, Contador, etc.)" >
					</div>
					<div class="form-group">
					<label for="descripcion">Descripción general (<small>Obligatorio</small>):</label><br>
					<textarea required name="descripcion"  id="descripcion" cols="30" rows="4" class="form-control" data-trigger="focus" data-container="body" data-toggle="popover" data-placement="top" title="Descripción de la publicación" data-content="
					Breve descripción generalizando la información del puesto o cargo."><?php echo set_value("descripcion"); ?></textarea>
					</div>
					<div class="form-group">
						<input type="file" name="imagen" id="imagen"/>
					</div>
					<div class="form-group">
						<label  for="" class="">Ubicación de cargo (<small>Obligatorio</small>):</label><br>		
						<input required value="<?php echo set_value("ubicacion"); ?>" type="text" class="form-control" name="ubicacion" data-trigger="focus" data-toggle="popover" data-placement="right" title="Ubicacion del Cargo" data-content="
						Escriba el área en la que se ubica el Cargo, (ejemplo: Gerencia, Finanzas, etc.)">
					</div>

					<div class="form-group">
						<label for="" class="">Cantidad de puestos (<small>Obligatorio</small>):</label><br>	
						<select class="form-control" name="cantidad" id="cantidad" id=""></select>
					</div>
					<div class="form-group">:
						<label for="" class="">Jefe inmediato (<small>Obligatorio</small>):</label><br>		
						<input value="<?php echo set_value("jefe"); ?>" type="text" class="form-control" name="jefe" data-toggle="popover" data-placement="right" title="Jefe inmediato" data-trigger="focus" data-content="
						Digite el cargo del jefe inmediato del puesto vacante, (ejemplo: Gerente, Administrador, etc.)">
					</div>
					<div class="form-group">
					<label for="" class="">Experiencia (<small>Obligatorio</small>):</label>		
						<input required style="" value="<?php echo set_value("experiencia"); ?>"  type="text" class="form-control" name="experiencia" data-toggle="popover" data-placement="right" title="Experiencia"  data-trigger="focus" data-content="
						Ingrese la experiencia requerida para el cargo ofertado.">
					</div>
					<div class="form-group">
						<label for="" class="">Personal a cargo:</label>		
						<textarea class="form-control" name="a_cargo" id="a_cargo" cols="30" rows="6" data-toggle="popover" data-placement="top" title="Personal a Cargo" data-trigger="focus" data-content="
						Escriba los cargos del personal que estar bajo la responsabilidad del puesto ofertado. (Ejemplo: Administrador, Contador, etc.)
						Nota =  en caso de que el puesto no tenga personal a cargo, escribir ninguno.
						"><?php echo set_value("a_cargo"); ?></textarea>
					</div>
					<div class="form-group">
						<label for="" class="">Finalidad (<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="finalidad" id="" cols="30" rows="6" data-toggle="popover" data-placement="top" title="Finalidad" data-trigger="focus" data-content="
						Digite la finalidad que tendrá el cargo, (ejemplo: Planificar, Organizar, Dirigir y controlar el funcionamiento y desarrollo de la empresa)."><?php echo set_value("finalidad"); ?></textarea>
					</div>
					<div class="form-group">
						<label for="" class="">Requisitos (<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="requisitos" id="requisitos" cols="30" rows="6" data-toggle="popover" data-placement="top" title="Requisitos" data-trigger="focus" data-content="
						Titulaciones, certificaciones, cursos o el dominio de alguna herramienta.Describa las destrezas o estudios necesarios para aplicar al cargo ofertado."><?php echo set_value("requisitos"); ?></textarea>
					</div>
					<div class="form-group">
						<label for="" class="">Competencia (<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="competencia" id="" cols="30" rows="6" class="form-control" data-toggle="popover" data-placement="top" title="Competencia" data-trigger="focus" data-content="
						Escriba las aptitudes que deberá poseer el aplicante al cargo, (ejemplo: Ética, Alto sentido de la responsabilidad, Alta capacidad de análisis y de síntesis, etc.)"><?php echo set_value("competencia"); ?></textarea>
					</div>
					<div class="form-group">
						<label for="" class="">Funciones y/o responsabilidades (<small>Obligatorio</small>)</label>		
						<textarea class="form-control" name="funciones" id="funciones" cols="30" rows="6" data-toggle="popover" data-placement="top" title="Funciones y responsabilidades" data-trigger="focus" data-content="
						Defina las funciones y responsabilidades que debera de ejecutar el aspirante al puesto (ejemplo: mantener una línea directa de comunicación con sus colaboradores para estar al tanto de la situación de la empresa)."><?php echo set_value("funciones"); ?></textarea>
					</div>
					<div class="form-group">
						<label for="">Seleccione la fecha en la que la publicación dejara de estar visible (<small>Obligatorio</small>)</label>
						<input autocomplete="off" value="<?php echo set_value("fecha_alta"); ?>" class="form-control" style="width:150px;" type="text" id="fecha" maxlength="10" placeholder="dd/mm/aaaa" name="fecha_alta" data-toggle="popover" data-trigger="focus" data-placement="bottom" title="Fecha de Alta" data-content="
						Seleccione la fecha en la que la publicación dejara de estar visible.">
					</div>
					<div class="">
					<label for="">Filtrar publicacion para las siguientes carreras(<small>Obligatorio</small>).</label>
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
				</form>
			</div>
			<div class="modal-footer">
				<button form="formCrearFicha" class="btn btn-primary" type="submit">Guardar</button>
				<button form="formCrearFicha" type="reset" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
			</div>
		</div>	
	</div>
</div>
<script type="text/javascript" src="<?=base_url('public/js/bootstrap-filestyle.min.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/precarga.js')?>"></script>
<script type="text/javascript">

	$("#fecha").datepicker({dateFormat: 'dd/mm/yy'});

	$(function () {
 		$('[data-toggle="popover"]').popover()
	})

	$("input:text").css("max-width",500);
	$("select").css("max-width",500);
	$("#imagen").filestyle({
		input: true,
		buttonText: "Imagen para publicación",
		buttonName: "btn-default",
		size: "sm",
		buttonBefore: true,
		icon: false

	});

	for (var i = 1; i <= 100; i++) {
		$("#cantidad").append("<option value='" + i + "'>" + i + "</option>");
	};
</script>
