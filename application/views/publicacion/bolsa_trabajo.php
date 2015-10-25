<div class="container no-padding">
<div class="contenido">
	<h2 class="page-header">Ofertas de trabajo disponibles</h2>
		<div class="col-md-9 col-lg-9" style="border-right:1px solid lightgray">
			<?php
				if(isset($fichas) && !empty($fichas) && $fichas->num_rows() > 0){
					foreach ($fichas->result() as $row) {
						
						if(empty($row->ficha_solicitante_id)){
							?>
								<form class="pull-right" method="post" action="<?=base_url('Publicaciones/aplicarFicha')?>">
									<input type="hidden" name="ficha_id" value="<?=$row->ficha_id?>">
									<button type="submit" class='btn btn-primary btn-sm' style="margin-right:15px;margin-top:20px;"><span class='glyphicon glyphicon-share-alt'></span> Aplicar </button>
								</form>
							<?
						}else{
							?>
								<button type="buttno" disabled class='btn btn-primary btn-sm pull-right' style="margin-right:15px;margin-top:20px;"><span class='glyphicon glyphicon-share-alt'></span> Solicitud enviada </button>
							<?
						}

						echo "<div class='post'>";
						echo "<img class='logo' src='". base_url("public/res/logo_uni_610x377.png") . "' alt=''>";
						echo "<hr>";
						echo "<h3 class='text-primary'>$row->cargo</h3>";
						echo "<p class=''>$row->descripcion</p>";

						//Contenido oculto
						echo "<div class='hide-content'>";
						echo "<label>Area: </label>";
						echo "<p>$row->ubicacion</p>";
							echo "<label>Cantidad de bacantes:</label>";
						echo "<p>$row->cantidad</p>";
							echo "<label>Jefe:</label>";
						echo "<p>$row->jefe</p>";
							echo "<label>Personal a cargo:</label>";
						echo "<p>$row->a_cargo</p>";
							echo "<label>Finalidad:</label>";
						echo "<p>$row->finalidad</p>";
							echo "<label>Funciones:</label>";
						echo "<p>$row->funciones</p>";
							echo "<label>Requisitos:</label>";
						echo "<p>$row->requisitos</p>";
							echo "<label>Experiencia:</label>";
						echo "<p>$row->experiencia</p>";
							echo "<label>Competencia:</label>";
						echo "<p>$row->competencia</p>";

						echo "<label><small>Esta publicación estara disponible hasta el dia " . date_toDMY($row->fecha_alta) . "</small></label>";
						echo "</div>";//Contenido oculto

						echo "<button class='btn btn-link btn-sm' >ver mas <span class='caret'></span></button>";

						echo "</div>";
					}
				}else{
					echo "<p class='panel panel-danger panel-body text-danger'>No se han encontrado publicaciones</p>";
				}
			?>
		</div>
		<div class="col-md-3 col-lg-3" >
			<form method="post" id="formBuscar" action="<?=base_url("Publicaciones/BolsaDeTrabajo")?>">
				<label>Filtrar por carrera</label>
				<ul class="filtro">
					<?php

						if(isset($carreras) && !empty($carreras)){
							foreach ($carreras->result() as $row) {
							
								echo "<li><div class='checkbox'>";
								if (isset($carreras_marcadas) && !empty($carreras_marcadas)) {
									if(buscar_carrera($row->carrera_id,$carreras_marcadas)){
										
										echo "<label for='carr_" . $row->carrera_id . "'> <input type='checkbox' id='carr_" . $row->carrera_id . "' name='carrera[]' value='$row->carrera_id' checked> $row->nombre_carrera</label>";
									}else{
										echo "<label for='carr_" . $row->carrera_id . "'> <input type='checkbox' id='carr_" . $row->carrera_id . "' name='carrera[]' value='$row->carrera_id'> $row->nombre_carrera</label>";
									}
								}else{
									echo "<label for='carr_" . $row->carrera_id . "'> <input type='checkbox' id='carr_" . $row->carrera_id . "' name='carrera[]' value='$row->carrera_id'> $row->nombre_carrera</label>";
								}
								echo "</div></li>";
							}
						}

						function buscar_carrera($id_carrera,$carreras){

							foreach ($carreras as $key => $value){
								
								if($value == $id_carrera){
									return TRUE;
								}
							}

							return FALSE;
						}
					?>
				</ul>
			</form>
		</div>
	</div>
</div>

<style type="text/css">
	
		.post{
		
		border:1px solid lightgray;
		padding: 15px 20px;
		margin-bottom:20px;
	}	
	#aplicar{
		margin: 17px 17px;
	}
	.post .logo{
		width: 8%;
	
	}
	.post hr{
		margin: 10px 0px;
	}
	.post h3{
		margin-bottom:15px;
		font-family: "Calibri";
		font-weight: bold;
	}

	.post p{
		font-size: 16px;
		line-height:20px;
		font-family: "Arial";
		padding: 0px 0px;
	}

	ul{
		list-style:none;
		padding-left: 0px;
	}

	.hide-content{
		display: none;
	}
</style>
<script type="text/javascript">	

	/*	function aplicar(usuario){
		form = document.createElement("form");
		form.action = "<?php echo base_url('Publicaciones/aplicarFicha')?>" ;
		form.method = "post";
		form.setAttribute("id","aplicarForm");
		
		control = document.createElement("input");
		control.setAttribute("type","hidden");
		control.setAttribute("name","usuario_id");
		control.setAttribute("value",usuario);
		
		form.appendChild(control);
		document.body.appendChild(form);
		
		$("#aplicarForm").submit();
	}*/
	$(".post button").click(function(){
		$(this).parent().children(".hide-content").toggle('slow');
	});

	$("[name='carrera[]']").change(function(){
		$("#formBuscar").trigger("submit");
	});
</script>