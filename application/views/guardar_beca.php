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
</style>

<div style="padding:0px 10px;border-left:1px solid lightgray">
	<h3 class="form-title">Nueva Publicación de Beca</h3>
	<form action="<?=base_url('Beca/crearBeca')?>" name="formCrearBeca" id="formCrearBeca" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label class="">Elige una imagen para la publicación(<small>Opcional</small>)</label><br>
			<img id="precarga" onclick="buscarImagen()" src="<?=base_url('public/res/add_image.png')?>" alt="La imagen no se puede visualizar">
			<input type="file" name="imagen" id="imagen" />
		</div>
		<div class="form-group">
			<label for="">Breve descripcion para la publicación:</label><br>
			<textarea required name="descripcion" id="descripcion" cols="30" rows="4" class="form-control"></textarea>
		</div>
		<div class="form-group">
			<label for="">Seleccione la fecha en la que la publicación dejara de estar visible</label>
			<input autocomplete="off" class="form-control" style="width:150px;" type="text" id="fecha" maxlength="10" placeholder="dd/mm/aaaa" name="fecha_alta">
		</div>
		<div class="form-group" style="">
				<label for="" class="">URL con información de la beca</label><br>	
				<input required style="width:360px;" type="text" class="form-control" name="url">
		</div>
		<div class="">
		<label for="">Seleccione las carreras a las que se mostrara esta Beca.</label>
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
		<div class="form-group">
			<button class="btn btn-primary" type="submit">Guardar</button>
			<button type="reset" class="btn btn-danger">Cancelar</button>
		</div> 
	</form>
</div>

<script type="text/javascript" src="<?=base_url('public/js/precarga.js')?>"></script>
<script type="text/javascript">
	
	function buscarImagen(){
		$("#imagen").trigger("click");
	}

	$("#fecha").datepicker();
</script>