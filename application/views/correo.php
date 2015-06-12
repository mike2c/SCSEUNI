	<div class="container contenido">
	<!-- CABECERA DE LA PAGINA-->
	
	<div class="row borde-inferior">
		<div class="col-md-push-3 col-lg-push-3 col-xs-push-3 col-md-9 col-lg-9 col-xs-9">
			<div class="nav navbar">
				<a class="btn btn-default navbar-btn" href="<?=base_url().'index.php/Correo'?>"><span class="glyphicon glyphicon-refresh"></span> Actualizar</a>	
				<a class="btn btn-default navbar-btn"  class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><span class="glyphicon glyphicon-envelope"></span> Nuevo Mensaje</a>	
			</div>
		</div>
	</div>
	<!-- MENU Y LISTADO DE MENSAJES -->
	<div class="row">
		<div class="col-md-3 col-g-3 col-xs-3">
		<br><br>
			<ul class="nav nav-pills nav-stacked">
				<li><legend></legend></li>
				<li class="active"><a data-toggle="pill" href="#inbox">Bandeja de entrada<span class="badge pull-right"><?=(isset($inbox))? $inbox->num_rows() : 0;?></span></a></li>
				<li><legend></legend></li>
				<li><a data-toggle="pill" href="#sent">Mensajes enviados <span class="badge pull-right"><?=(isset($sent))? $sent->num_rows() : 0;?></span></a></li>
				<li><legend></legend></li>
				<li><a data-toggle="pill" href="#draft">Borrador <span class="badge pull-right">0</span></a></li>
				<li><legend></legend></li>
			</ul>
		</div>
		
		<div class="vr col-md-9 col-lg-9 col-xs-9">

			<!--TABLA PARA LA BANDEJA DE ENTRADA O MENSAJES ENTRANTES -->
			<div class="tab-content">
			    <div role="tabpanel" class="tab-pane fade in active" id="inbox">
			    	<table class="table table-hover">
						<caption>Bandeja de entrada</caption>
						<thead>	
							<tr>
							<th>Remitente</th>
							<th>Asunto</th>
							<th>Fecha de envio</th>
							<th>Estado</th>
						</tr>
						</thead>
						

						<tbody>
							<?php
								if(isset($inbox)){
									foreach ($inbox->result() as $row) {
										
										echo "<tr>";
									
										echo "<td>$row->de</td>";
										echo "<td>$row->asunto</td>";
										echo "<td>$row->fecha_envio</td>";
										echo "<td>$row->estado</td>";
										echo "<td><a href='". base_url()."index.php/Correo/LeerMensaje/$row->mensaje_id'>Leer</a></td>";
										echo "<td><a href='". base_url()."index.php/Correo/EliminarMensaje/$row->mensaje_id'>Eliminar</a></td>";
										echo "</tr>";
									}
								}else{
									echo "no hay nada :v";
								}
							?>
						</tbody>
						<tfoot>
							
						</tfoot>
					</table>
			    </div>
				 <div role="tabpanel" class="tab-pane fade" id="sent">
			    	<table class="table table-hover">
						<caption>Bandeja de salida</caption>
						<thead>
							<tr>
							<th>Remitente</th>
							<th>Asunto</th>
							<th>Fecha de envio</th>
							<th>Visto</th>
						</tr>
						</thead>
						<tbody>
							<?php
							//Programar para ue liste los mensajes

							?>
						</tbody>
						<tfoot>
							
						</tfoot>
					</table>
			    </div>
			  
			     <div role="tabpanel" class="tab-pane fade" id="draft">
			    	<table class="table table-hover">
						<caption>Borrador</caption>
						<thead>
							<tr>
							<th>Remitente</th>
							<th>Asunto</th>
							<th>Fecha de envio</th>
							<th>Visto</th>
						</tr>
						</thead>
						<tbody>
							<?php
							//Programar para ue liste los mensajes

							?>
						</tbody>
						<tfoot>
							
						</tfoot>
					</table>
			    </div>
			</div>
			</div>
		</div>
</div>

<!-- Modal para mostrar el formulario de nuevo mensje-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Nuevo mensaje</h4>
      </div>
      <div class="modal-body">
        <form method="post" action="asdsa">
      	  <div class="form-group">
            <label for="recipient-name" class="control-label">Correo:</label>
            <input type="text" name="asunto" class="form-control" id="recipient-name">
          </div> 
          <div class="form-group">
            <label for="recipient-name" class="control-label">Asunto:</label>
            <input type="text" name="asunto" class="form-control" id="recipient-name">
          </div> 
          <div class="form-group">
            <label for="message-text" class="control-label">Mensaje:</label>
            <textarea class="form-control" rows="5" name="mensaje" id="message-text"></textarea>
          </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
	        <input type="submit" class="btn btn-primary" value="Enviar mensaje">
	      </div>
        </form>
      </div>
    
    </div>
  </div>
</div>



<style type="text/css">
	th{
		font-family: Arial;
		font-weight: px;
	}
	.vr{
		border-left:1px solid lightgray;
		height: 400px;
	}
	.borde{
		border-left: 1px solid lightgray;
	}
	.borde-inferior{
		border-bottom: 1px solid lightgray;
	}
	
	legend{
		margin: 0 auto;
	}
</style>