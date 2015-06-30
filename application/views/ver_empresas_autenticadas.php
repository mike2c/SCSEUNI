<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
 
	//Checkbox
	$("input[name=checktodos]").change(function(){
		$('input[type=checkbox]').each( function() {			
			if($("input[name=checktodos]:checked").length == 1){
				this.checked = true;
			} else {
				this.checked = false;
			}
		});
	});
 
});
</script>
<form action="<?=base_url().'index.php/admin/autenticarEmpresa' ?> " method="POST" id="empresasLista" >
<table border="1">
<tr>
	<thead>
		<th><input type="checkbox" name="checktodos" form="empresasLista" /></th>
		<th>Nombre de la Empresa</th>
		<th>Estado de la Empresa</th>
	</thead>
</tr>
<?php
	foreach ($datos_empresa->result() as $key) {
		if($key->autenticada == FALSE){
		?>
		<tr>
			<td> <input type="checkbox" name='empresas[]' form="empresasLista" value=" <?php echo $key->empresa_id ?>" /></td>
			<td> <?php echo $key->nombre_empresa; ?></td>
			<td> Sin Autentificar </td>
		</tr>
		<?php
		}else{
			?>
		<tr>
			<td> </td>
			<td> <?php echo $key->nombre_empresa; ?></td>
			<td> Autenticada </td>
		</tr>
		<?php
		}
	}
?>
</table>
<input type="submit" value="Autenticar" />

</form>