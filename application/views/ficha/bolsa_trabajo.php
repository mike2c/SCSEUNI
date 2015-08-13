<br>
<div class="container">
	<div class="col-md-3 col-lg-3" style="border-left:1px solid lightgray;border-top:1px solid lightgray;">
	<h4 class="form-title" for="">Filtrar fichas por carrera</h4 class="form-title">
		<ul>
			<?php
				foreach ($carreras->result() as $row) {
					echo "
						<li>
							<label for='$row->carrera_id'><input type='checkbox' name='nombre_carrera' id='$row->carrera_id'> $row->nombre_carrera</label>
						</li>
					";
				}
			?>
		</ul>
	</div>
	<div class="col-md-9 col-lg-9" style="border-left:1px solid lightgray;">
		<!-- <div id='contenedorFicha'>
			<p>fecha de creación: $row->fecha_alta</p>
			<h4 class='form-title' id='ficha_titulo'>$row->cargo</h4>
			<p id='descripcion'>$row->descripcion</p>
			<hr>
			<label for=''>Cantidad de puestos: <span id='cantidad'></span></label>
			<label for=''>Jefe inmediato: <span id='jefe'></span></label>
			<label for=''>Personal a cargo: </label><br>
			<p id='personal'></p>
			<label for=''>Finalidad: </label><br>
			<p id='finalidad'></p>
			<label for=''>Funciones: </label><br>
			<p id='funciones'></p>
			<label for=''>Requisitos: </label><br>
			<p id='requisitos'></p>
			<label for=''>Experiencia: </label><br>
			<p id='personal'></p>
			<label for=''>Competencia: </label><br>
			<p id='competencia'></p>
			<a href='#'>Ver mas...</a>
		</div>-->
		

		<?php

			foreach ($fichas->result() as $row) {
#<h3 class='' id='ficha_titulo'>$row->cargo :</h3>
				echo "<div id='contenedorFicha'>
					<p id='descripcion'>$row->descripcion</p>
					
					<div id='ficha_contenido'>
					<h4 for=''>Cantidad de puestos: <span id='cantidad'></span></h4><br>
					<h4 for=''>Jefe inmediato:  <span id='jefe'>$row->jefe</span> </h4><br>
					<h4 for=''>Personal a cargo: </h4><br>
					<p id='personal'>$row->a_cargo</p>
					<h4 for=''>Finalidad: </h4><br>
					<p id='finalidad'>$row->finalidad</p>
					<h4 for=''>Funciones: </h4><br>
					<p id='funciones'>$row->funciones</p>
					<h4 for=''>Requisitos: </h4><br>
					<p id='requisitos'>$row->requisitos</p>
					<h4 for=''>Experiencia: </h4><br>
					<p id='personal'>$row->experiencia</p>
					<h4 for=''>Competencia: </h4><br>
					<p id='competencia'>$row->competencia</p>
					</div>					
					
					
					
					<button class='ver-mas btn-link'>Ver mas...</Button>
				</div>";
			}

		?>
	</div>
</div>
	//#3b5998
<style type="text/css">

	ul{
		list-style: none;
		padding-left: 0px;
	}

	ul li{
		margin-top: 0px;
		padding: 6px 0px;
		border-bottom:1px solid lightgray;
	}

	ul li label{
		cursor: pointer;
	}
	
	#contenedorFicha h3{
		
	}

	#contenedorFicha{
		border:1px solid lightgray;
		padding: 10px 10px;
		margin-bottom: 20px;
	}
	
	#ficha_contenido{
		display: none;
	}

	#contenedorFicha #descripcion{
		
		font-size:16px;

		padding:5px 10px;
		//background-color: whitesmoke;
		//border-radius: 3px;
	}

	#contenedorFicha label span{
		color: gray;
	}

	#fecha_alta{
		text-align: right;
		color: darkgray;
	}
</style>
<script type="text/javascript">
	$(".ver-mas").click(function(){

		var parent = $(this).parent();

		$(parent).children("#ficha_contenido").toggle("slow");
		if($(this).text() == "Mostrar menos"){
			$(this).text("Ver mas...");	
		}else{
			$(this).text("Mostrar menos");
		}
	
	});
</script>