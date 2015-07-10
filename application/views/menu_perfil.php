<div class="container" style="border-left:1px solid lightgray;border-right:1px solid lightgray;">
	<div class="row">
		<div class="col-md-2 col-g-2 margen-top">
			<div class="row">
					<a href="#" class="img-perfil">
				<img class="img-responsive" src="http://applicacion.com/wp-content/uploads/2012/11/cambio-foto-perfil-redes-sociales.jpg">
				<span class="glyphicon glyphicon-camera"></span>
				</a>
			</div>

			<div class="row">
				<h4 for=""><strong><?=getNombre()?></strong></h4>
			<h4><small><?=getCorreo()?></small></h4>
			<div class="h-line"></div>

			<a id="editar_perfil" href="#" class="menu-item">Editar perfil</a>
			<a id="editar_curriculum" href="#" class="menu-item">Curriculum</a>
			<a id="ver_mensajes" href="#" class="menu-item">Mensajes</a>
			<div class="h-line"></div>

			<a id="ver_bolsa" href="#" class="menu-item">Bolsa de trabajo</a>
			<a id="ver_cursos" href="#" class="menu-item">Cursos de posgrado</a>
			<a id="ver_becas" href="#" class="menu-item">Becas</a>
			</div>
		</div>
		<div class="col-md-10 col-lg-10 margen-top" style="height:100%;">
			<div id="contenido" style="height:inherit;">
				
			</div>
		</div>
	</div>
</div>

<style type="text/css">
	
	.img-perfil{
		display: block;
		overflow: hidden;
		background-color: white;
		border-radius: 4%;
		border: 1px solid gray;
		margin: 5px 0px;
	}
	
	.img-perfil img{
		margin: 0 auto;
	}
	
	.img-perfil:hover > span{
		//background-color: white;
		display: block;
		position: absolute;
			
	}
	.img-perfil span{

		display: none;
		font-size: 28pt;
		width: 84%;
		margin-top: 25%;
		background-color: ;
		text-align: center;
		color: white;
		text-shadow: 0px 0px 4px black;
	}

	.cabecera{
		background-color: #f5f5f5;		
		padding: 5px 0px;
		border-bottom: 1px solid gray;
		
	}

	h1,h2,h3,h4,h5{
		margin: 0px 0px;
	}
	
	.h-line{
		border-bottom:1px solid lightgray;
		margin:6px 0;
	}

	.margen-top{
		margin-top: 10px;
	}

	.menu-item{
		display: block;
		width: 100%;
		//background-color: gray;
		margin: 5px 0px;
		padding-left: 10px;
		color: gray;
		font-size: 14px;
	}

	.tab-pane{
		padding-top:10px;
	}
</style>

<script type="text/javascript">
	cargarPerfil();

	$("#editar_perfil").click(function(){
		cargarPerfil()
	});
	

	function cargarPerfil(){
		$("#contenido").load("<?=base_url('Perfil/PerfilEgresado')?>");
	}
</script>