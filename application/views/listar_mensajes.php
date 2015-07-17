<?php
	$lista = null;
	if(!isset($inbox) && !isset($sent) && !isset($drafts)){
		exit("<h1>No hay mensajes</h1>");
	}
?>
<table class="table table-hover">
	<caption>
		<?	
			if(isset($inbox)){
				echo "Bandeja de entrada";
				$lista = $inbox;
			}else if(isset($sent)){
				echo "Bandeja de salida";
				$lista = $sent;
				#
			}else if(isset($drafts)){
				echo "Borrador";
				$lista = $drafts;
			}
		?>
	</caption>
	<thead>
	<?php
		if($lista->num_rows() > 0){
	?>	
	<tr>
		<th>
			<!--CELDA PARA MARCAR -->		
		</th>
		<th>
			<?
				if(isset($inbox)){
					echo "Remitente";
				}else{
					echo "Destinatario";
				}
			?>
		</th>
		<th>Asunto</th>
		<th>Fecha de envio</th>
		<?
			if(isset($sent) || isset($drafts)){
				echo "<th>Estado</th>";
			}
		?>
		
	</tr>
	</thead>
	
	<tbody>
		<?php

			
				foreach ($lista->result() as $row) {
					
					echo "<tr>";
					echo "<td><input type='checkbox' name='marcador' id='marcador' value='$row->mensaje_id'></td>";
					if(isset($inbox)){
						echo "<td>$row->de</td>";
					}else{
						echo "<td>$row->para</td>";
					}
					echo "<td><a href='". base_url('Correo/LeerMensaje/'.$row->mensaje_id). "''>$row->asunto</a></td>";
					echo "<td>$row->fecha_envio</td>";
					if(isset($inbox)){
						echo "<td>$row->estado</td>";
					}
					echo "</tr>";
				}
			}else{
				?>
					<center><h1>No hay mensajes</h1></center>
				<?
			}
		?>
	</tbody>
	<tfoot>
		
	</tfoot>
</table>