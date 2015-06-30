<h3 class="page-header">Listado de egresados</h3>
<div class="nav">
	<form action="" class="navbar-form navbar-left" style="">
		<div class="form group">
			<select class="" name="carrera" id="carrera">
				<option value="0">Seleccionar carrera</option>
			</select>
		</div>
	</form>
	<form  name="formBusqueda" class="navbar-form navbar-right" method="POST" action="<?=base_url().'Egresado/Busqueda'?>">
		<div class="form-group">
			<select class="" name="filtro" id="filtro">
				<option value="nombre">nombre</option>
				<option value="apellido">apellido</option>
				<option value="correo">correo</option>
				<option value="carnet">cárnet</option>
			</select>
			<div class="input-group">
			<input type="text" class="form-control" placeholder="busqueda" name="busqueda" id="busqueda">
				<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
			</div>
		</div>
	</form>
</div>
<label for="" id="asd"></label>
<!--CONTENEDOR DEL REGISTRO DE EGRESADOS-->
<script type="text/javascript">

	$(document).ready(function(){
		$("#busqueda").keyup(function(){
			var datos = $(formBusqueda).serialize();
			//alert(datos);
			buscar(datos);
		});

		function buscar(datos){
			$.post("<?=base_url().'Egresado/Busqueda'?>",
				datos,
				function(data){
					$("#lista").html(data);
				});
		}
	});
</script>
