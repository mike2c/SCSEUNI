<div style="padding:0px 10px;border-left:1px solid lightgray">
	<h3 class="form-title">Nueva ficha ocupacional</h3>

	<form action="<?=base_url('Ficha/Crear')?>" name="formCrearFicha" id="formCrearFicha" method="post" enctype="multipart/form-data">
	
		<div class="form-group">
			<label class="">Elige una imagen para la publicación(<small>Opcional</small>)</label><br>
			<img id="precarga" onclick="buscarImagen()" src="<?=base_url('public/res/add_image.png')?>" alt="La imagen no se puede visualizar">
			<input type="file" name="imagen" id="imagen" >
		</div>
		<div class="form-group">
			<label for="">Breve descripcion para la publicación:</label><br>
			<textarea required name="descripcion" id="descripcion" cols="30" rows="4" class="form-control"></textarea>
		</div>
		<div class="form-inline" style="">
			<div class="form-group" style="">
				<label for="" class="">Denominación del cargo</label><br>	
				<input required style="width:360px;" type="text" class="form-control" name="cargo">
			</div>
			<div class="form-group">
				<label  for="" class="">Ubicación de cargo</label><br>		
				<input required style="width:360px;" type="text" class="form-control" name="ubicacion">
			</div>
		</div>
		<br>
		<div class="form-inline">
			<div class="form-group">
				<label for="" class="">Cantidad de puestos</label><br>	
				<input required maxlength="4" title="Digite un valor numerico" pattern="^([1-9])" style="width:360px;" type="text" class="form-control" name="cantidad">
			</div>
				<div class="form-group">
				<label for="" class="">Jefe inmediato</label><br>		
				<input style="width:360px;"  type="text" class="form-control" name="jefe">
			</div>
		</div><br>
		<div class="form-group">
		<label for="" class="">Experiencia</label>		
			<input required style=""  type="text" class="form-control" name="experiencia">
		</div>
		<div class="form-group">
			<label for="" class="">Personal a cargo</label>		
			<textarea class="form-control" name="a_cargo" id="a_cargo" cols="30" rows="4"></textarea>
		</div>
		
		<div class="form-group">
			<label for="" class="">Finalidad</label>		
			<textarea class="form-control" name="finalidad" id="" cols="30" rows="5"></textarea>
		</div>
		<div class="form-group">
			<label for="" class="">Requisitos</label>		
			<textarea class="form-control" name="requisitos" id="requisitos" cols="30" rows="5"></textarea>
		</div>
		
		<div class="form-group">
			<label for="" class="">Competencia</label>		
			<textarea class="form-control" name="competencia" id="" cols="30" rows="5" class="form-control"></textarea>
		</div>
		<div class="form-group">
			<label for="" class="">Funciones y responsabilidades</label>		
			<textarea class="form-control" name="funciones" id="funciones" cols="30" rows="5"></textarea>
		</div>
		<div class="form-group">
			<label for="">Seleccione la fecha en la que la publicación dejara de estar visible</label>
			<input autocomplete="off" class="form-control" style="width:150px;" type="text" id="fecha" maxlength="10" placeholder="dd/mm/aaaa" name="fecha_alta">
		</div>
		<div class="">
		<label for="">Seleccione las carreras a las que se mostrara esta ficha.</label>
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
		<div class="form-group">
			<p id="shown_errors">
				
			</p>
		</div>
		<br>
	</form>
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
</style>
<script type="text/javascript" src="<?=base_url('public/js/precarga.js')?>"></script>
<script type="text/javascript">
	
	function buscarImagen(){
		$("#imagen").trigger("click");
	}

	$("#fecha").datepicker();
</script>
