 <div class="container">
	<div class="row">
		<div class="col-md-3">
			<?php
				if(file_exists("uploads/".$egresado->imagen)){
					?>
					<img class="img-responsive img-perfil" src="<?=base_url("uploads/". $egresado->imagen)?>" alt="">
					<?
				}else{
					?>
					<img class="img-responsive img-perfil" src="<?=base_url("uploads/default/no_image.gif")?>" alt="">
					<?
				}
			?>
			<h4 class="text-center"><strong><?=$egresado->nombre. " ". $egresado->apellido?></strong></h4>
			<label style="display:block;text-align:center"><?=$egresado->carrera?></label>

			<h4 class="text-center bg-primary">
				Informacion de contacto
			</h4>
			<address>
				<strong>Teléfonos</strong><br>
					<span class=""><?=$egresado->telefono?></span><br>
					<span class=""><?=$egresado->telefono?></span><br>
				<strong>Correo</strong><br>
					<span><?=$egresado->correo?></span><br>
				<strong>Dirección actual</strong><br>
					<span><?=$egresado->direccion?></span>
			</address>
			<h4 class="text-center bg-primary">
				Idiomas
			</h4>
			<address>
				<?php
					if($curriculum["idioma"] != null && !empty($curriculum["idioma"])){
						?>
						<table class="table table-hover table-default" style="margin-bottom:0px">
							<?php
								foreach ($curriculum["idioma"]->result() as $row) {
									echo "<stream_context_get_default()>$row->idioma</strong><br>";
									echo "<span>$row->nivel</span><br>";
								}
							?>
						</table>
						<?
					}
				?>
			</address>
			<h4 class="text-center bg-primary">
				Informatica
			</h4>
			<address>
				<?php
					if($curriculum["informatica"] != null && !empty($curriculum["informatica"])){
						?>
						<table>
							<?php
								foreach ($curriculum["informatica"]->result() as $row) {
									echo "<strong>$row->software</strong><br>";
									echo "<span>$row->nivel</span><br>";
								}
							?>
						</table>
						<?
					}
				?>
			</address>
		</div>
		<div class="col-md-9">
			<h2 class="text-center"><span class="glyphicon glyphicon-education"></span></h2>
			<h3 class="text-center"><strong>Educación</strong></h3>
			<h2 class="text-center"><strong>Universidad Nacional de Ingeniería</strong></h2>
			<h4 class="text-center">Recinto Universitario Augusto César Sandino</h4>
			<hr>
			<br>
			<h3><strong>EXPERIENCIA LABORAL</strong></h3>
			
			<?php
				if($curriculum["experiencia_laboral"] !== null && !empty($curriculum["experiencia_laboral"])){
					foreach ($curriculum["experiencia_laboral"]->result() as $row){
						
						echo "<h4 class='text-primary'><span class='glyphicon glyphicon-map-marker'></span> $row->empresa, </h4>";
						echo "<h5 class=''><strong>$row->cargo</strong></h5>";
						echo "<h5 class='text-muted'><span class=''>Periodo// </span>$row->fecha_comienzo - $row->fecha_finalizacion</h5>";
					}
				}	
			?>
			<br>
			<h3><strong>FORMACIÓN ACADEMICA </strong></h3>
			<?php
				foreach ($curriculum["formacion_academica"]->result() as $row) {
					echo "<h4 class='text-primary'><span class='glyphicon glyphicon-bookmark'></span> $row->titulo, <small>$row->fecha_comienzo - $row->fecha_finalizacion</small></h4>";
				}	
			?>
			<br>
			<h3><strong>FORMACIÓN COMPLEMENTARIA </strong></h3>			
			<?php
				if($curriculum["formacion_complementaria"] !== null && !empty($curriculum["formacion_complementaria"])){
					foreach ($curriculum["formacion_complementaria"]->result() as $row) {
						echo "<h4 class='text-primary'><span class='glyphicon glyphicon-book'></span> $row->curso, <small>$row->fecha_comienzo - $row->fecha_finalizacion</small></h4>";
					}	
				}else{
					echo "<h3 class='text-center'>Información no actualizada</h3>";
				}
			?>
			<br>
			<br>
			<br>
		</div>
	</div>
</div>

<style>
	h1,h2,h3,h4,h5{
		margin-top:5px;
		margin-bottom:0px;
	}
	.img-perfil{
		margin:0px auto;
		margin-top: 10px;
		margin-bottom: 10px;
		max-height: 160px;
		max-width: 160px;
		border: 1px solid lightgray;
		background-color:white;
		padding: 6px;
	}
	.bg-primary{
		
		padding: 5px 0;
		
	}
	.col-md-9{
		padding-top:10px;
		box-shadow: -1px 0px 1px gray;
		background-color: white;
	}
	.col-md-9 h1,h2,h3,h4,h5{
		font-family: "Helvetica";
		padding-left: 30px;
	}
	.col-md-9 h3{
		font-family: "Arial";

		margin-bottom:20px;
		margin-top: 0px;
	}
	.col-md-9 h4{
		margin-left:20px;
		font-weight: bold;
		font-family: "Calibri";
	}

	.col-md-9 h5{
		margin-left: 100px;
		margin-bottom: 0px;
	}
	.col-md-9 h4 span{
		font-size:14px;
	}
	.col-md-3{
		padding-left: 0px;	
		padding-right: 0px;
		//border-right:2px solid lightgray;
	}
	.col-md-3 address{
		margin-left: 10px;
	}
	.row{
		box-shadow: -1px 0px 2px gray;
	}
	address{
		margin-top:10px;
	}
	address span{
		margin-left: 20px;
	
	}

</style>