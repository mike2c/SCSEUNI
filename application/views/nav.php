<div class="row">
	<nav class="nav">
	<div class="container">
		<div class="col-md-6 col-lg-6">
	    <?
	    
	    	if(sesionIniciada()){
	    		?>
					<div class="dropdown">
						<button class="btn btn-default btn-sm navbar-btn dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						<?
							echo getNombre();
						?>
						<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
						    <li><a href="<?=base_url('Perfil')?>">Mi Perfil</a></li>
						    <li><a href="<?=base_url('Correo')?>">Mensajes</a></li>
						    <?
						    	if(isset($_SESSION["administrador"])){
						    		?>
									<li><a href="<?=base_url('CPanel')?>">Administrar</a></li>
						    		<?
						    	}
						    ?>
						    <li><a href="<?=base_url('Sesion/CerrarSesion')?>">Salir</a></li>
						</ul>
					</div>
	    		<?
	    	}
		?>
	
	</div>
	<div class="col-md-6 col-lg-6">
		<ul class="menu">
			<?php
				if(!sesionIniciada()){
					?>
					</li><li class="separador"></li>
					<li><a  href="<?=base_url('index.php/Sesion')?>"><span class="glyphicon glyphicon-user"></span> Iniciar Sesion</a>	
						
					</li>
					<?
				}
			?><li class="separador"></li>
			<li><a href="<?=base_url('Contacto')?>"><span class="glyphicon glyphicon-earphone"></span> Contacto</a></li><li class="separador"></li>
			<li><a href="#"><span class="glyphicon glyphicon-triangle-bottom"></span> Informacion</a>
				<ul class="submenu">
					<li><a href="">Mision y Vision</a></li>
					<li><a href="">Egresados</a></li>
					<li><a href="">Empresa</a></li>
											
				</ul>
			</li><li class="separador"></li>
			<li class="activo"><a  href="<?=base_url();?>"><span class="glyphicon glyphicon-home"></span> Inicio</a></li><li class="separador"></li>
		
		</ul>
		
	</div>
	</div>
	
	</nav>
</div>
<header class="header">
<div class="container">
		<div class="row">
		<div class="col-md-2 col-lg-2">
			<img style="height:50%;width:70%;margin-top:15px;" class="img" src="<?=base_url('public/res/logo_transparent.png');?>" alt="">
		</div>
		<div class="col-md-8 col-lg-8 auto-size">
			<center>
				<h1 style="">Universidad Nacional de Ingeniería</h1>
				<h4>Recinto Universitario Augusto Cesar Sandino</h4>
				<h5>Sistema para el control y seguimiento de egresados</h5>
				
				<h5>Estelí, Nicaragua</h5>
			</center>
		</div>
			<div class="col-md-2 col-lg-2" style="margin-top:5px;">
			<img class="img img-redonda" style="margin-left:auto;" src="<?=base_url('public/res/ruacs');?>" alt="">
		</div>
	</div>
</div>

</header>
