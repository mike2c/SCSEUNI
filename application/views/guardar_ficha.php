
<br><div class="container">

<div class="row">
	<div class="col-md-5 col-lg-5">
	<form method="post" action="<?=base_url('Ficha/Guardar')?>" enctype="multipart/form-data">
		<div class="form-group well">
			<p>Selecciona la fecha en la que la publicación dejara de ser visible</p>
			<input class="form-control" type="date" name="fecha_alta">
		</div>
		<div class="form-group">
			<label>Escribe una breve descripcion del contenido</label>
			<textarea class="form-control" name="descripcion"></textarea>
		</div>
		<div class="form-group">
			<label>Imagen(<small>opcional</small>)</label>
			<input type="file" name="imagen">
		
		</div>
	<div class="form-group">
		<label for="" class="">Denominación del cargo</label>		
		<input type="text" class="form-control" name="cargo">
	</div>
	<div class="form-group">
		<label for="" class="">Ubicación de cargo</label>		
		<input type="text" class="form-control" name="ubicacion">
	</div>
	<div class="form-group">
		<label for="" class="">Cantidad de puestos</label>		
		<input type="text" class="form-control" name="cantidad">
	</div>
		<div class="form-group">
		<label for="" class="">Jefe inmediato</label>		
		<input type="text" class="form-control" name="jefe">
	</div>
	<div class="form-group">
		<label for="" class="">Experiencia</label>		
		<input type="text" class="form-control" name="experiencia">
	</div>
	<div class="form-group">
		<label for="" class="">Personal a cargo</label>		
		<textarea class="form-control" name="a_cargo" id="a_cargo" cols="30" rows="4"></textarea>
	</div>
	
	<div class="form-group">
		<label for="" class="">Finalidad</label>		
		<textarea class="form-control" name="finalidad" id="" cols="30" rows="4"></textarea>
	</div>
	<div class="form-group">
		<label for="" class="">Requisitos</label>		
		<textarea class="form-control" name="requisitos" id="requisitos" cols="30" rows="4"></textarea>
	</div>
	
	<div class="form-group">
		<label for="" class="">Competencia</label>		
		<textarea class="form-control" name="competencia" id="" cols="30" rows="5 class="form-control""></textarea>
	</div>
	<div class="form-group">
		<label for="" class="">Funciones y responsabilidades</label>		
		<textarea class="form-control" name="funciones" id="funciones" cols="30" rows="5"></textarea>
	</div>
	<div class="form-group">
		<input type="submit" class="btn btn-primary " value="guardar">	
	</div>

</form>
	</div>
</div>
	
</div>
