<?php
	$no_inbox = 0;
	$no_sent = 0;
	$no_drafts = 0;
	
	if(isset($lista_egresados)){
		echo "<datalist name='lista_egresados' id='lista_egresados'>";
		foreach ($lista_egresados->result() as $row) {
			echo "<option data-id='$row->usuario_id' value='$row->nombre' label='$row->correo'>";
		}
		echo "</datalist>";
	}

	if(isset($lista_empresas)){
		echo "<datalist name='lista_empresas' id='lista_empresas'>";
		foreach ($lista_empresas->result() as $row) {
			echo "<option data-id='$row->usuario_id' value='$row->nombre' label='$row->correo'>";
		}
		echo "</datalist>";
	}
 
	if(isset($lista_publicadores)){
		echo "<datalist name='lista_publicadores' id='lista_publicadores'>";
		foreach ($lista_publicadores->result() as $row) {
			echo "<option data-id='$row->usuario_id' value='$row->nombre' label='$row->correo'>";
		}
		echo "</datalist>";
	}
?>
	<input type="hidden" value="<?=base_url();?>" id="base_url">
	<div class="row contenido" style="height:100%">
	<div class="container" style="padding-left:10px;height:100%;">
			<div class="col-md-3 col-lg-3" style="padding-left:0px;padding-top:0px;height:100%;">
				<div class="navbar-nav navbar-left" style="margin-left:0px;">
					<button type="button" class="btn btn-primary btn-sm navbar-btn" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap"><span class="glyphicon glyphicon-pencil"></span> Redactar mensaje</button>
				</div>
			
			</div>
			<div class="col-md-9 col-lg-9" style="padding-right:0px;padding-left:5px;height:100%;">
				<div class="navbar-nav navbar-left">
					<button id="btnActualizar" class="btn  btn-sm btn-default navbar-btn"><span class="glyphicon glyphicon-refresh"></span> Actualizar</button>
				</div>
					<div class="navbar-nav navbar-left" style="margin-right:10px;">
				<button id="btnEliminar" class="btn  btn-sm btn-default navbar-btn btn-default" id="btnEliminar"><span class="glyphicon glyphicon-trash"></span> Eliminar</button>
				</div>

				<!--FORMULARIO DE BUSQUEDA-->
				<form class="navbar-form navbar-right form-inline" id="formBusqueda" method="post" style="margin-top:10px;">
					<div class="form-group">
						<input type="search" id="busqueda" name="busqueda" placeholder="busqueda" class="form-control" >
					</div>
					<div class="form-group">
						<select class="form-control" name="filtro" id="filtro">
							<option value="asunto">Asunto</option>
							<option value="correo">Correo</option>
						</select>
					</div>
					<div class="form-group">
						<input type="submit" value="Buscar" class="btn btn-default btn-sm">
					</div>
				</form>
		</div>
	</div>
</div>

<div class="container" style="height:100%;">
	<div class="row" style="height:100%;">
		<div class="col-md-2 col-lg-2 left-line" style="padding:0px 0px;height:100%;">
			<ul class="left-menu">
				<li><a class="activo" href="javascript:getInbox()" >Mensajes recibidos <span class="badge"><?=$no_inbox;?></span></a></li>
				<li class="h-separator"></li>
				<li><a href="javascript:getSent()">Mensajes enviados <span class="badge"><?=$no_sent;?></span></a></li><li class="h-separator"></li>
				<li><a  href="javascript:getDrafts()">Borrador <span class="badge"><?=$no_drafts;?></span></a></li><li class="h-separator"></li>
				<li><a href="<?=base_url()?>">Salir</a></li>
				<li class="h-line"></li>
			</ul>	
		</div>
		<div class="col-lg-10 col-md-10 ll-line" style="height:100%;">
		<!--DIV PARA LOS MENSAJES DE ENTRADA -->
		<div id="area_mensajes"class="ocultar" style="height:100%;">
			
		</div>
		</div>
	</div>
</div>

<!--MODAL PARA ENVIAR EL MENSAJE-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Nuevo mensaje</h4>
      </div>
      <div class="modal-body">
        <form method="post" action="<?=base_url('Correo/EnviarMensaje')?>" id="formEnviarMensaje" name="formEnviarMensaje">
          <div class="form-group">
            <label for="" class="control-label">Seleccione tipo de usuario</label>
            <select class="form-control" name="tipo_usuario" id="tipo_usuario">
            	<option value="1">Egresado</option>
            	<option value="2">Empresa</option>
            	<option value="3">Publicador</option>
            </select>
          </div>
          <div class="form-group">
            <label for="" class="control-label">Destinatario:</label>
            <input required type="text" list="lista_egresados" class="form-control" id="usuario" name="usuario">
          </div>
           <div class="form-group">
            <label for="" class="control-label">Asunto:</label>
            <input required type="text" class="form-control" id="asunto" name="asunto">
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">Mensaje:</label>
            <textarea required class="form-control" rows="6" id="mensaje" name="mensaje"></textarea>
          </div>
          <div class="form-group">
          	<div class="checkbox">
          		<?php
          		if(esEgresado()){
          			echo " <label><input type='checkbox' name='adjuntar_curriculum' id='adjuntar_curriculum'>";
          			echo "Adjuntar curriculum</label>";
          		}
          		?>
          	</div>
          </div>

          <div class="modal-footer">
	        <button type="button" class="btn btn-success" id="btnBorrador" style="float:left">Borrador</button>
	        <button type="button" class="btn btn-default" id="btnCancelar">Cancelar</button>
	        <button type="button" class="btn btn-primary" id="btnEnviar">Enviar mensaje</button>
     	 </div>
        </form>
      </div>
      
    </div>
  </div>
</div>
<!--FIN DEL MODAL-->
<style type="text/css">
	@import url("<?=base_url('public/css/correo.css')?>");
	
	html{
		height: 100%;
	}

	nav{
		padding-left: 0px 0px;
	}
	
	.navbar{
		padding: 0px 0px;
	}

	#filtro,#busqueda{
		height: 30px;
		line-height: 30px;
		color: darkgray;
	}
	
	#busqueda{
		margin: 0px 0px;
		margin-right: 0px;
	}

	#filtro{
		margin-left: 0px;
		border-radius: 4px;
		border-color: #ccc;
		margin-bottom:0px;
		padding: 0px 5px;

	}
	
	.navbar-form{
		margin: 5px 0px;
	}
	
	.navbar-nav{
		margin-right: 10px;

	}
	
	.navbar-nav{
		padding: 0px 0px;
	}

</style>
<script type="text/javascript" src="<?=base_url('public/js/correo.js')?>"></script>
<script type="text/javascript">
	$("#btnEliminar").click(function(){
		eliminarMensajes();
	});
</script>