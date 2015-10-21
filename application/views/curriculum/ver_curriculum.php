<?php
	
	if(!isset($curriculum) || $curriculum == null || empty($curriculum)){
		echo "ERROR:";
		exit("No se ha podido leer la información");
	}
	if(empty($curriculum["formacion_academica"])){
		echo "ERROR:";
		exit("No se ha podido leer la información");
	}
?>
<div class="container">
	<div class="contenido">
	<br>
	<br><br>
		<div class="row">
			<div class="col-md-2 col-lg-2 ">
				<?php
					if(file_exists("uploads/".$egresado->imagen)){
						?>
						<img class="img-responsive thumbnail" src="<?=base_url("uploads/". $egresado->imagen)?>" alt="">
						<?
					}else{
						?>
						<img class="img-responsive thumbnail" src="<?=base_url("uploads/default/no_image.gif")?>" alt="">
						<?
					}
				?>
				
			</div>
			<div class="col-md-6 col-lg-6">
				<h3 class="text-info"><?=$egresado->nombre. " ". $egresado->apellido?></h3>
				<p><?=$egresado->direccion?></p>
				<p><?=(empty($egresado->telefono))? "telefono no disponible" : $egresado->telefono?></p>
				<p><?=(empty($egresado->celular))? "celular no disponible" : $egresado->celular?></p>
				<p><?=$egresado->correo?></p>

			</div>
		</div>
	<br>

		<!--Informacion laboral-->
		<?php
			if($curriculum["experiencia_laboral"] !== null && !empty($curriculum["experiencia_laboral"])){
				?>
					<div class="row">
						<div class="col-md-8 ">
							<h4 class="text-primary">Experiencia Laboral</h4>
							
						</div>
					</div>
					<div class="row">
						<div class="col-md-8 col-lg-8 ">
							<table class="table table-default table-condensed table-hover table-responsive">
							<?php

								foreach ($curriculum["experiencia_laboral"]->result() as $row) {
									echo "<tr>
									<td>
										<label>$row->fecha_comienzo - $row->fecha_finalizacion</label>
										<p>Cargo</p>
									</td>
									<td>
										<label>$row->empresa</label>
										<p>". ucfirst($row->cargo). "</p>
									</td>
									</tr>";
								
								}	
							?>
						</table>
						</div>
					</div>
				<?
			}
		?>
		<br>
		<!--Formación academica-->
		<?php

			if($curriculum["formacion_academica"] !== null && !empty($curriculum["formacion_academica"])){
				?>
					<div class="row">
						<div class="col-md-8 ">
							<h4 class="text-primary">Formación Academica</h4>
						
						</div>
					</div>
					<div class="row">
						<div class="col-md-8 col-lg-8 ">
							<table class="table table-default table-condensed table-hover table-responsive">
								<?php

									foreach ($curriculum["formacion_academica"]->result() as $row) {
										echo "<tr>
										<td>
											<label>$row->fecha_comienzo - $row->fecha_finalizacion</label>
											
										</td>
										<td>
											<label>$row->titulo</label>
										</td>
										</tr>";
									
									}	
								?>
							</table>
						</div>
					</div>
				<?
			}
		?>
		<br>
		<!--Formación complementaria-->

		<?php

			if($curriculum["formacion_complementaria"] !== null && !empty($curriculum["formacion_complementaria"])){
			?>
			<div class="row">
					<div class="col-md-8 ">
						<h4 class="text-primary">Formación Complementaria</h4>
						
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-lg-8 ">
						<table class="table table-default table-condensed table-hover table-responsive">
							<?php

								foreach ($curriculum["formacion_complementaria"]->result() as $row) {
									echo "<tr>
									<td>
										<label>$row->fecha_comienzo - $row->fecha_finalizacion</label>
										
									</td>
									<td>
										<label>$row->curso</label>
									</td>
									</tr>";
								
								}	
							?>
						</table>
					</div>
				</div>
			<?
			}
		?>
		<br>
		<!--Otros datos-->
		<div class="row">
			<div class="col-md-4 col-lg-4 ">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label for="">Informatica</label>	
					</div>
					<div class="list-group">
						<?php
							if($curriculum["informatica"] != null && !empty($curriculum["informatica"])){
								?>
								<table class="table table-hover table-default" style="margin-bottom:0px">
									<?php
										foreach ($curriculum["informatica"]->result() as $row) {
											echo "<tr>
											<td> <label>$row->software</label></td>
											<td> <label class='text-info'>$row->nivel</label></td>
											</tr>";
										}
									?>
								</table>
								<?
							}
						?>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-lg-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label for="">Idiomas</label>
					</div>
					<div class="list-group">
						<?php
							if($curriculum["idioma"] != null && !empty($curriculum["idioma"])){
								?>
								<table class="table table-hover table-default" style="margin-bottom:0px">
									<?php
										foreach ($curriculum["idioma"]->result() as $row) {
											echo "<tr>
											<td> <label>$row->idioma</label></td>
											<td> <label class='text-info'>$row->nivel</label></td>
											</tr>";
										}
									?>
								</table>
								<?
							}
						?>
					</div>
				</div>
		
			</div>
		</div>
	</div>	
</div>
<style>
	.contenido{
		border-left: 60px solid lightgray;
		border-right: 60px solid lightgray;
		padding-left: 100px;
	}

	table.table tr{
		border:none;
	}
	
	hr{
		margin-top: 0px;
	}
	.row h3,h4{
		margin-bottom: 15px;
	}

	.page-header{
		margin-top:20px;
		//border-bottom: none;
		margin-bottom: 20px;
	}

	.contenido{
		
	}
	.thumbnail{
		border-radius: 0px;
	}
	p{
		line-height: 15px;
	}
</style>
