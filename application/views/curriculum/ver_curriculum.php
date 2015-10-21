<?php
	
	if(!isset($curriculum) || $curriculum == null || empty($curriculum)){
		echo "ERROR:";
		exit("No se ha podido leer la información");
	}

?>
<div class="container">
	<div class="contenido">
		<h2 class="page-header">Curriculum vitae</h2>
		<div class="row">
			<div class="col-md-12">
				<h4 class="text-primary">Información Personal</h4>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-lg-2">
				<img class="img-responsive thumbnail" src="<?=base_url("uploads/". $egresado->imagen)?>" alt="">
			</div>
			<div class="col-md-9 col-lg-9">
				<h3 class="text-info"><?=$egresado->nombre. " ". $egresado->apellido?></h3>
				<p><?=$egresado->direccion?></p>
				<p><?=(empty($egresado->telefono))? "telefono no disponible" : $egresado->telefono?></p>
				<p><?=(empty($egresado->celular))? "celular no disponible" : $egresado->celular?></p>
				<p><?=$egresado->correo?></p>

			</div>
		</div>
	<br>
		<!--Informacion laboral-->
		<div class="row">
			<div class="col-md-12">
				<h4 class="text-primary">Experiencia Laboral</h4>
				
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-lg-8">
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

		<!--Informacion laboral-->
		<div class="row">
			<div class="col-md-12">
				<h4 class="text-primary">Formación Academica</h4>
			
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-lg-8">
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

		<!--Formación complementaria-->
		<div class="row">
			<div class="col-md-12">
				<h4 class="text-primary">Formación Complementaria</h4>
				
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-lg-8">
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

		<!--Otros datos-->
		<div class="row">
			<div class="col-md-5 col-lg-5">
				<div class="panel panel-default">
					<div class="panel-heading">
						Idiomas
					</div>
					<div class="panel-body">
						<table class="table table-condensed table-default">
							<?php
								foreach ($curriculum["idioma"]->result() as $row) {
									echo "<tr>
									<td>$row->idioma</td><td>$row->nivel</td>
									</tr>";
								}
							?>
						</table>
					</div>
				</div>
		
			</div>
			<div class="col-md-5 col-lg-5">
				<div class="panel panel-default">
					<div class="panel-heading">
						Informatica
					</div>
					<div class="panel-body">
						<table class="table table-condensed table-default">
							<?php
								foreach ($curriculum["informatica"]->result() as $row) {
									echo "<tr>
									<td>$row->software</td><td>$row->nivel</td>
									</tr>";
								}
							?>
						</table>
					</div>
				</div>
			</div>
		
		</div>
	</div>	
</div>
<style>
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
		border-bottom: none;
		margin-bottom: 20px;
	}

	.contenido{
		padding: 0px 60px;
	}
	p{
		line-height: 15px;
	}
</style>
