<h3 class="page-header">Listado de egresados</h3>
<div class="nav">
	<form action="" class="navbar-form navbar-left" style="">
		<div class="form group">
			<div class="" id="carrera_seleccion"></div>
			<!--<select class="" name="carrera" id="carrera">
				<option value="0">todas</option>
			</select> -->
		</div>
	</form>
	<form  name="formBusqueda" id="formBusqueda" class="navbar-form navbar-right" method="POST" action="<?=base_url().'Egresado/Busqueda'?>">
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
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript">
	
	$("#carrera").attr("form","formBusqueda");

    $("#formBusqueda").submit(function(ev){
      ev.preventDefault();

      var data = {};
      switch($("#filtro").val()){

      	case "nombre":
      		data = {nombre:$("#busqueda").val(),carrera_id: $("#carrera").val()};
      	break;
      	case "apellido":
      	 	data = {apellido:$("#busqueda").val(),carrera_id: $("#carrera").val()};
      	break;
      	case "correo":
 			data = {correo:$("#busqueda").val(),carrera_id: $("#carrera").val()};
      	break;
      	case "carnet":
 			data = {carnet:$("#busqueda").val(),carrera_id: $("#carrera").val()};
      	break;
      }
    	
      buscarEgresado(data,$("#lista"));
   
   });

    $("#carrera").change(function(){
      buscarEgresado({carrera_id:$("#carrera").val()},$("#lista"));
     
    });

</script>