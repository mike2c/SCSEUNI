
<input type="text" name="cedula" id="cedula" form="formPrueba">

<button id="validar">Guardar</button>

<script type="text/javascript" src="<?=base_url('public/js/Jquery.cedula_plugin.js')?>"></script>
<script>
	$(document).ready(function(){
		var cedula = $("#cedula").val();
		$("#validar").click(function(){
			if($("#cedula").valida()){
				alert("funciona");
			}else{
				alert("ele o ele");
			}
		});
	});
</script>