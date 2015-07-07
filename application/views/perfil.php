<div class="cabecera">
	<div class="container">
		<div class="row">
			<div class="col-md-1 col-g-1">
				<a href="#" class="img-perfil">
				<img id="imagen_perfil" src="http://sintoniageek.com/wp-content/uploads/2011/03/avatar-geek-mario1.jpg">
				<span>cambiar</span>
				</a>

			</div>
			<div class="col-md-3 col-g-3">
			
				<h3 for=""><strong><?=getNombre()?></strong></h3>
				<h4><small><?=getCorreo()?></small></h4>
			</div>
		</div>
	</div>
</div>

<style type="text/css">
	
	.img-perfil{
		display: block;
		overflow: hidden;
		width: 80px;
		height: 70px;
		background-color: white;
		border-radius: 8%;
		border: 1px solid gray;
	}
	
	.img-perfil img{
		margin: 0 auto;
	}
	
	.img-perfil:hover > span{
		background-color: white;
		display: block;
		position: absolute;
		margin: 0px auto;
		
	}
	.img-perfil span{
		display: none;
	}

	.cabecera{

		padding: 5px 0px;
		border-bottom: 1px solid gray;
		
	}

	h1,h2,h3,h4,h5{
		margin: 0px 0px;
	}
</style>

<script type="text/javascript">
	var imagen = document.getElementById("imagen_perfil");
	var altura = imagen.style.height;
	var ancho = imagen.style.width;
	var porcentaje = 0;
	
	if(altura > ancho){
			porcentaje = (ancho/altura);
			imagen.style.height = "70px";
			imagen.style.width = (porcentaje*altura) + "px";
		}else if(ancho> altura){
			porcentaje = (altura/ancho);
			imagen.style.width = "80px";
			imagen.style.height = (porcentaje*ancho) + "px";
		}else{
			imagen.style.height = "70px";
			imagen.style.width = "80px";
		}
	
</script>