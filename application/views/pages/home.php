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

<div class="container" id="panels">
	<div class="container-panels">
		<dl class="group-list">
			<div class="panel-body col-md-4">
				<dt class="group-list-item text-primary">
					<h4><strong>Objetivos</strong></h4>
				</dt>
				<dd class="text-justify text-muted">
					Impulsar vínculos permanentes de apoyo y beneficio mutuo entre el Recinto Universitario Augusto C. Sandino, sede regional del norte con sus egresados y graduados, así como crear y mantener relaciones entre la universidad y los empleadores de la Región Norte del país facilitando la inserción laboral de los egresados y graduados del Recinto.
				</dd>
			</div>
		</dl>
	</div>
	
	<div class="container-panels ">	
		<dl class="group-list">
			<div class="panel-body col-md-4">
				<dt class="group-list-item text-primary">
					<h4><strong>Misión</strong></h4>
				</dt>
				<dd class="text-justify text-muted">
					El programa de seguimiento a graduados del Recinto Universitario Augusto C. Sandino, sede regional del norte es la instancia institucional responsable de la vinculación dinámica y permanente entre los egresados, graduados, la universidad y empleadores, para facilitar la mejor y actualización del currículo de las carreras, el vínculo con el campo laboral y la formación permanente.
				</dd>
			</div>
		</dl>
	</div>
	
	<div class="container-panels">
		<dl class="group-list">
			<div class="panel-body col-md-4">
				<dt class="group-list-item-active text-primary">
					<h4><strong>Visión</strong></h4>
				</dt>
				<dd class="text-justify text-muted">
					Ser un programa competente para fortalecer la pertinencia de la formación profesional, a través de la interacción institucional del Recinto Universitario Augusto C. Sandino, sede regional del norte con los graduados y los empleadores que posibilitan su inserción laboral en cada una de las actividades dirigidas  a la trasformación de la sociedad y su entorno.
				</dd>
			</div>
		</dl>
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
	#panels{
		padding-top: 5px;
		pull-right;
		background:white;
		width : 100%;
	}
	.container-panels{
		padding-left:6%;
		padding-right:6%;
	}
	.jumbotron{
		background-color: #03447F;
	}
	.pgwSlider{
		height : 150px
	}

	.col-md-2 col-lg-2{
		padding-top:20px;
	}
	.row{
		background-color: #03447F;
		//height : 150px;
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
	.pgwSlider li{
	 	//border: 1px solid black;
	}
	.ps-list li{
		//border: 1px solid lightgray;
	}
</style>