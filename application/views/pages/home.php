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