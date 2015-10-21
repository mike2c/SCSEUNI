<div class="container">
	<div class="contenido">
		<h2 class="form-title">Lista de egresados</h2>
		<p class="text-info">La información de algunos egresados puede permanecer privada o parcialmente visible para determinados usuarios.</p>
		
		<div class="col-lg-12 col-md-12" style="overflow:auto">
			<form class="form-inline" method="post" action="<?=base_url("listado_egresados")?>" id="formBuscarEgresado">
				<div class="form-group">
					<input name="nombre" type="text" class="form-control" placeholder="Buscar por nombre">
				</div>
				<div class="form-group">
					<select class="form-control" name="carrera" id="carrera">
					 	<option value="0">- Todas las carreras -</option>
					  	<?php
					 		if(isset($carreras)){
					 			foreach ($carreras->result() as $row) {
					 				if($row->carrera_id == $carrera){
					 					echo "<option selected value='$row->carrera_id'>$row->nombre_carrera</option>";
					 				}else{
					 					echo "<option value='$row->carrera_id'>$row->nombre_carrera</option>";
					 				}			 				
					 			}
					 		}else{
					 			exit("<p class='bg-danger'>No se han podido cargar las carreras</p>");
					 		}
					 	?>
					 </select>
				</div>
				<div class="form-group">
						<button class="btn btn-primary btn-sm">Buscar </button>
				</div>
			</form>
		
		</div>
	<br>
		<hr>
	
	<div class="col-lg-12 col-md-12">
		<table id="tabla_egresados" class="table table-hover table-responsive">
			<thead>
				<tr>
					<td></td>
					<td>Nombre</td>
					<td>Ubicación actual</td>
					<td>Información de contacto</td>
					<td>Curriculum</td>
				</tr>
			</thead>
		<tbody>
		<?php

			foreach ($registro->result() as $row) {
				echo "<tr>";

				/*Imagen de perfil*/
				if(imagen_disponible()){
					echo "<td class='no-padding'><img title='ampliar' class='thumbnail zoom' src='" . base_url("uploads/". $row->imagen) . "' alt=''></td>";
				}else{
					echo "<td class='no-padding'><img title='ampliar' class='thumbnail zoom' src='" . base_url("uploads/default/no_image.gif") . "' alt=''></td>";
				}
				
				echo "<td><h4>$row->nombre $row->apellido</h4>
				<h4><small>$row->carrera</small></h4>";
				
				if($row->sexo == "F"){
					echo "<h4><small>Mujer</small></h4></td>";
				}else{
					echo "<h4><small>Hombre</small></h4></td>";
				}
				
				if($privacidad[$row->usuario_id] == null || empty($privacidad[$row->usuario_id])){
				
					echo "<td><p class='text-info'>Información no disponible</p></td>";
					echo "<td><p class='text-info'>Información no disponible</p></td>";
					echo "<td><p class='text-info'>Información no disponible</p></td>";
				}else{

					/*Informacion de ubicación*/
					if($privacidad[$row->usuario_id]["info_ubicacion"] == "publica"){
						echo "<td>$row->municipio, $row->departamento. <br>$row->direccion</td>";
					}elseif($privacidad[$row->usuario_id]["info_ubicacion"] == "empresas"){
						if(esEmpresa() || esPublicador() || esAdministrador()){
							echo "<td>$row->municipio, $row->departamento. <br>$row->direccion</td>";
						}else{
							echo "<td><p class='text-info'>Información no disponible</p></td>";
						}	
					}			
					
					/*Información de contacto*/
					if($privacidad[$row->usuario_id]["info_contacto"] == "publica"){
						echo "<td>";
						if($row->telefono != null && !empty($row->telefono)){
							echo $row->telefono;
							if($row->celular != null && !empty($row->celular)){
								echo "," . $row->celular . "<br>";
							}
						}else{
							if($row->celular != null && !empty($row->celular)){
								echo $row->celular . "<br>";
							}
						}
						echo $row->correo ;
						echo "</td>";
					}elseif($privacidad[$row->usuario_id]["info_contacto"] == "empresas"){
						if(esEmpresa() || esPublicador() || esAdministrador()){
							echo "<td>";
							if($row->telefono != null && !empty($row->telefono)){
								echo $row->telefono;
								if($row->celular != null && !empty($row->celular)){
									echo "," . $row->celular . "<br>";
								}
							}else{
								if($row->celular != null && !empty($row->celular)){
									echo $row->celular . "<br>";
								}
							}
							echo $row->correo ;
							echo "</td>";
						}else{
							echo "<td><p class='text-info'>Información no disponible</p></td>";
						}	
					}	

					/*Información de curriculum*/					
					if($privacidad[$row->usuario_id]["info_contacto"] == "publica"){
						echo "<td><a target='blank' href='" . base_url("Curriculum/Ver/". $row->usuario_id) . "' class='btn btn-primary btn-sm'>Ver curriculum</a></td>";	
					}elseif($privacidad[$row->usuario_id]["info_contacto"] == "empresas"){
						if(esEmpresa() || esPublicador() || esAdministrador()){
							echo "<td><a target='blank' href='" . base_url("Curriculum/Ver/". $row->usuario_id) . "' class='btn btn-primary btn-sm'>Ver curriculum</a></td>";	
						}else{
							echo "<td><p class='text-info'>Información no disponible</p></td>";
						}
					}					
				}

				echo "</tr>";
			}
		?>
	</tbody>
	<tfoot>
		
	</tfoot>
</table>
	</div>
			
	</div>
</div>
<style type="text/css">
	table td{
		padding: 0px 0px;
	}
	table img{
		border: 1px solid lightgray;
		height: 65px;
		width: 70px;
		margin-right: 0px;
	}
	.thumbnail{
		margin: 0px 0px;
		cursor: pointer;
		border-radius: 2px;
	}

	table h2{
		color: #337ab7;
	}
	.zoom{
        /* Aumentamos la anchura y altura durante 2 segundos */
        transition: width 0.3s, height 0.3s, transform 0.3s;
        -moz-transition: width 0.3s, height 0.3s, -moz-transform 0.3s;
        -webkit-transition: width 0.3s, height 0.3s, -webkit-transform 0.3s;
        -o-transition: width 0.3s, height 0.3s,-o-transform 0.3s;

    }
    .zoom-in{
        /* tranformamos el elemento al pasar el mouse por encima al doble de
           su tamaño con scale(1). */
        transform : scale(2);
        -moz-transform : scale(2);      /* Firefox */
        -webkit-transform : scale(2);   /* Chrome - Safari */
        -o-transform : scale(2);        /* Opera */
    }
   	.input-group .btn{
   		height: 28px;
   	} 
</style>
<script type="text/javascript">
	$("table tr td img").click(function(){
		$(this).addClass("zoom-in");
	});
	$("table tr td img").mouseleave(function(){
			$(this).removeClass("zoom-in");
	});
	$("#carrera").change(function(){
		$("#formBuscarEgresado").submit();
	});
</script>