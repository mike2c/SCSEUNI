<input id="buscar" type="text" list="lista" autocomplete="off">

<datalist data-prueba ="hola" id="lista">
	<option data-id="0" value="Ocotal" label="mikedosce1992gmail.com">
	<option data-id="1" value="Mozonte" label="cruzhernandezrenemauricio@gmail.com">
	<option data-id="2" value="Dipilto" label="mikedosce1992gmail.com">
	<option data-id="3" value="San Fernando" label="San Fernando">
	<option data-id="4" value="Jicaro" label="Jicaro">
</datalist>

<select name="lista2" id="lista2">
	<option data-id="0" value="Ocotal" label="">
	<option data-id="1" value="Mozonte" label="Mozonte">
	<option data-id="2" value="Dipilto" label="Dipilto">
	<option data-id="3" value="San Fernando" label="San Fernando">
	<option data-id="4" value="Jicaro" label="Jicaro">
</select>
<button id="boton">Probar</button>
<script type="text/javascript">

	$(document).ready(function(){

		document.getElementById("buscar").onclick(function(){
			alert("");
		});
		
		function selectedItem(elemento){
			var options = elemento.childNodes;
			
			for(var i = 0; i < options.length; i++){
				console.log(options[i].label);
					
			}
		}
	});

</script>