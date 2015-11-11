<div class="container">
	<div class="col-md-12 col-lg-12">
		<ul class="pgwSlider">
			<li><img src="<?= base_url('public/res/banner_uni.jpg') ?>" alt="SCSE" data-description="Sistema de control y seguimiento de Egresados."></li>
			<li><a href="<?=base_url('informacion_egresado')?>"><img src="<?=base_url('public/res/banner_egresado2.jpg')?>" alt="Egresados" data-description="Formen parte del programa de control y seguimiento de egresados de la universidad nacional de ingeniería, Recinto Universitario Augusto C. Sandino."></a></li>
			<li><a href="<?=base_url('login')?>"><img src="<?=base_url('public/res/banner_curriculum2.jpg')?>" alt="Curriculum" data-description="Crea y actualiza tu Curriculum vitae con tu información personal, experiencia laboral y estudios realizados."></a></li>
			<li><a href="<?=base_url('informacion_egresado#cursosybecas')?>"><img src="<?=base_url('public/res/banner_empresa2.jpg')?>" alt="Empresa" data-description="Agiliza el proceso de reclutamiento y selección de personal consultando en nuestra base de datos de egresados."></a></li>
		</ul>
	</div>
</div>
<div class="container">
	<div class="info">
		<div class="container-info">
			<div class="col-md-4">
				<article>
					<h4 class="text-primary"><strong>Objetivos</strong></h4>
					<p class="text-justify">
					Impulsar vínculos permanentes de apoyo y beneficio mutuo entre el Recinto Universitario Augusto C. Sandino, sede regional del norte con sus egresados y graduados, así como crear y mantener relaciones entre la universidad y los empleadores de la Región Norte del país facilitando la inserción laboral de los egresados y graduados del Recinto.					
					</p>
				</article>
			</div>
				
			<div class="col-md-4">	
				<article class="border-left">
					<h4 class="text-primary"><strong>Misión</strong></h4>	
				<p class="text-justify ">El programa de seguimiento a graduados del Recinto Universitario Augusto C. Sandino, sede regional del norte es la instancia institucional responsable de la vinculación dinámica y permanente entre los egresados, graduados, la universidad y empleadores, para facilitar la mejor y actualización del currículo de las carreras, el vínculo con el campo laboral y la formación permanente.</p>
				</article>
			</div>
		
			<div class="col-md-4">
				<article class="border-left">
					<h4 class="text-primary"><strong>Visión</strong></h4>
					<p class="text-justify ">
					Ser un programa competente para fortalecer la pertinencia de la formación profesional, a través de la interacción institucional del Recinto Universitario Augusto C. Sandino, sede regional del norte con los graduados y los empleadores que posibilitan su inserción laboral en cada una de las actividades dirigidas  a la trasformación de la sociedad y su entorno.					
					</p>
				</article>
			</div>	
		</div>
	</div>
</div>

<div class="contact-info">
	
	<div class="container">
		<div class="col-md-6 col-lg-6">
			<h4>Dirección:</h4>
				<p>Entrada a La Tunoza, Antigua Hacienda el Higo, Estelí, Nicaragua</p>
			<h4>Telefonos:</h4>
				<p>	Dirección: 2719-7843 <br>
					Subdirección: 2719-7843 <br>
					Administración: 2719-7841 <br>
					Adquisiciones: 2719-7865 <br>
					Registro académico: 2719-7818 <br>
				</p>
		</div>
		<div class="col-md-6 col-lg-6">
			<h4>Sitios de interés:</h4>
			<ul>
				<li><a href="http://www.uni.edu.ni/" target="_new"><span class="glyphicon glyphicon-triangle-right"></span> Universidad Nacional de Ingeniería</a></li>
				<li><a href="http://norte.uni.edu.ni/" target="_new"><span class="glyphicon glyphicon-triangle-right"></span> Universidad Nacional de Ingeniería, Recinto Universitario Augusto C. Sandino</a></li>
			</ul>
			<h4 class="">Síguenos en</h4>
			<ul>
				<li><a href="https://www.facebook.com/norte.uni.edu.ni?fref=ts" target="_new"><span class="glyphicon glyphicon-triangle-right"></span> Facebook - Uni Ruacs sede Estelí</a></li>
			</ul>
		</div>
	</div>
</div>

<script type="text/javascript" src="<?=base_url('public/js/pgwslider.min.js')?>"></script>
<link rel="stylesheet" type="text/css" href="<?=base_url('public/css/pgwslider.min.css')?>">
<script type="text/javascript">
	$(document).ready(function() {
	    $('.pgwSlider').pgwSlider({
	    	transitionEffect: "fading",
	    	intervalDuration: 6000,
	   		transitionDuration: 700,
	    	displayList: false,
	    	displayControls: true,

	    });
	});
</script>
<style>
	
	.pgwSlider{
		margin-top:25px;
	}

	.info{
		padding: 0px 15px;
		margin-top: 25px;
	}
	
	.container-info{

		padding: 10px 10px;
		overflow:auto;
		background-color: white;
		border: 1px solid lightgray;
	}

	.border-left{
		border-left: 1px solid lightgray;
		padding-left: 15px;
	}
	
	.contact-info{
		border-top: 1px solid lightgray;
		padding-top: 20px;
		margin-top: 25px;
		background-color: white;
	}
	.contact-info ul{
		list-style:none;
	}
</style>