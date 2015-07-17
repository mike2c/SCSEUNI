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

<nav class="h-line">
	<div class="container">
	<div class="col-md-9 col-lg-9" style="padding:0px 0px;">
		<ul class="menu">
			<li class="activo v-line"><a  href="<?=base_url();?>"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-triangle-bottom"></span> Informacion</a>
				<ul class="submenu">
					<li><a href="<?=base_url('index.php/informacion/misionVision')?>">Mision y Vision</a></li>
					<li><a href="<?=base_url('index.php/informacion/Egresados')?>">Egresados</a></li> 
					<li><a href="<?=base_url('index.php/informacion/Empresas')?>">Empresa</a></li>
				</ul>
			<li><a href="<?=base_url('index.php/Contacto')?>"><span class="glyphicon glyphicon-earphone"></span> Contacto</a></li>
			<?php
				if(!sesionIniciada()){
					?>
					<li><a  href="<?=base_url('index.php/Sesion')?>"><span class="glyphicon glyphicon-user"></span> Iniciar Sesion</a>	
						
					</li>
					<?
				}
			?>
		</ul>	
	</div>
	<div class="col-md-3 col-lg-3" style="padding:0px 0px;float:right;">
	    <?
	    if(sesionIniciada()){
    		?>
    		
			<div class="dropdown" style="float:right">
				<button id="btn_perfil" class="btn btn-default btn-sm btn-perfil navbar-btn dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					
					<?
						echo getNombre(). " ";
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
			<img style="display:block;float:right;height:32px;width:33px;padding-top:2px;" src="https://scontent-mia1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/11692720_1659030407660936_380363818090269010_n.jpg?oh=f274ef4ccd582582674b2efaf2f14c99&oe=5627322A" alt="">
    		<?
	    }
		?>
	</div>
</div>

</nav>
