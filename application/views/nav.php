<div class="navbar navbar-white">
	<div class="container">
		<div class="col-md-12 col-lg-12">
			<div class="navbar-icono">
				<a href="<?=base_url()?>"><img src="<?=base_url('public/res/logo_uni_610x377.png')?>" alt="esta mierda no sirve"></a>
			</div>
			<ul class="nav nav-pills navbar-right" style="margin-right:-4px;">
				<li role="presentation" class="active" id="menu_inicio"><a href="<?=base_url()?>">Inicio</a></li>

				<li role="presentation" id="menu_informacion">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
				      Información <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				    	<li><a href="<?=base_url('informacion_egresado')?>">Información para egresados</a></li>
				       	<li><a href="<?=base_url('informacion_empresa')?>">Información para empresas</a></li>
				    	<li class="divider"></li>

				    	<li><a href="<?=base_url('Publicaciones/cursos')?>">Listado de cursos</a></li>
				    	<li><a href="<?=base_url('Publicaciones/becas')?>">Listado de becas</a></li>
						
						<li class="divider"></li>
						<li><a href="<?=base_url('listado_egresados')?>">Listado egresados</a></li>
				    </ul>				
				</li>
			
			<?php
				if(!sesionIniciada()){
					?>
						<li role="presentation" id="menu_cuenta">

							<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
						      Registro <span class="caret"></span>
						    </a>
						    <ul class="dropdown-menu">
						    	<li><a href="<?=base_url('registro_empresa')?>">Registro de empresas</a></li>
						  
						    	<li><a href="<?=base_url('autenticar_egresado')?>">Autenticación de egresados</a></li>
						    	
						    </ul>		
						</li>
						<?
					}
				?>
				<li role="presentation" id="menu_contacto"><a href="<?=base_url('contacto')?>">Contactanos</a></li>
			
			<?php
				if(!sesionIniciada()){
					?>
						<li role="presentation" id="menu_ingresar"><a href="<?=base_url('login')?>">Ingresar</a></li>
					<?
				}
			?>			
			
				<?php
					if(sesionIniciada() && esEgresado()){
						?>
							<li id="menu_bolsa"><a href="<?=base_url('publicaciones/BolsaDeTrabajo')?>">Bolsa de empleo</a></li>
						<?
					}

					if(sesionIniciada()){
						?>
							<li role="presentation" id="menu_cuenta">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
							      Cuenta <span class="caret"></span>
							    </a>
							    <ul class="dropdown-menu">
							    	<div class="img-profile">
							    		<img class="img-circle" src="<?=base_url('uploads/'.getImagenPerfil())?>" alt="">
							    	</div>
							    	<li><a href="<?=base_url('Perfil')?>"><span class="glyphicon glyphicon-user"></span> Mi Perfil</a></li>
							  		<li><a href="<?=base_url('Correo')?>"><span class="glyphicon glyphicon-envelope"></span> Mensajes</a></li>
							    	<li><a href="<?=base_url('Sesion/CerrarSesion')?>"><span class="glyphicon glyphicon-off"></span> Cerrar sesion</a></li>
							    </ul>
							</li>
						<?
					}
				?>
			</ul>
		</div>
	</div>
</div>
<style type="text/css">
	.navbar-icono img{
		margin-top: 2px;
		float: left;	
		max-height: 42px;
		padding: 3px;
		border:1px solid lightgray;	
	}
	.img-profile img{
		width: 95px;
		height: 95px;
	}
	.nav.nav-pills{
		margin-top: 6px;
	}
	.nav-pills li{
		margin-right: 3px;
	}
	.nav-pills li a{
		padding: 8px 15px;
	}
</style>
<script type="text/javascript">
	var temp = null;
	$(".dropdown-toggle").click(function(){
		temp = $(".active").parent();
		$(".nav.nav-pills li").removeClass("active");
		$(this).parent().addClass('active');
	});

	$("#menu_informacion").on("hidden.bs.dropdown",function(){
		$(".nav.nav-pills li").removeClass("active");
		$(temp).addClass('active');
	});
</script>