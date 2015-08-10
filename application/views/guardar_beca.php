
<br><div class="container">

<div class="row">
	<div class="col-md-5 col-lg-5">
	<form method="post" action="<?=base_url().'index.php/Beca/guardar'?>" enctype="multipart/form-data">
		
		<div class="form-group well">
			<label><p>Selecciona la fecha del publicacion</p></label>
			<input class="form-control" type="date" name="fecha_publicacion" id="fecha1">
		</div>

		<div class="form-group well">
			<label><p>Selecciona la fecha en la que la publicación dejara de ser visible</p></label>
			<input class="form-control" type="date" name="fecha_alta" id="fecha2">
		</div>

		<div class="form-group">
			<label>Escribe una breve descripcion del contenido</label>
			<textarea class="form-control" name="descripcion"></textarea>
		</div>

		<div class="form-group">
			<label>Imagen(<small>opcional</small>)</label>
			<input type="file" name="imagen">
		</div>



		<div class="form-group">
			<label>Inserte una URL opicinal del la publicacion</label>
			<input type="url" class="form-control" name="url" id="urltexto">
		</div>		

		<script type="text/javascript">

			function REVISAR() {

    //Declaramos la expresión regular que se usará para validar la url pasada por parámetro

    var regexp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/

    //Retorna true en caso de que la url sea valida o false en caso contrario

	if(!regexp.test(document.getElementById('urltexto').value)){
	alert("Por Favor Inserte una Url Correcta");
}
    return regexp.test(document.getElementById('urltexto').value);

 }


		</script>

		<div class="form-group">
		<input type="submit" class="btn btn-primary " value="guardar" onclick="return REVISAR()">	
		<input type="submit" class="btn btn-primary " value="Limpiar">	
		</div>
			

</form>
	</div>
</div>
	
</div>
<script type="text/javascript" src = "../../public/js/eventos.js">
	
</script>
