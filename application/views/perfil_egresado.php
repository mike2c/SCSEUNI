<?php
	if($perfil == null || empty($perfil)){
		exit("<h3>No se ha podido cargar el perfil</h3>");
	}
?>
<div class="container">
	<div class="row">
		<div class="col-md-12 col-lg-12">
			<h2>Perfil de usuario</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 col-lg-2">
		<div class="img-profile">
					<?php
						if(imagen_disponible()){
							?> <img class="img-responsive img-circle" src="<?=base_url('uploads/'. getImagenPerfil())?>" alt=""> <?
			         	}else{
			           		?> <img class="img-responsive img-circle" src="<?=base_url('uploads/default/no_image.gif')?>" alt=""> <?
				        }
					?>	
				</div>
			<div class="contenido">
				
			</div>
		</div>
	</div>
</div>