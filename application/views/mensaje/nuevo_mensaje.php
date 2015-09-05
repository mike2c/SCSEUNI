<!--MODAL PARA ENVIAR EL MENSAJE-->
<div class="modal fade" id="redactarMensaje" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Nuevo mensaje</h4>
      </div>
      <div class="modal-body">
        <form method="post" action="<?=base_url('Correo/EnviarMensaje')?>" id="formEnviarMensaje" name="formEnviarMensaje">
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