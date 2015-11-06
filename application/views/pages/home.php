<header>
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-lg-2">
				<img style="max-height:120px;" class="img-responsive pull-left" src="<?=base_url('public/res/logo-ruacs2.png');?>" alt="">
			</div>
			<div class="col-md-8 col-lg-8 auto-size"  style="font-family:'Cambria',serif;">
				<center>
					<h2 style=""><strong>Universidad Nacional de Ingeniería</strong></h2>
					<h4>Recinto Universitario Augusto Cesar Sandino</h4>
					<h5>Sistema para el control y seguimiento de egresados</h5>
					<h5>Estelí, Nicaragua</h5>
				</center>
			</div>
		</div>
	</div>
</header>
<div class="container" id="banner">
	<ul class="pgwSlider">
		<li><a href="<?=base_url('informacion_egresado')?>"><img src="<?=base_url('public/res/banner_egresado.jpg')?>" alt="" data-description=""></a></li>
		<li><a href="<?=base_url('login')?>"><img src="<?=base_url('public/res/banner_curriculum.jpg')?>" alt="" data-description=""></a></li>
		<!--<li><a href="<?=base_url('informacion_egresado#cursosybecas')?>"><img src="<?=base_url('public/res/banner_ofertas.jpg')?>" alt="" data-description=""></a></li>-->
		<!--<li><a href="<?=base_url('informacion_egresado')?>"><img src="<?=base_url('public/res/banner_empleo.jpg')?>" alt="" data-description=""></a></li>-->
		<li><a href="<?=base_url('informacion_egresado#cursosybecas')?>"><img src="<?=base_url('public/res/banner_empresa.jpg')?>" alt="" data-description=""></a></li>
	</ul>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-4 no-padding">
			<article>
				<h4 class="text-primary"><strong>Objetivos</strong></h4>
				<p class="text-justify">
					<small>Impulsar vínculos permanentes de apoyo y beneficio mutuo entre el Recinto Universitario Augusto C. Sandino, sede regional del norte con sus egresados y graduados, así como crear y mantener relaciones entre la universidad y los empleadores de la Región Norte del país facilitando la inserción laboral de los egresados y graduados del Recinto.</small>					
				</p>
			</article>
		</div>
		
		<div class="col-md-4">	
			<article>
				<h4 class="text-primary"><strong>Misión</strong></h4>	
				<small><p class="text-justify">El programa de seguimiento a graduados del Recinto Universitario Augusto C. Sandino, sede regional del norte es la instancia institucional responsable de la vinculación dinámica y permanente entre los egresados, graduados, la universidad y empleadores, para facilitar la mejor y actualización del currículo de las carreras, el vínculo con el campo laboral y la formación permanente.</p></small>
			</article>
		</div>
		
		<div class="col-md-4">
			<article>
				<h4 class="text-primary"><strong>Visión</strong></h4>
				<p class="text-justify">
					<small>Ser un programa competente para fortalecer la pertinencia de la formación profesional, a través de la interacción institucional del Recinto Universitario Augusto C. Sandino, sede regional del norte con los graduados y los empleadores que posibilitan su inserción laboral en cada una de las actividades dirigidas  a la trasformación de la sociedad y su entorno.</small>					
				</p>
			</article>
		</div>
	</div>	
</div>
<div style="background-color: lightgray;">
	<div class="container" style="margin-top:10px;padding-top:10px;">
	<div class="row" style="">
		<div class="col-md-4">
			<h4 class="box-title text-primary">Contacto</h4>
			<h5 class="text-info">Dirección</h5>
				<p class="help-block">
					Entrada a La Tunoza, Antigua Hacienda el Higo, Estelí, Nicaragua
				</p>
				<h5 class="text-info">Teléfonos</h5>
				<p class="help-block">
					Dirección: 2719-7843 <br>
						Subdirección: 2719-7843 <br>
						Administración: 2719-7841 <br>
						Adquisiciones: 2719-7865 <br>
						Registro académico: 2719-7818 <br>
				</p>
		</div>
		<div class="col-md-4">
			<h4 class="box-title text-primary">Sitios de interés</h4>
			<ul>
				<li><a href="http://www.uni.edu.ni/" target="_new">Universidad Nacional de Ingeniería</a></li>
				<li><a href="http://norte.uni.edu.ni/" target="_new">Universidad Nacional de Ingeniería, Recinto Universitario Augusto C. Sandino</a></li>
			</ul>
			<h5 class="text-info">Síguenos en</h5>
			<ul>
				<li><a href="https://www.facebook.com/norte.uni.edu.ni?fref=ts" target="_new">Facebook - Uni Ruacs sede Estelí</a></li>
			</ul>
		</div>
	</div>
</div>
</div>


<link rel="stylesheet" type="text/css" href="<?=base_url('public/css/pgwslider.min.css')?>">

<script type="text/javascript" src="<?=base_url('public/js/pgwslider.min.js')?>"></script>
<script type="text/javascript">
	$(document).ready(function() {
    $('.pgwSlider').pgwSlider({
    	transitionEffect: "sliding",
    	intervalDuration: 5000,
   		transitionDuration: 700,
    	displayList: true,
    	displayControls: true,

    });
});
</script>
<style type="text/css">

	.jumbotron{
		background-color: #03447F;
	}
	.pgwSlider{
		height : 150px
	}

	header{
		padding-top:10px;
		padding-bottom: 10px;
		color: white;
		background-color: #03447F;
		margin-bottom: 10px;
	}
	header h1,h2,h4,h3,h5{
		margin-top: 0px;
		margin-bottom: 5px;
	}
	
	article{

		border: 1px solid #aeaeae;
		border-left: 5px solid #337ab7;
		padding: 10px 20px;
		background-color: white;
		min-height: 220px;
	}	
	article h4{

		margin-top: 10px;
		margin-bottom: 10px;
	}
	#banner{
		margin-bottom: 10px;
	}																	
</style>