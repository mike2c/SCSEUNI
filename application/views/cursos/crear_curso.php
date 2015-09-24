<div class="modal fade" id="modalPublicacion">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">

				<button type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="crearFichaLabel">Nueva Publicación <small>Beca</small></h4>
			</div>
			<div class="modal-body">
				<form action="<?=base_url("Curso/Insertar")?>" method="post" id="formPublicacion" enctype="multipart/form-data">
					<div class="form-group">
						<label for="">Nombre del curso:</label>
						<input required class="form-control" type="text" name="nombre_curso" id="nombre_curso">
					</div>
					<div class="form-group">
						<label for="">Descripción:</label>
						<textarea required class="form-control" name="descripcion" id="descripcion" cols="30" rows="4"></textarea>
					</div>
					<div class="form-group">
						<input class="" type="file" name="imagen" id="imagen">
					</div>
					<div class="form-group">
						<label for="">Costo <small>dólares</small>:</label>
						<input required class="form-control" type="text" name="costo" id="costo">
					</div>
					<div class="form-group">
						<label for="">Duración <small>meses</small>:</label>
						<input required class="form-control" type="text" name="duracion" id="duracion">
					</div>
					<div class="form-group">
						<label for="libre"><input type="checkbox" name="libre" id="libre"> Curso libre</label>
					</div>
					<div class="form-group">
						<label for="">Dejar de publicar hasta:</label>
						<input required class="form-control" type="text" name="fecha_alta" id="fecha_alta">
					</div>
					<div class="form-group">
						<label for="">Filtrar publicación para las siguientes carreras:</label>
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
			<div class="text-center bg-primary" style="padding:15px;display:none;" id="errorArea"></div>
			<div class="modal-footer">
				<button class="btn btn-default" form="formPublicacion" data-dismiss="modal">Cancelar</button>
        		<button type="submit" form="formPublicacion" type="button" class="btn btn-primary">Guardar</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="<?=base_url('public/js/bootstrap-filestyle.min.js')?>"></script>
<style type="text/css">
	input[type="text"]{
		max-width: 450px;
	}
	.modal-body{
		overflow-y:auto;
	}

	.modal-body{
		max-height: 470px;
	}
</style>
<script type="text/javascript">

	$("#descripcion").popover({
		title: "Descripción general",
		content: "Información general y concisa sobre la beca.",
		trigger: "focus",
		placement: "bottom"
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
	$("#fecha_alta").datepicker({dateFormat:"dd/mm/yy"});

	$("#modalPublicarBeca").on("hidden.bs.modal",function(){
		$("#formPublicacion").trigger("reset");
	});

	$("#formPublicacion").submit(function(e){
		e.preventDefault();
		validarFormulario(this);
	});
	
</script>