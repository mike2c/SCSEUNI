<h3 class="page-header">Listado de pubicadores</h3>
<div class="nav">
	<form action="" class="navbar-form navbar-left" style="">
		<div class="form group">
			<div id="area_seleccion"></div>
		</div>
	</form>
	<form  id="formBusqueda" name="formBusqueda" class="navbar-form navbar-right" method="POST" action="<?=base_url().'Publicador/Busqueda'?>">
		<div class="form-group">
			<select class="form-control" id="filtro">
				<option value="nombre">nombre</option>
				<option value="apellido">apellido</option>
				<option value="correo">correo</option>
				<option value="carnet">cárnet</option>
			</select>
			<div class="input-group">
			<input type="text" class="form-control" placeholder="busqueda" name="nombre" id="busqueda">
				<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript" src="<?=base_url('public/js/publicadores.js')?>"></script>
<script type="text/javascript">
	
	$("#formBusqueda").submit(function(e){
		e.preventDefault();
		buscarPublicador($("#lista"));
	});

	$("#filtro").change(function(){
		$("#busqueda").attr("name",$("#filtro").val());
	});

	$("#area").change(function(){
		buscarPublicador($("#lista"),{area_id: $("#area").val()});
	});
</script>