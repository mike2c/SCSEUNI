<div class="container no-padding">
<div class="contenido">
		<div class="col-md-9 col-lg-9" style="border-right:1px solid lightgray">
			<?php
				
				if(isset($cursos) && !empty($cursos)){

					foreach ($cursos->result() as $row) {
						echo "<div class='post'>";
						#echo "<h3>$row->programa_academico</h3>";
						echo "<p class=''>$row->descripcion</p>";
						echo "<div class='hide-content'>";
						
						if($row->libre == TRUE){
							echo "<label class=''>Tipo de curso: </label><label class='text-primary'> Curso libre</label>";
						}else{
							echo "<label class=''>Tipo de curso: </label><label class='text-primary'> Curso de posgrado</label>";
						}
						echo "<br>";
						echo "<label class=''>Duración: </label><label class='text-primary'>$row->duracion</label><br>";
						echo "<label class=''>Costo: </label><label class='text-primary'>$row->costo</label><br>";
						echo "<label class=''><small>Esta publicación estara disponible hasta el dia " . date_toDMY($row->fecha_alta) . "</small></label>";
						echo "</div>";
						echo "<button class='btn btn-link btn-sm' >ver mas <span class='caret'></span></button>";
						echo "</div>";
					}
				}else{
					echo "<p class='bg-primary'>No hay publicaciones de becas</p>";
				}
			?>
		</div>
		<div class="col-md-3 col-lg-3" >
			<h2><small>Filtrar por carreras</small></h2>
			<ul class="filtro">
				<?php
					if(isset($carreras) && !empty($carreras)){
						foreach ($carreras->result() as $row) {
						
							echo "<li><div class='checkbox'>";
							echo "<label for='carr_" . $row->carrera_id . "'> <input type='checkbox' id='carr_" . $row->carrera_id . "' name='carreras' value='$row->carrera_id'> $row->nombre_carrera</label>";
							echo "</div></li>";
						}
					}
				?>
			</ul>
			<button class="btn btn-sm btn-primary pull-right">Buscar</button>	
		</div>
	</div>
</div>

<style type="text/css">
	
	.bg-primary{
		
		font-size: 18px;
		padding: 10px;
		text-align: center;
		border-radius: 4px;
	}
	
	.post{
		border-top: 1px solid white;
		border-right: 1px solid lightgray;
		border-left: 4px solid #337ab7;
		margin-top: 10px;
		margin-bottom:40px;
		padding: 8px 10px;
		padding-left:20px;
		padding-bottom: 0px;
		background-color: none;
	}
	.post:hover{
		
		box-shadow: 0px 2px 1px #aeaeae;
	}

	.post p{
		
		font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		padding: 10px 10px;
		//border:1px solid lightgray;
		line-height: 18px;
		font-size: 16px;
	}

	.post h3{
		
		font-weight: none;
		color: #337ab7;
		margin-bottom: 10px;

	}
	
	.post .btn-link{
		outline: none;
		border-top: 1px solid lightgray;
		display: block;
		text-align: right;
		width: 100%;
		font-size: 14px;
	}
	.post .btn-link:active{
		outline:none;
	}
	.filtro{
		margin-top: 5px;
		padding-left: 15px;
		list-style: none;
	}
	.filtro li{
		font-size: 16px;	
		padding: 0px 0px;
		border-bottom: 1px solid lightgray;
	}
	.checkbox{
		margin: 5px 0px;
	}

	.hide-content{
		display: none;
	}
</style>
<script type="text/javascript">
	$(".post button").click(function(){
		$(this).parent().children(".hide-content").show();
	});
</script>