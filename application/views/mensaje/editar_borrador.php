
<form action="" method="post">
	<div class="form-group">
    <label for="" class="control-label">Seleccione tipo de usuario</label>
    <select style="width:600px;" class="form-control" name="tipo_usuario" id="tipo_usuario">
    	<option value="1">Egresado</option>
    	<option value="2">Empresa</option>
    	<option value="3">Publicador</option>
    </select>
  </div>
  <div class="form-group">
    <label for="" class="control-label">Destinatario:</label>
    <input style="width:600px;" required type="text" list="lista_egresados" class="form-control" id="usuario" name="usuario">
  </div>
   <div class="form-group">
    <label for="" class="control-label">Asunto:</label>
    <input style="" required type="text" class="form-control" id="asunto" name="asunto">
  </div>
  <div class="form-group">
    <label for="message-text" class="control-label">Mensaje:</label>
    <textarea required class="form-control" rows="8" id="mensaje" name="mensaje"><?php
    $texto = str_replace("<br />", "", $mensaje->mensaje);
    echo $texto;
    ?></textarea>
  </div>

</form>
