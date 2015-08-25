<input type="hidden" value="<?=base_url();?>" id="base_url">
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
<div id="barra_menu">
	<div class="container no-padding">
		<div class="col-md-2 col-lg-2"><!--REDACTAR MENSAJE-->
			<button data-toggle="modal" data-target="#exampleModal" class="btn btn-sm btn-primary" style="width:100%;">Redactar mensaje</button>
		</div>
		<div class="col-md-3 col-lg-3">
			<button id="btnActualizar" onclick="actualizar()" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-refresh"></span> Actualizar</button>
			<button id="btnEliminar" onclick="" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-trash"></span> Eliminar mensaje(s)</button>
		</div>
		<div class="col-md-5 col-lg-5 col-md-offset-2 col-lg-offset-2">
			<div class="input-group">
				<form class="form-inline" action="" type="post" id="formBusqueda" style="">
					<div class="form-group">
						<input placeholder="busqueda" class="form-control" type="search" id="busqueda" name="asunto">
					</div>
					<div class="form-group">
						<select class="form-control" id="filtro">
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
	<div class="col-md-2 col-lg-2">
		<ul class="left-menu">
			<li data-bandeja="inbox"><a href="javascript:getInbox();" class="activo">Recibidos <span class="badge">0</span></a></li>
			<li data-bandeja="sent"><a href="javascript:getSent();" class="">Enviados <span class="badge">0</span></a></li>
			<li data-bandeja="drafts"><a href="javascript:getDrafts();" class="">Borrador <span class="badge">0</span></a></li>
			<li><a href="<?=base_url('Perfil')?>" class="">Perfil</a></li>
		</ul>
			
		</div>
		<div class="col-lg-10 col-md-10 no-padding">
		<!--DIV PARA LOS MENSAJES DE ENTRADA -->
			<div id="area_mensajes">
				
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
        	
        	<div class="form-inline">
        		<div class="form-group" style="margin-right:10px;">
		            <label for="" class="control-label">Seleccione tipo de usuario</label><br>
		            <select style="min-width:250px" class="form-control" name="tipo_usuario" id="tipo_usuario">
		            	<option value="0">Egresado</option>
		            	<option value="1">Empresa</option>
		            	<option value="2">Publicador</option>
	            	</select>
	          </div>
	              <div class="form-group">
		            <label for="" class="control-label">Destinatario:</label><br>
		            <input style="min-width:400px" required type="text" list="lista_egresados" class="form-control" id="destinatario" name="destinatario">
		          </div>
        	</div>
         <br>
      
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

	$(".left-menu li").click(function(){
		$(".left-menu li").removeClass("activo");
		$(this).addClass("activo");
		bandeja = $(this).data("bandeja");
		$("#busqueda").val("");
	});

	function limpiarCampos(){
		document.getElementById("formEnviarMensaje").reset();
		document.getElementById("borrador").value = false;
		var lista = $("datalist").get(0);
		$("#destinatario").attr("list","lista_egresados");

	}

	var bandeja = "inbox";
	$("#formBusqueda").submit(function(e){
		
		e.preventDefault();
		buscar(document.getElementById("formBusqueda"),bandeja);

	});
</script>