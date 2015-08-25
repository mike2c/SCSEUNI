<br>
<form action="<?=base_url('Correo/EnviarBorrador')?>" method="post" name="formEnviarBorrador" id="formEnviarBorrador">
	<input type="hidden" id="mansaje_id" name="mensaje_id" value="<?=$mensaje->mensaje_id?>">
  <input type="hidden" id="usuario1" name="usuario" value ="">
  <input type="hidden" id="borrador1" name="borrador" value="false">
  <div class="form-group">
    <label for="" class="control-label">Seleccione tipo de usuario</label>
    <select style="width:600px;" class="form-control" name="tipo_usuario" id="tipo_usuario1">
    	<option value="0">Egresado</option>
    	<option value="1">Empresa</option>
    	<option value="2">Publicador</option>
    </select>
  </div>
  <div class="form-group">
    <label for="" class="control-label">Destinatario:</label>
    <input style="width:600px;" required type="text" list="lista_egresados" class="form-control" id="destinatario1" name="destinatario">
  </div>
   <div class="form-group">
    <label for="" class="control-label">Asunto:</label>
    <input style="" required type="text" class="form-control" id="asunto" name="asunto" value="<?=$mensaje->asunto?>">
  </div>
  <div class="form-group">
    <label for="message-text" class="control-label">Mensaje:</label>
    <textarea required class="form-control" rows="8" id="mensaje1" name="mensaje"><?php
    $texto = str_replace("<br />", "", $mensaje->mensaje);
    echo $texto;
    ?></textarea>
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
  <hr>
  <div class="form-group">
   <button type="button" class="btn btn-primary" id="btnEnviarBorrador">Enviar mensaje</button>
    <button onclick="actualizar()" type="button" class="btn btn-default" id="btnCancelarEdicion">Cancelar</button>
   
  </div>
</form>
<script type="text/javascript">

  $("#tipo_usuario1").change(function(){
    
    var indice = $("#tipo_usuario1").val();
    $("#usuario1").val("");
    lista = $("datalist").get(indice);
    $("#destinatario1").attr("list",lista.id);
    $("#destinatario1").val("");
  });

  $("#btnEnviarBorrador").click(function(){
  
    var form = document.getElementById("formEnviarBorrador");
 
    var usuario = document.getElementById("usuario1").value;
    var mensaje = document.getElementById("mensaje1").value;
    
    if(form.asunto.value == ""){
      alert("Escribe un asunto para el mensaje");
    }else if(usuario == ""){
      alert("Porfavor selecciona un usuario de la lista que se muestra");
    }else if(mensaje == ""){
      alert("El mensaje esta vacio");
    }else{
      enviarMensaje(form);
    }

 });

$("#destinatario1").change(function(){
    var u_id = validarUsuario($(this).val());
    if(u_id != null){
      $("#usuario1").val(u_id);
    }else{
      $("#usuario1").val("");
    }
  });

</script>

