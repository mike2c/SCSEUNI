<?php
	if(!isset($beca) || empty($beca) || $beca == null){
		exit("<p class='bg-danger' style='padding:15px;text-align:center;'>No se ha podido cargar la información</p>");
	}

	$beca = $beca->row();
?>
<div class="def-bg">
	<form action="<?=base_url("Beca/Actualizar")?>" method="post" id="formEditarPublicacion" enctype="multipart/form-data">
		<h3 class="form-title">Editar publicación <small>Beca</small></h3>
		
		<input type="hidden" name="beca_id" value="<?=$beca->beca_id?>">
		<input type="hidden" name="publicacion_id" value="<?=$beca->publicacion_id?>">
		<input type="hidden" name="imagen_publicacion_id" value="<?=$beca->imagen_publicacion_id?>">
		<div class="form-group">
			<label for="">Programa académico</label>
			<input required class="form-control" value="<?=$beca->programa_academico?>" type="text" id="programa_academico" name="programa_academico">
		</div>
		<div class="form-group">
			<label for="">Descripción:</label>
			<textarea required class="form-control" name="descripcion" id="descripcion" cols="30" rows="4"><?=formatearTexto($beca->descripcion)?></textarea>
		</div>
		<div class="form-group">
			<input class="" type="file" name="imagen" id="imagen">
		</div>
		<div class="form-group">
			<label for="">Sitio web <small>para mayor informacion</small></label>
			<input pattern="https?://.+" placeholder="www.ejemplo.com" value="<?=$beca->url?>" class="form-control" type="text" name="url" id="url">
		</div>
		<div class="form-group">
			<label for="">Dejar de publicar hasta:</label>
			<?php
				$fecha = date_create($beca->fecha_alta);
			?>
			<input required class="form-control" value="<?=date_format($fecha,'d-m-Y')?>" type="text" name="fecha_alta" id="fecha">
		</div>
		<div class="form-group">
			<label for="">Filtrar publicación para las siguientes carreras:</label>
			<?php
				if(isset($carrera)){
					foreach ($carrera->result() as $row) {
						if($row->filtro == TRUE)	{
							echo "
							<div class='form-group'>
								<div  class='checkbox'>
									<label for='checkbox_$row->carrera_id'>
										<input checked type='checkbox' id='checkbox_$row->carrera_id' name='carreras[]' value='$row->carrera_id'> $row->nombre_carrera
									</label>
								</div>
							</div>";	
						}else{
							echo "
							<div class='form-group'>
								<div  class='checkbox'>
									<label for='checkbox_$row->carrera_id'>
										<input type='checkbox' id='checkbox_$row->carrera_id' name='carreras[]' value='$row->carrera_id'> $row->nombre_carrera
									</label>
								</div>
							</div>";	
						}
						
					}
					
				}
			?>
		</div>
	</form>
	<div class="text-center bg-primary" style="padding:15px;display:none;" id="errorArea"></div>
	<div class="modal-footer">
		<button onclick="cargarBecas()" class="btn btn-default" form="formPublicarBeca" data-dismiss="modal">Cancelar</button>
		<button type="submit" form="formEditarPublicacion" type="button" class="btn btn-primary">Guardar</button>
	</div>	
</div>
<?php
	function formatearTexto($str){
		return str_replace("<br />", "", $str);
	}
?>
<script type="text/javascript">

	$("input").css("max-width",450);

	$("#fecha").datepicker({dateFormat: 'dd/mm/yy'});
	$("#formEditarPublicacion").submit(function(e){
		e.preventDefault();
		validarFormulario(this);
	});

	$("#descripcion").popover({
		title: "Descripción general",
		content: "Información general y concisa sobre la beca.",
		trigger: "focus",
		placement: "top"
	});
	
	$("#programa_academico").popover({
		title: "Programa académico",
		content: "Descripcion del curso,profesión.(ejemplo: Curso de Photoshop, Posgrado en finanzas avanzadas)",
		trigger: "focus",
		placement: "right"
	});

	$("#imagen").filestyle({
		input: true,
		buttonText: "Añadir imagen publicitaria",
		buttonName: "btn-default",
		size: "sm",
		buttonBefore: true,
		icon: false

	});
	$("#fecha_alta").popover({
		title: "Fecha de culminacion de publicación",
		content: "Seleccione la fecha en la que esta publicación dejara de estar visible al publico.",
		trigger: "focus",
		placement: "right"
	});
</script>