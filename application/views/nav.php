<div class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<a href="<?=base_url()?>" class=""><img class="navbar-brand" src="<?=base_url('public/res/logo_uni_610x377.png')?>" alt=""></a>
		</div>

		<div class="nav nav-pills navbar-right">
			<li role="presentation" class="active" id="menu_inicio"><a href="#">Inicio</a></li>

			<li role="presentation" id="menu_informacion">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
			      Información <span class="caret"></span>
			    </a>
			    <ul class="dropdown-menu">
			    	<li><a href="<?=base_url('informacion_egresado')?>">Información egresados</a></li>
			       	<li><a href="<?=base_url('informacion_empresa')?>">Información de empresas</a></li>
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
					<!--Menu de registro-->
					<li role="presentation" id="menu_registro">
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
		
			<li role="presentation" id="menu_contacto"><a href="<?=base_url('contacto')?>">Contacto</a></li>
			<li role="presentation" id="menu_ingresar"><a href="<?=base_url('login')?>">Ingresar</a></li>
		</div>
	</div>
</div>

<!--Estilo modificado de navbar-->
<style type="text/css">
	.navbar-brand{
		padding: 6px;
		
	}
	.navbar-default{
		background-color: white;
	}
	.nav.nav-pills{
		margin-top: 6px;
	}
	.nav-pills li{
		margin-right: 2px;
	}
	.nav-pills li a{
		padding: 8px 15px;
	}
</style>