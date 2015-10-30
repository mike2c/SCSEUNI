<header>
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-lg-3">
				<a href="<?=base_url()?>"><img style="border: 1px solid white;height:40%;width:60%;margin-top:10px;" class="img" src="<?=base_url('public/res/logo_transparent.png');?>" alt=""></a>
			</div>
			<div class="col-md-6 col-lg-6 auto-size">
				<center>
					<h2 style=""><strong>Universidad Nacional de Ingeniería</strong></h2>
					
					<h4>Recinto Universitario Augusto Cesar Sandino</h4>
					<h5>Sistema para el control y seguimiento de egresados</h5>
					<h5>Estelí, Nicaragua</h5>
				</center>
			</div>
				<div class="col-md-3 col-lg-3">
				<img class="" style="margin-left:auto;margin-top:5px;display:block;width:45%;" src="<?=base_url('public/res/jicara_sandino.png');?>" alt="">
			</div>
		</div>
	</div>
</header>
<div class="container">
	<ul class="pgwSlider">
		<li><a href="<?=base_url('informacion_egresado')?>"><img src="<?=base_url('public/res/banner_egresado.jpg')?>" alt="" data-description=""></a></li>
		<li><a href="<?=base_url('login')?>"><img src="<?=base_url('public/res/banner_curriculum.jpg')?>" alt="" data-description=""></a></li>
				<li><a href="<?=base_url('informacion_egresado#cursosybecas')?>"><img src="<?=base_url('public/res/banner_ofertas.jpg')?>" alt="" data-description=""></a></li>
		<li><a href="<?=base_url('informacion_egresado')?>"><img src="<?=base_url('public/res/banner_empleo.jpg')?>" alt="" data-description=""></a></li>
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
    	displayControls: true

    });
});
</script>
<style type="text/css">
	
	header{
		padding-top:20px;
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
		border: 1px solid gray;
	}
</style>