<?php
	if(!isset($ficha) || $ficha == null ){
		
		exit("<p class='bg-danger' style='padding:15px;text-align:center;'>No se ha podido cargar la información</p>");
	}
?>
<div class="def-bg">
	<h3 class="form-title">Editar publicación <small>ficha ocupacional</small></h3>
	<form action="<?=base_url('Ficha/Actualizar')?>" name="formEditarFicha" id="formEditarFicha" method="post" enctype="multipart/form-data">
		<input type="hidden" name="ficha_id" value="<?=$ficha->ficha_id?>">
		<input type="hidden" name="publicacion_id" value="<?=$ficha->publicacion_id?>">
		<input type="hidden" name="imagen_publicacion_id" value="<?=$ficha->imagen_publicacion_id?>">
		
		<div class="form-group" style="">
			<label for="" class="">Denominación del cargo (<small>Obligatorio</small>):</label><br>	
			<input value="<?=$ficha->cargo?>" accept="image/jpg" required value="<?php echo set_value("cargo"); ?>" type="text" class="form-control" name="cargo" data-trigger="focus" data-container="body" data-placement="right" data-toggle="popover" title="Denominación del Cargo" data-content="
			Escriba el nombre del cargo, ejemplo: (Gerente General, Administrador, Contador, etc.)">
		</div>
		<div class="form-group">
		<label for="descripcion">Descripción general (<small>Obligatorio</small>):</label><br>
		<textarea required name="descripcion"  id="descripcion" cols="30" rows="4" class="form-control" data-trigger="focus" data-container="body" data-toggle="popover" data-placement="top" title="Descripción de la publicación" data-content="
		Breve descripción generalizando la información del puesto o cargo."><?=formatearTexto($ficha->descripcion)?></textarea>
		</div>
		<div class="form-group">
			<input type="file" name="imagen" id="imagen"/>
		</div>
		<div class="form-group">
			<label  for="" class="">Ubicación de cargo (<small>Obligatorio</small>):</label><br>		
			<input required value="<?=$ficha->ubicacion?>" type="text" class="form-control" name="ubicacion" data-trigger="focus" data-toggle="popover" data-placement="right" title="Ubicacion del Cargo" data-content="
			Escriba el área en la que se ubica el Cargo, (ejemplo: Gerencia, Finanzas, etc.)">
		</div>

		<div class="form-group">
			<label for="" class="">Cantidad de puestos (<small>Obligatorio</small>):</label><br>	
			<select class="form-control" value="" name="cantidad" id="cantidad" id="">
				<?php
					for ($i=1; $i <= 100; $i++) { 
						if($ficha->cantidad == $i){
							echo "<option selected value='$i'>$i</option>";
						}else{
							echo "<option value='$i'>$i</option>";
						}
					}
				?>
			</select>
		</div>
		<div class="form-group">:
			<label for="" class="">Jefe inmediato (<small>Obligatorio</small>):</label><br>		
			<input value="<?=$ficha->jefe?>" type="text" class="form-control" name="jefe" data-toggle="popover" data-placement="right" title="Jefe inmediato" data-trigger="focus" data-content="
			Digite el cargo del jefe inmediato del puesto vacante, (ejemplo: Gerente, Administrador, etc.)">
		</div>
		<div class="form-group">
		<label for="" class="">Experiencia (<small>Obligatorio</small>):</label>		
			<input required value="<?=$ficha->experiencia?>"  type="text" class="form-control" name="experiencia" data-toggle="popover" data-placement="right" title="Experiencia"  data-trigger="focus" data-content="
			Ingrese la experiencia requerida para el cargo ofertado.">
		</div>
		<div class="form-group">
			<label for="" class="">Personal a cargo:</label>		
			<textarea class="form-control" name="a_cargo" id="a_cargo" cols="30" rows="6" data-toggle="popover" data-placement="top" title="Personal a Cargo" data-trigger="focus" data-content="
			Escriba los cargos del personal que estar bajo la responsabilidad del puesto ofertado. (Ejemplo: Administrador, Contador, etc.)
			Nota =  en caso de que el puesto no tenga personal a cargo, escribir ninguno.
			"><?=$ficha->a_cargo?></textarea>
		</div>
		<div class="form-group">
			<label for="" class="">Finalidad (<small>Obligatorio</small>)</label>		
			<textarea class="form-control" name="finalidad" id="" cols="30" rows="6" data-toggle="popover" data-placement="top" title="Finalidad" data-trigger="focus" data-content="
			Digite la finalidad que tendrá el cargo, (ejemplo: Planificar, Organizar, Dirigir y controlar el funcionamiento y desarrollo de la empresa)."><?=formatearTexto($ficha->finalidad)?></textarea>
		</div>
		<div class="form-group">
			<label for="" class="">Requisitos (<small>Obligatorio</small>)</label>		
			<textarea class="form-control" name="requisitos" id="requisitos" cols="30" rows="6" data-toggle="popover" data-placement="top" title="Requisitos" data-trigger="focus" data-content="
			Titulaciones, certificaciones, cursos o el dominio de alguna herramienta.Describa las destrezas o estudios necesarios para aplicar al cargo ofertado."><?=formatearTexto($ficha->requisitos)?></textarea>
		</div>
		<div class="form-group">
			<label for="" class="">Competencia (<small>Obligatorio</small>)</label>		
			<textarea class="form-control" name="competencia" id="" cols="30" rows="6" class="form-control" data-toggle="popover" data-placement="top" title="Competencia" data-trigger="focus" data-content="
			Escriba las aptitudes que deberá poseer el aplicante al cargo, (ejemplo: Ética, Alto sentido de la responsabilidad, Alta capacidad de análisis y de síntesis, etc.)"><?=formatearTexto($ficha->competencia)?></textarea>
		</div>
		<div class="form-group">
			<label for="" class="">Funciones y/o responsabilidades (<small>Obligatorio</small>)</label>		
			<textarea class="form-control" name="funciones" id="funciones" cols="30" rows="6" data-toggle="popover" data-placement="top" title="Funciones y responsabilidades" data-trigger="focus" data-content="
			Defina las funciones y responsabilidades que debera de ejecutar el aspirante al puesto (ejemplo: mantener una línea directa de comunicación con sus colaboradores para estar al tanto de la situación de la empresa)."><?=formatearTexto($ficha->funciones)?></textarea>
		</div>
		<div class="form-group">
			<?php
				$fecha = date_create($ficha->fecha_alta);
			?>
			<label for="">Seleccione la fecha en la que la publicación dejara de estar visible (<small>Obligatorio</small>)</label>
			<input autocomplete="off" value="<?=date_format($fecha,'d/m/Y')?>" class="form-control" style="width:150px;" type="text" id="fecha" maxlength="10" placeholder="dd/mm/aaaa" name="fecha_alta" data-toggle="popover" data-trigger="focus" data-placement="top" title="Fecha de Alta" data-content="
			Seleccione la fecha en la que la publicación dejara de estar visible.">
		</div>
		<div class="form-group">
		<label for="">Filtrar publicacion para las siguientes carreras(<small>Obligatorio</small>).</label>
		<?php
			if(isset($carreras))
			{
				foreach ($carreras->result() as $row) {
					$cont = false;
					foreach($carrera->result() as $row2){
						if ($row2->carrera_id==$row->carrera_id) {
							if ($row2->filtro == true) {
								echo "
								<div class='form-group'>
									<div  class='checkbox'>
										<label for='checkbox_$row->carrera_id'>
											<input type='checkbox' id='checkbox_$row->carrera_id' name='carreras[]' value='$row->carrera_id' checked> $row->nombre_carrera
										</label>
									</div>
								</div>
								";
								$cont = true;
							}
						}
					}
					if ($cont == true){

					}else{
						echo "
							<div class='form-group'>
								<div  class='checkbox'>
									<label for='checkbox_$row->carrera_id'>
										<input type='checkbox' id='checkbox_$row->carrera_id' name='carreras[]' value='$row->carrera_id'> $row->nombre_carrera
									</label>
								</div>
							</div>
							";
							$cont=false;
					}
				}
			}
		?>
		</div>
	</form>
	<div class="text-center bg-primary" style="padding:10px;display:none;" id="errorArea"></div>
	<div class="modal-footer">
		<button form="formEditarFicha" class="btn btn-primary" type="submit">Guardar</button>
		<button form="formEditarFicha" type="reset" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
	</div>
<?php
	function formatearTexto($str){

		return str_replace("<br />", "", $str);
	}
?>
<style type="text/css">
	input,select{
		max-width: 450px;
	}
</style>
<script type="text/javascript" src="<?=base_url('public/js/precarga.js')?>"></script>
<script type="text/javascript">
	
	$("#imagen").filestyle({
		input: true,
		buttonText: "Añadir imagen publicitaria",
		buttonName: "btn-default",
		size: "sm",
		buttonBefore: true,
		icon: false

	});

	$("#fecha").datepicker({dateFormat: 'dd/mm/yy'});
	$(function (){
  		$('[data-toggle="popover"]').popover()
	})

	$("#formEditarFicha").submit(function(e){
		e.preventDefault();
		validarFormulario(this);
	});
</script>
