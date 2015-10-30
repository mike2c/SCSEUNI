<div class="container no-padding">
<div class="contenido">
	<h3 class="box-title">Cursos ofertados</h3>
		<div class="col-md-9 col-lg-9" >
			<?php
				
				if(isset($cursos) && !empty($cursos) && $cursos->num_rows() > 0){

					foreach ($cursos->result() as $row) {
						echo "<div class='post'>";
						echo "<img class='logo' src='". base_url("public/res/logo_uni_610x377.png") . "' alt=''>";
						echo "<hr>";
						echo "<h3 class='text-primary'>".ucfirst($row->nombre_curso)."</h3>";

						echo "<p class=''>".ucfirst($row->descripcion)."</p>";
						if(!empty($row->imagen)){
							echo "<img class='img-responsive' src='" . base_url("Imagen/Cargar/".$row->imagen_publicacion_id) ."'><br>";
						}
						
						echo "<div class='hide-content'>";
						?>
						<label for="">Información</label>
						<table class="table table-hover">
							<tr>
								<td>Duración</td>
								<td><?=$row->duracion?> meses</td>
							</tr>
							<tr>
								<td>Costo</td>
								<td><?="$".$row->costo?> dólares</td>
							</tr>
							<tr>
								<td>Tipo de curso</td>
								<td>
								<?php
									if($row->libre == TRUE){
										echo "Curso libre";
									}else{
										echo "Curso de posgrado";
									}
								?>
								</td>
							</tr>
						</table>
						<?
						echo "<label class=''><small>Esta publicación estara disponible hasta el dia " . date_toDMY($row->fecha_alta) . "</small></label>";
						echo "</div>";
						echo "<button class='btn btn-link btn-sm' >ver mas <span class='caret'></span></button>";
						echo "</div>";
					}
				}else{
					echo "<p class='panel panel-danger panel-body text-danger'>No se han encontrado publicaciones</p>";
				}
			?>
		</div>
		<div class="col-md-3 col-lg-3" >
		
			<form method="post" id="formBuscar" action="<?=base_url("Publicaciones/Cursos")?>">
				<label for="">Buscar for carrera</label>
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
	$(".post button").click(function(){
		$(this).parent().children(".hide-content").toggle("slow");
	});
	$("[name='carrera[]']").change(function(){
		$("#formBuscar").trigger("submit");
	});
</script>