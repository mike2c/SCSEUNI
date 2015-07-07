<?php
	echo validation_errors();
?>

<div class="container">
	<div class="row">
		<div class="col-md-12 col-lg-12">
			<h4 class="page-header"><?=$cabecera ?></h4>
		</div>	
	</div>
	
	<div class="row">
		<div class="col-md-5 col-lg-5">
			<form method="POST" action="<?=base_url('Ficha/Guardar')?>" name="formPublicacion">
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
				
			</form>
		</div>
	</div>
</div>