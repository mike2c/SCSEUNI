<?php
	if($curso == null || empty($curso)){
		exit("<p>No se puede carga la información de la publicación</p>");
	}
?>
<div class="def-bg">
	<form action="<?=base_url("Curso/Actualizar")?>" method="post" id="formPublicacion" enctype="multipart/form-data">
	<h3 class="form-title">Editar publicación <small>Curso</small></h3>
	<input type="hidden" name="publicacion_id" value="<?=$curso->publicacion_id?>">
	<input type="hidden" name="curso_id" value="<?=$curso->curso_id?>">

	<div class="form-group">
		<label for="">Descripción:</label>
		<textarea required class="form-control" name="descripcion" id="descripcion" cols="30" rows="4"><?=$curso->descripcion?></textarea>
	</div>
	<div class="form-group">
		<input class="" type="file" name="imagen" id="imagen">
	</div>
	<div class="form-group">
		<label for="">Costo <small>dólares</small>:</label>
		<input required class="form-control" value="<?=$curso->costo?>" type="text" name="costo" id="costo">
	</div>
	<div class="form-group">
		<label for="">Duración <small>meses</small>:</label>
		<input required class="form-control" value="<?=$curso->duracion?>" type="text" name="duracion" id="duracion">
	</div>
	<div class="form-group">
		<?php
			if($curso->libre == TRUE){
				?>
					<label for="libre"><input checked type="checkbox" name="libre" id="libre"> Curso libre</label>
				<?
			}else{
				?>
					<label for="libre"><input type="checkbox" name="libre" id="libre"> Curso libre</label>
				<?
			}
		?>
		
	</div>
	<div class="form-group">
		<label for="">Dejar de publicar hasta:</label>
		<?php
		$fecha = date_create($curso->fecha_alta);

		?>
		<input required class="form-control" value="<?=date_format($fecha,'d-m-Y')?>" type="text" name="fecha_alta" id="fecha_alta">
	</div>
	<div class="form-group">
		<label for="">Filtrar publicación para las siguientes carreras:</label>
		<?php
			if(isset($carrera))
			{
				foreach ($carrera->result() as $row) {
					echo "<div class='form-group'>
						<div  class='checkbox'>
						<label for='checkbox_$row->carrera_id'>";
						if($row->filtro == TRUE){
							echo "<input type='checkbox' checked id='checkbox_$row->carrera_id' name='carreras[]' value='$row->carrera_id'> $row->nombre_carrera";
						}else{
							echo "<input type='checkbox' id='checkbox_$row->carrera_id' name='carreras[]' value='$row->carrera_id'> $row->nombre_carrera";
						}
						echo "</label></div></div>";		
				}
			}
		?>
	</div>
		<!--Div para cargar los errores con ajax-->
	<div class="text-center bg-primary" style="padding:15px;display:none;" id="errorArea"></div>
	<div class="modal-footer">
		<button type="submit" form="formPublicacion" type="button" class="btn btn-primary">Guardar</button>
		<button type="button" onclick="cargarCursos()" class="btn btn-default">Cancelar</button>
	</div>
	</form>
</div>
<script type="text/javascript">

	$("#fecha_alta").datepicker({dateFormat:"dd/mm/yy"});
	$("input[type=text]").css("width",350);
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
	$("#descripcion").popover({
		title: "Descripción general",
		content: "Información general y concisa sobre la beca.",
		trigger: "focus",
		placement: "bottom"
	});

	$("#formPublicacion").submit(function(e){
		e.preventDefault();
		validarFormulario(this);
	});
</script>