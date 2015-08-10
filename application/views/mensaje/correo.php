<?php
	$no_inbox = 0;
	$no_sent = 0;
	$no_drafts = 0;

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
	<input type="hidden" value="<?=base_url();?>" id="base_url">
	<div class="contenido">
	<div class="container" style="padding-left:10px;">
			<div class="col-md-2 col-lg-2" style="padding-left:0px;padding-top:0px;">
				<div class="navbar-nav navbar-left" style="">
					<button type="button" class="btn btn-primary btn-sm navbar-btn" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap"><span class="glyphicon glyphicon-pencil"></span> Redactar mensaje</button>
				</div>
			
			</div>
			<div class="col-md-10 col-lg-10">
				<div class="navbar-nav navbar-left">
					<button id="btnActualizar" class="btn  btn-sm btn-default navbar-btn"><span class="glyphicon glyphicon-refresh"></span> Actualizar</button>
				<button id="btnEliminar" class="btn  btn-sm btn-default navbar-btn btn-default" id="btnEliminar"><span class="glyphicon glyphicon-trash"></span> Eliminar</button>
				</div>
				<!--FORMULARIO DE BUSQUEDA-->
				<form class="navbar-form navbar-right form-inline" id="formBusqueda" method="post" style="margin-top:10px;">
					
					<div class="form-group">
						<input type="hidden" id="bandeja" value="inbox">
						<input type="search" id="busqueda" name="asunto" placeholder="busqueda" class="form-control" >
					</div>

					<div class="form-group">
						<select class="form-control" id="filtro">
							<option value="asunto">Asunto</option>
							<option value="correo">Correo</option>
							<option value="mensaje">Contenido</option>
						</select>
					</div>

					<div class="form-group">
						<input type="submit" value="Buscar" class="btn btn-default btn-sm">
					</div>
				</form>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-2 col-lg-2 left-line" style="padding:0px 0px;border-right:1px solid lightgray;">
			<ul class="left-menu">
				<li data-bandeja="inbox" onclick="cambiarBandeja(this)"><a name="menu_correo" class="activo" href="javascript:getInbox()" >Mensajes recibidos <span class="badge"><?=$no_inbox;?></span></a></li><li class="h-separator"></li>
				<li data-bandeja="sent" onclick="cambiarBandeja(this)"><a name="menu_correo" href="javascript:getSent()">Mensajes enviados <span class="badge"><?=$no_sent;?></span></a></li><li class="h-separator"></li>
				<li data-bandeja="drafts" onclick="cambiarBandeja(this)"><a name="menu_correo"  href="javascript:getDrafts()">Borrador <span class="badge"><?=$no_drafts;?></span></a></li><li class="h-separator"></li>
				<li><a href="<?=base_url()?>">Salir</a></li>
				<li class="h-line"></li>
			</ul>	
		</div>
		<div class="col-lg-10 col-md-10">
		<!--DIV PARA LOS MENSAJES DE ENTRADA -->
		<div id="area_mensajes">
			
		</div>
		</div>
	</div>
</div>

<!--MODAL PARA ENVIAR EL MENSAJE-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Nuevo mensaje</h4>
      </div>
      <div class="modal-body">
        <form method="post" action="<?=base_url('Correo/EnviarMensaje')?>" id="formEnviarMensaje" name="formEnviarMensaje">
         	<input type="hidden" name="borrador" id="borrador" value="false">
        	<input type="hidden" name="usuario" id="usuario" value="">
         <div class="form-group">
            <label for="" class="control-label">Seleccione tipo de usuario</label>
            <select style="width:600px;" class="form-control" name="tipo_usuario" id="tipo_usuario">
            	<option value="0">Egresado</option>
            	<option value="1">Empresa</option>
            	<option value="2">Publicador</option>
            </select>
          </div>
          <div class="form-group">
            <label for="" class="control-label">Destinatario:</label>
            <input style="width:600px;" required type="text" list="lista_egresados" class="form-control" id="destinatario" name="destinatario">
          </div>
           <div class="form-group">
            <label for="" class="control-label">Asunto:</label>
            <input style="" required type="text" class="form-control" id="asunto" name="asunto">
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">Mensaje:</label>
            <textarea required class="form-control" rows="8" id="mensaje" name="mensaje"></textarea>
          </div>
          <div class="form-group">
          	<div class="checkbox">
          		<?php
          		if(esEgresado()){
          			echo " <label><input type='checkbox' name='curr_adjuntado' id='curr_adjuntado'>";
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
		
</style>
<script type="text/javascript" src="<?=base_url('public/js/correo.js')?>"></script>
<script type="text/javascript">
	
	$("#btnEliminar").click(function(){

		eliminarMensajes();

	});

	$("#exampleModal").on("hide.bs.modal",function(e){

		limpiarCampos();

	});

	$("#btnEnviar").click(function(){
		var form = document.getElementById("formEnviarMensaje");
		var usuario = document.getElementById("usuario").value;
		var mensaje = document.getElementById("mensaje").value;
		
		if(form.asunto.value == ""){
			alert("Escribe un asunto para el mensaje");
		}else if(usuario == ""){
			alert("Porfavor selecciona un usuario de la lista que se muestra");
		}else if(mensaje == ""){
			alert("El mensaje esta vacio");
		}else{
			enviarMensaje(form);
			$("#exampleModal").modal("hide");
		}
		
	});

	$("#btnBorrador").click(function(){
		if((document.getElementById("mensaje").value != "") && (document.getElementById("asunto").value != "")){
			if(confirm("¿Desea guardar este mensaje como borrador?")){
				document.getElementById("borrador").value = true;
				enviarMensaje(document.getElementById("formEnviarMensaje"));
				$("#exampleModal").modal("hide");

			}	
		}else{
			alert("digite su mensaje y asunto");
		}
	});
	
	var lista = $("datalist").get(0);
	$("#tipo_usuario").change(function(){
		$("#usuario").val("");
		var indice = $("#tipo_usuario").val();
		lista = $("datalist").get(indice);
		$("#destinatario").attr("list",lista.id);
		$("#destinatario").val("");
	});

	$("#destinatario").keydown(function(){
		
	});

	$("#destinatario").change(function(){
		
		user_id = validarUsuario($("#destinatario").val());
		if(user_id != null){
			$("#usuario").val(user_id);
		}else{
			$("#usuario").val("");
		}
		
	});

	function validarUsuario(valor){
		if(lista != null){

			options = lista.options;
			for(var i = 0; i < options.length; i++){
	        	if(options[i].value == valor){
	        		
	        		return options[i].getAttribute('data-id');
	        		//selected_user = options[i].getAttribute('data-id');
	            }
	    	}
		}
		return null;
	}

	$("#filtro").change(function(){

		if(this.selectedIndex == 1){
			if(bandeja == "sent"){
				$("#busqueda").attr("name","destinatario");
			}else{
				$("#busqueda").attr("name","remitente");
			}
		}else{
			$("#busqueda").attr("name",$("#filtro").val());
		}
		

	});

	function limpiarCampos(){
		document.getElementById("formEnviarMensaje").reset();
		document.getElementById("borrador").value = false;
		var lista = $("datalist").get(0);
		$("#destinatario").attr("list","lista_egresados");
	}

	function cambiarBandeja(element){
		
		bandeja = element.getAttribute("data-bandeja");
		document.getElementById("busqueda").value = "";
	}

	var bandeja = "inbox";
	$("#formBusqueda").submit(function(e){
		
		e.preventDefault();
		buscar(document.getElementById("formBusqueda"),bandeja);

	});
</script>