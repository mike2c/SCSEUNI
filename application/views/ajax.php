<<<<<<< HEAD
=======
<button id="listar_departamentos">Listar Departamentos</button>
<hr>
<div id="area_departamentos">
	<select name="departamento" id="departamento">
		<?
			foreach($departamentos->result() as $row){
				echo "<option value='$row->departamento_id'>$row->departamento</option>";
			}
		
		?>
	</select>
</div>
<div id="area_municipios"></div> 
>>>>>>> 39c39827e1131be4dd10d49ad8668669d0c2f5ab
<script src="<?=base_url().'public/js/jquery.js'?>"></script>
<script type="text/javascript">
	$(document).ready(function(){

		$.post("<?=base_url().'Ajax/CargarDepartamentos'?>",
			function(data){
				$("body").html(data);
			});
	});
</script>