<header id="cabecera" class="header">
	<div class="container">
			<div class="row">
			<div class="col-md-2 col-lg-2 no-padding">
				<a href="<?=base_url('Bienvenido')?>"><img style="border: 1px solid white;height:40%;width:60%;margin-top:10px;" class="img" src="<?=base_url('public/res/logo_transparent.png');?>" alt=""></a>
			</div>
			<div class="col-md-8 col-lg-8 auto-size">
				<center>
					<h2 style=""><strong>Universidad Nacional de Ingeniería</strong></h2>
					
					<h4>Recinto Universitario Augusto Cesar Sandino</h4>
					<h5>Sistema para el control y seguimiento de egresados</h5>
					<h5>Estelí, Nicaragua</h5>
				</center>
			</div>
				<div class="col-md-2 col-lg-2 no-padding">
				<img class="" style="margin-left:auto;margin-top:5px;display:block;width:45%;" src="<?=base_url('public/res/jicara_sandino.png');?>" alt="">
			</div>
		</div>
	</div>
</header><!--FIN DEL ENCABEZADO-->
<nav style="border-bottom: 1px solid lightgray;">
	<div class="container">
		<ul class="menu">
			<li style="border-left:1px solid lightgray"><a href="<?=base_url('Bienvenido')?>"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-chevron-down"></span> Informacion</a>
				<ul class="">
					<li class="sub-menu"><a href="#">Egresados <span class="glyphicon glyphicon-chevron-down"></span></a>
						<ul>
							<li><a href="<?=base_url('Informacion/Egresados')?>">Información</a></li>
							<li><a href="<?=base_url('Egresado/Autenticar')?>">Autenticación</a></li>
						</ul>
					</li>
					<li class="sub-menu"><a href="#">Empresa <span class="glyphicon glyphicon-chevron-down"></span></a>
						<ul>
							<li><a href="<?=base_url('Informacion/Empresas')?>">Información</a></li>
							<li><a href="<?=base_url('Empresa/Registro')?>">Registro</a></li>
						</ul>
					</li>
					<li style="border-top:1px dotted lightgray"><a href="<?=base_url('Informacion/misionVision')?>">Mision y Vision</a></li>
					<li><a href="<?=base_url('Informacion/Cursos')?>">Cursos</a></li>
					<li><a href="<?=base_url('Informacion/Becas')?>">Becas</a></li>
				</ul>
			</li>
			<?php
				if(sesionIniciada()){
					if(esEgresado()){
						?><li><a href="<?=base_url('Informacion/BolsaDeTrabajo')?>"><span class="glyphicon glyphicon-briefcase"></span> Bolsa de trabajo</a></li>	<?
					}
				}
			?>
			<li><a href="<?=base_url('Contacto')?>"><span class="glyphicon glyphicon-earphone"></span> Contacto</a></li>
			<?php
				if(!sesionIniciada()){
					?><li style="border-right:1px solid lightgray;"><a href="<?=base_url('Sesion')?>"><span class="glyphicon glyphicon-user"></span> Iniciar Sesion</a></li><?
				}
			?>
			
		</ul>
		
			<?php
			if(sesionIniciada()){
			?>
			<div style="float:right">
				<a id="btn_perfil" href="#">
				<img id="img_perfil" src="<?=base_url('uploads/'. getImagenPerfil())?>" alt=""> <?=getNombre()?> 
				<span class="glyphicon glyphicon-chevron-down"></span>
				<ul class="btn-menu-perfil">
					<li><a href="<?=base_url('Perfil')?>">Mi perfil</a></li>
					<li><a href="<?=base_url('Correo')?>">Mensajes</a></li>
					<li><a style="border-bottom:none;" href="<?=base_url('Sesion/CerrarSesion')?>">Cerrar sesión</a></li>
				</ul>
				</a>
			</div>
			
			<?
			}
		?>
	</div>

</nav>
<script type="text/javascript">

	$("#btn_perfil").click(function(){
		$(".btn-menu-perfil").toggle();
	});

	$(".btn-menu-perfil").mouseleave(function(){
		$(this).hide();
	});

	$(".sub-menu").hover(function(){
		$(this).find("span").removeClass("glyphicon glyphicon-chevron-down");
		$(this).find("span").addClass("glyphicon glyphicon-chevron-right");
	});

	$(".sub-menu").mouseleave(function(){
		$(this).find("span").removeClass("glyphicon glyphicon-chevron-right");
		$(this).find("span").addClass("glyphicon glyphicon-chevron-down");
	});

</script>