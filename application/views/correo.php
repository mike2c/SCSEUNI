<?php
	$no_inbox = 0;
	$no_sent = 0;
	$no_drafts = 0;
	
	if(isset($inbox)){
		$no_inbox = $inbox->num_rows();
	}else{
		echo "no se han cargado los mensajes recibidos<br>";
	}

	if(isset($sent)){
		$no_sent = $sent->num_rows();
	}else{
		echo "no se han cargado los mensajes enviados<br>";
	}

	if(isset($drafts)){
		$no_drafts = $drafts->num_rows();
	}else{
		echo "no se han cargado los mensajes en borrador<br>";
	}
?>
	<input type="hidden" value="<?=base_url();?>" id="base_url">
	<div class="row contenido">
	<div class="container">
			<div class="col-md-3 col-lg-3" style="padding-left:6px;padding-top:0px;">
				<div class="navbar-nav navbar-left">
					<button class="btn  btn-sm btn-primary navbar-btn"><span class="glyphicon glyphicon-pencil"></span> Redactar mensaje</button>
				</div>
				<div class="navbar-nav navbar-left" style="margin-right:10px;">
					<button class="btn  btn-sm btn-default navbar-btn btn-default" id="btnEliminar"><span class="glyphicon glyphicon-trash"></span> Eliminar</button>
				</div>
			</div>
			<div class="col-md-9 col-lg-9" style="padding-right:0px;padding-left:5px;">
				<div class="navbar-nav navbar-left">
					<button class="btn  btn-sm btn-default navbar-btn"><span class="glyphicon glyphicon-refresh"></span> Actualizar</button>
				</div>
				<form class="navbar-form navbar-left navbar-right" id="formBusqueda" method="post">
					<div class="form-group">
					<input type="text" id="busqueda" name="busqueda" placeholder="busqueda" class="form-control" >
					<select class="" name="filtro" id="filtro">
						<option value="asunto">Asunto</option>
						<option value="correo">Correo</option>
					</select>
					</div>
				</form>
		</div>
	</div>
</div>

<div class="container">
	<div class="row" style="">
		<div class="col-md-3 col-lg-3 left-line" style="padding:0px 0px;">
			<ul class="left-menu">
				<li><a class="activo" href="#" id="option_inbox">Mensajes recibidos <span class="badge"><?=$no_inbox;?></span></a></li>
				<li class="h-separator"></li>
				<li><a id="option_sent" href="#">Mensajes enviados <span class="badge"><?=$no_sent;?></span></a></li><li class="h-separator"></li>
				<li><a id="option_drafts" href="#">Borrador <span class="badge"><?=$no_drafts;?></span></a></li><li class="h-separator"></li>
				<li><a href="<?=base_url()?>">Salir</a></li>
			</ul>	
		</div>
		<div class="col-lg-9 col-md-9 ll-line" >
		<!--DIV PARA LOS MENSAJES DE ENTRADA -->
		<div id="divinbox" class="ocultar">
			<table class="table table-hover">
				<caption>Bandeja de entrada</caption>
				<thead>	
					<tr>
					<th>
								
					</th>
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
								echo "<a href='#'>";
								echo "<td style='padding-left:15px;'><input estado='$row->estado' type='checkbox' id='mensaje_id' name='mensaje_id' value='$row->mensaje_id'></td>";
								echo "<td>$row->de</td>"; 
								echo "<td><a href='" . base_url("index.php/Correo/LeerMensaje/$row->mensaje_id") . "'>$row->asunto</a></td>";
								echo "<td>$row->fecha_envio</td>";
								echo "<td>$row->estado</td>";
								//echo "<td><a href='". base_url()."index.php/Correo/LeerMensaje/$row->mensaje_id'>Leer</a></td>";
								echo "</a>";
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
		<!-- DIV PARA LOS MENSAJES DE SALIDA -->
		<div id="divsent" class="ocultar">
			
			<table class="table table-hover">
				<caption>Bandeja de salida</caption>
				<thead>	
					<tr>
					<th>
								
					</th>
					<th>Destinatario</th>
					<th>Asunto</th>
					<th>Fecha de envio</th>
					<th>Estado</th>
				</tr>
				</thead>
				
				<tbody>
					<?php
						if(isset($sent)){
							foreach ($sent->result() as $row) {
								
								echo "<tr>";
								echo "<td style='padding-left:15px;'><input type='checkbox' id='mensaje_id' name='mensaje_id' value='$row->mensaje_id'></td>";
								echo "<td>$row->para</td>"; 
								echo "<td><a href='" . base_url("index.php/Correo/LeerMensaje/$row->mensaje_id") . "'>$row->asunto</a></td>";
								echo "<td>$row->fecha_envio</td>";
								echo "<td>$row->estado</td>";
								//echo "<td><a href='". base_url()."index.php/Correo/LeerMensaje/$row->mensaje_id'>Leer</a></td>";
								
								echo "</tr>";
							}
						}else{
							
						}
					?>
				</tbody>
				<tfoot>
					
				</tfoot>
			</table>
		</div>
		<!--DIV PARA BORRADOR-->
		<div id="divdrafts" class="ocultar">
			
			<table class="table table-hover">
				<caption>Borrador</caption>
				<thead>	
					<tr>
					<th>
								
					</th>
					<th>Destinatario</th>
					<th>Asunto</th>
					<th>Fecha de envio</th>
					<th>Estado</th>
				</tr>
				</thead>
				
				<tbody>
					<?php
						if(isset($drafts)){
							foreach ($drafts->result() as $row) {
								
								echo "<tr>";
								echo "<td style='padding-left:15px;'><input estado='$row->estado' type='checkbox' id='mensaje_id' name='mensaje_id' value='$row->mensaje_id'></td>";
								echo "<td>$row->para</td>"; 
								echo "<td><a href='" . base_url("index.php/Correo/LeerMensaje/$row->mensaje_id") . "'>$row->asunto</a></td>";
								echo "<td>$row->fecha_envio</td>";
								echo "<td>$row->estado</td>";
								//echo "<td><a href='". base_url()."index.php/Correo/LeerMensaje/$row->mensaje_id'>Leer</a></td>";
								
								echo "</tr>";
							}
						}else{
			
						}
					?>
				</tbody>
				<tfoot>
					
				</tfoot>
			</table>
		</div>
		</div>
	</div>
</div>

<style type="text/css">
	@import url("<?=base_url('public/css/correo.css')?>");

	nav{
		padding-left: 0px 0px;
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

</style>
<script type="text/javascript" src="<?=base_url('public/js/correo.js')?>"></script>