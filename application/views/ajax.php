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
<script src="<?=base_url().'public/js/jquery.js'?>"></script>
<script type="text/javascript">
	$(document).ready(function(){

		$("#departamento").change(function(){
			cualquiercosa();//$("#area_departamentos").load("<?=base_url().'Ajax/CargarDepartamentos'?>");
		});

	});

	function cualquiercosa(){
		$("#area_municipios").load("<?=base_url().'Ajax/CargarMunicipios/'?>" + $("#departamento").val());
	}
</script>