<?php

	function createDataList($data,$name="",$id=""){
		echo "<datalist name='$name' id='$id'>";
		foreach ($data->result() as $row) {
			echo "<option data-id='$row->usuario_id' value='$row->correo' label='$row->nombre'>";
		}
		echo "</datalist>";
	}

	if(isset($lista_egresados)){
		createDataList($lista_egresados,"lista_egresados","lista_egresados");
	}

	if(isset($lista_empresas)){
		createDataList($lista_empresas,"lista_empresas","lista_empresas");
	}
 
	if(isset($lista_publicadores)){
		createDataList($lista_publicadores,"lista_publicadores","lista_publicadores");
	}

?>

<!--Barra de menu superior-->
<div id="barra_menu">
	<div class="container no-padding">
		<div class="col-md-2 col-lg-2 no-padding"><!--REDACTAR MENSAJE-->
			<button data-toggle="modal" data-target="#redactarMensaje" class="btn btn-sm btn-primary" style="width:100%;">Redactar mensaje</button>
		</div>
		<div class="col-md-3 col-lg-3">
			<a id="btnActualizar" href="<?=base_url('Correo/Inbox')?>" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-refresh"></span> Actualizar</a>
			<button id="btnEliminar" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-trash"></span> Eliminar mensaje(s)</button>
		</div>
		<div class="col-md-5 col-lg-5 col-md-offset-2 col-lg-offset-2">
			<div class="input-group">
				<form class="form-inline" action="" type="post" id="formBusqueda">
					<div class="form-group">
						<input placeholder="busqueda" class="form-control" type="search" id="busqueda" name="asunto">
					</div>
					<div class="form-group">
						<select class="form-control" id="filtro" style="z-index:0">
							<option value="asunto">Asunto</option>
							<option value="correo">Correo</option>
							<option value="mensaje">Contenido</option>
						</select>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-sm">Buscar</button>
					</div>				
				</form>
			</div>
		</div>
	</div>
</div>

<div class="container no-padding">
	<div class="col-md-2 col-lg-2 no-padding">
		<ul class="left-menu">
			<li><a href="<?=base_url('Perfil')?>" class="">Perfil</a></li>
			<li data-bandeja="inbox"><a href="<?=base_url('Correo/Inbox')?>" class="activo">Recibidos <span class="badge">123</span></a></li>
			<li data-bandeja="sent"><a href="<?=base_url('Correo/Sent')?>" class="">Enviados <span class="badge">123</span></a></li>
			<li data-bandeja="drafts"><a href="<?=base_url('Correo/Drafts')?>" class="">Borrador <span class="badge">123</span></a></li>
		</ul>
	</div>

	<div class="col-lg-10 col-md-10" style="padding-right:0px;">
		<!--DIV PARA LOS MENSAJES DE ENTRADA -->
		<div id="bandeja">
			<h4 class="box-title">Borrador</h4>
			<div id="lista">
				<?php
					if(!isset($mensajes) || $mensajes == null || $mensajes->num_rows() == 0){
						echo("<h4 class='panel panel-danger panel-body text-danger text-center'>No se han encontrado mensajes</h4>");
					}else{
				?>
				<table class="table table-hover">
				 <thead>
				  	<tr><td>#</td><td>Asunto</td><td>Fecha de creación</td><td>Estado</td></tr>
				  </thead>
				  <tbody>
				    <?php
				  
				      $cont = 1;
				      foreach ($mensajes->result() as $row) {
				        echo "<tr class='' data-mensaje='$row->mensaje_id'>
				            <td>
				            <label for=''>$cont <input id='$cont' type='checkbox' value='$row->mensaje_id'  name='mensajes_a_destuir'> </label></td>
				       
				            <td><a href='javascript:cargarBorrador($row->mensaje_id)'>$row->asunto</a></td>
				            <td>$row->fecha_creacion</td>
				            <td>Sin enviar</td>
				          </tr>";
				   
				        $cont += 1;   
				      }
				    }  
				    ?>
				  </tbody>
				  <tfoot>
				  	<!--table footer-->
				  </tfoot>
				</table>
			</div>
		</div>
	</div>
</div>
<!--FIN DEL MODAL-->
<style type="text/css">
	@import url("<?=base_url('public/css/correo.css')?>");
</style>

<!--Plugin chosen para las listas-->
<script type="text/javascript" src="<?=base_url('public/js/chosen.jquery.js')?>"></script>
<link rel="stylesheet" type="text/css" href="<?=base_url('public/js/chosen.min.css')?>">
<script type="text/javascript" src="<?=base_url('public/js/correo.js')?>"></script>
<script type="text/javascript">

$(document).ready(function(){

	$("#busqueda").change(function(){
		buscarEnInbox();
	});
});

$("#filtro").change(function(){

	if(this.selectedIndex == 1){

		$("#busqueda").attr("name","destinatario");
	}else{
		$("#busqueda").attr("name",$("#filtro").val());
	}
});
</script>