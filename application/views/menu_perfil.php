<input type="hidden" value="<?=base_url()?>" id="base_url">
<div class="container">
	<div class="row">
		<div class="col-md-2 col-g-2 margen-top">
			<div class="row">
				<a href="#" id="load_image" class="img-perfil">
				<?php

					if(getImagenPerfil() == ""){
						?>
						<img class="img-responsive" src="<?=base_url('uploads/male.jpg')?>">
						<?
					}else{
						?>
						<img class="img-responsive" src="<?=base_url('uploads/'. getImagenPerfil())?>">
						<?
					}
				?>
			
				<span class="glyphicon glyphicon-camera"></span>
				</a>
			</div>
				
			<div class="row">
				<h4 for=""><strong><?=getNombre()?></strong></h4>
			<h4><small><?=getCorreo()?></small></h4>
			<div class="h-line"></div>

			<a id="editar_perfil" href="#" class="menu-item">Editar perfil</a>
			<a id="ver_mensajes" href="<?=base_url('Correo')?>" class="menu-item">Mensajes</a>
			<?php
				if(esEgresado()){
					?>
					<div class="h-line"></div>
					<a id="editar_curriculum" href="#" class="menu-item">Curriculum</a>
					<div class="h-line"></div>
					<a id="ver_bolsa" href="#" class="menu-item">Bolsa de trabajo</a>
					<a id="ver_cursos" href="#" class="menu-item">Cursos de posgrado</a>
					<a id="ver_becas" href="#" class="menu-item">Becas</a>
					<?
				}elseif(esEmpresa()){
					?>
						<div class="h-line"></div>
						<a id="crear_ficha" href="javascript:nuevaFicha();" class="menu-item">Crear ficha</a>
						<a id="ver_fichas" href="javascript:listarFichas();" class="menu-item">Ver fichas</a>
					<?
				}elseif(esPublicador()){
					?>
						<div class="h-line"></div>
						<a id="crear_ficha" href="#" class="menu-item">Crear ficha</a>
						<a id="ver_fichas" href="#" class="menu-item">Ver fichas</a>
					<?
				}elseif(esAdministrador()){
					?>
						<div class="h-line"></div>
						<a id="crear_ficha" href="#" class="menu-item">Crear ficha</a>
						<a id="ver_fichas" href="#" class="menu-item">Ver fichas</a>
					<?
				}
			?>
			<div class="h-line"></div>
			</div>
		</div>
		<div class="col-md-10 col-lg-10 margen-top">
			<div id="contenido" style="overflow-x:auto;">
				<?php
					if(isset($upload_error)){
						echo "<script>
							alert('La imagen que estas intentando subir no cumple los requisitos');
						</script>";
					}
				?>
			</div>
		</div>
	</div>

</div>
<form action="<?=base_url('Perfil/CambiarImagenDePerfil')?>" method="POST" id="formSubirImg" enctype='multipart/form-data'>
	<input type="file" name="imagen" id="imagen" style="visibility:hidden" accept=".jpg,.png,.gif,.jpeg">
</form>

<style type="text/css">

	.img-perfil{
		display: block;
		overflow: hidden;
		background-color: white;
		border-radius: 4%;
		margin-right: 20px;
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

	.h-line{
		border-bottom:1px solid lightgray;
	
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


	#contenido{
		overflow-y:auto;
		height:490px;
		overflow-x:hidden;
	}
</style>

<script type="text/javascript">
	cargarPerfil();

	$("#editar_perfil").click(function(){
		cargarPerfil()
	});
	
	function cambiarClave(form){
		
		if(form.clave_actual.value !="" && form.clave_nueva.value != "" && form.clave_repetida.value != ""){
			if(confirm("¿Esta seguro que desea cambiar su contraseña?")){
			   	$.ajax({url:form.action,
				data: $(form).serialize(),
				type: "post",
				datatype: "html",
				success:function(data){
					$("#cambiarClaveRespuesta").html(data);
				},
				aync: false
				});
    		}

		}else{
			alert("Hay campos incompletos");
		}
	}
	//Codigo en php
	<?
		if(esEgresado()){
			?>
				function cargarPerfil(){
					$("#contenido").load("<?=base_url('Perfil/PerfilEgresado')?>");
				}
			<?
		}elseif(esEmpresa()){
			?>
				function cargarPerfil(){
					$("#contenido").load("<?=base_url('Perfil/PerfilEmpresa')?>");
				}
			<?
		}elseif(esPublicador()){
			?>
				function cargarPerfil(){
					$("#contenido").load("<?=base_url('Perfil/PerfilPublicador')?>");
				}
			<?
		}elseif(esAdministrador()){
			?>
				function cargarPerfil(){
					$("#contenido").load("<?=base_url('Perfil/PerfilAdministrador')?>");
				}
			<?
		}
	?>
	
	$("#load_image").click(function(){
		$("#imagen").trigger("click");

	});

	$("#imagen").change(function(){
		$("#formSubirImg").submit();
	});
</script>
<script type="text/javascript" src="<?=base_url('public/js/ficha.js')?>"></script>
