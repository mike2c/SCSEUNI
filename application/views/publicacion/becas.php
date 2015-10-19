<div class="container no-padding">

<div class="contenido">
<h2 class="page-header">Programa de becas</h2>
		<div class="col-md-9 col-lg-9">
			<?php
				if(isset($becas) && !empty($becas)){

					foreach ($becas->result() as $row) {
						echo "<div class='post'>";
						echo "<img src='". base_url("public/res/logo_uni_610x377.png") . "' alt=''>";
						echo "<hr>";
						echo "<h3 class='text-primary'>".ucfirst($row->programa_academico)."</h3>";
						echo "<p class=''>".ucfirst($row->descripcion)."</p>";
						echo "<div class='hide-content'>";
						if(!empty($row->url)){
							echo "<p>Para mas información puedes consultar el siguiente enlace: <a target='_blank' href='$row->url'>$row->url</a></p>";
						}
						if(!empty($row->imagen)){
							echo "<img src='" . base_url("Imagen/Cargar/".$row->imagen_publicacion_id) ."'><br>";
						}
						echo "<label><small>Publicación disponible hasta el dia " . date_toDMY($row->fecha_alta) . "</small></label>";
						echo "</div>";
						echo "<button class='btn btn-link btn-sm' >ver mas <span class='caret'></span></button>";
						echo "</div>";
					}
				}else{
					echo "<p class='panel panel-danger panel-body text-danger'>No hay publicaciones de becas</p>";
				}
			?>
		</div>
		<div class="col-md-3 col-lg-3" >
			<div class="">
				<ul class="">
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
</script>