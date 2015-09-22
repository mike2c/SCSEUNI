<div class="modal fade" id="modalPublicarBeca">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="crearFichaLabel">Nueva Publicación <small>Beca</small></h4>
			</div>
			<div class="modal-body">
				<form action="<?=base_url("Beca/CrearBeca")?>" method="post" id="formPublicarBeca" enctype="multipart/form-data">
					<div class="form-group">
						<label for="">Programa académico</label>
						<input required class="form-control" type="text" id="programa_academico" name="programa_academico">
					</div>
					<div class="form-group">
						<label for="">Descripción:</label>
						<textarea required class="form-control" name="descripcion" id="descripcion" cols="30" rows="4"></textarea>
					</div>
					<div class="form-group">
						<input class="" type="file" name="imagen" id="imagen">
					</div>
					<div class="form-group">
						<label for="">Sitio web <small>para mayor informacion</small></label>
						<input placeholder="htttp://www.ejemplo.com/" class="form-control" type="url" pattern="|^http(s)?://[a-z0-9-]+(.[a-z0-9-]+)*(:[0-9]+)?(/.*)?$|i" name="url" id="url">
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
				<button class="btn btn-default" form="formPublicarBeca" data-dismiss="modal">Cancelar</button>
        		<button type="submit" form="formPublicarBeca" type="button" class="btn btn-primary">Guardar</button>
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
	$("#fecha_alta").datepicker({dateFormat:"dd/mm/yy"});

	$("#modalPublicarBeca").on("hidden.bs.modal",function(){
		$("#formPublicarBeca").trigger("reset");
	});

	$("#formPublicarBeca").submit(function(e){

		$.ajax({
			url: baseURL("Beca/ValidarCampos"),
			data: $(this).serialize(),
			type: "post",
			datatype: "html",
			success: function(data){

				if(data != ""){
					$("#errorArea").show();
					$("#errorArea").html(data);
					e.preventDefault();
				}
			},
			async: false
		});
	});
	
</script>