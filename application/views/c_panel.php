<div class="alto-total" style="background-color:white;">
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><span class=""></span>Panel de Aministración</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

     <ul class="nav navbar-nav navbar-right">
        <li><a href="<?=base_url().'index.php/Correo'?>"><span class="glyphicon glyphicon-envelope"></span> Mensajes</a></li>
        <li><a href="<?=base_url().'index.php/Perfil'?>"><span class="glyphicon glyphicon-user"></span> Mi Perfil</a></li>
        <li><a href="<?=base_url()?>"><span class="glyphicon glyphicon-home"></span> Salir</a></li>
     </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<!--<div class="container contenido" style="display:block;height:100%;"> -->
	<div class="row alto-total">
		<div class="col-md-2 col-lg-2 alto-total" style="background-color:#eaeaea;padding:0px 0px;"><!-- COLUMNA PARA EL MENU-->
			
			<div class="panel-group alto-total" id="accordion" role="tablist" aria-multiselectable="true">
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="headingOne">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			         	Egresados  <span class="badge pull-right">100</span>
			        </a>
      		      </h4>
			    </div>
			    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
		<ul>
	       	<li><a id="agregarEgresado" class="" href="#"><span class="glyphicon glyphicon-asterisk"></span> Nuevo</a></li>
       		<li><a id="registroEgresado" href="#"><span class="glyphicon glyphicon-user"></span> Registro</a></li>
	       	<li><a id="" href="#"><span class="glyphicon glyphicon-list-alt"></span> Reportes</a></li>
	       
      	</ul>       
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         	Publicadores <span class="badge pull-right">100</span>
        </a>
       
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        <ul>
	      	<li><a id="agregarEgresado" class="" href="#"><span class="glyphicon glyphicon-asterisk"></span> Nuevo</a></li>
       		<li><a id="registroEgresado" href="#"><span class="glyphicon glyphicon-user"></span> Registro</a></li>
	       	<li><a id="" href="#"><span class="glyphicon glyphicon-list-alt"></span> Reportes</a></li>
      	</ul>  
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        	Publicadores <span class="badge pull-right">5</span>
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
		<ul>
	       	<li><a id="agregarEgresado" class="" href="javascript:registrarPublicador();"><span class="glyphicon glyphicon-asterisk"></span> Nuevo</a></li>
       		<li><a id="registroEgresado" href="#"><span class="glyphicon glyphicon-user"></span> Registro</a></li>
	       	<li><a id="" href="#"><span class="glyphicon glyphicon-list-alt"></span> Reportes</a></li>
  		</ul>  
      </div>
    </div>
  </div>
</div>		
		</div>
	
	<div class="col-md-10 col-lg-10 contenido alto-total" id="panel" style="overflow:auto;">
	
	</div>
	</div>
	
</div>
<script type="text/javascript">
	
	$(document).ready(function (){
		$("#agregarEgresado").click(function(){
			desactivar();
			$("#panel").load("<?=base_url().'index.php/Egresado/Registro'?>");
			activar($(this));
		});

		$("#registroEgresado").click(function(){
			desactivar();
			$("#panel").load("<?=base_url().'index.php/Egresado'?>");
			activar($(this));
		});

			 
		
	});

	function registrarPublicador(){
		$("#panel").load("<?=base_url().'index.php/Publicador'?>");
	}

	function desactivar(){
		$("ul li a").remove(".activo");
	}

	function activar(elemento){
		$(elemento).add(".activo");
	}
</script>
<style type="text/css">
	.alto-completo{
		height: 100%;
	}
	.navbar{
		border-radius: 0px;
	}
	html,body{
		//background-color: red;
		background-color:#eaeaea;
		height: 100%;
	}

	.panel-body ul{
		list-style:none;
		//border: 1px solid black;
		padding-left: 0px;
	}

	.panel-body ul li{

		//border-bottom: 1px solid gray;
		height: 35px;
		line-height: 35px;
		//border: 1px solid black;
		//background-color: lightgray;margin: 2px;
		padding: 0px 0px;
		margin:0px 0px;
		border-top:1px solid white;
	}

	.panel-body ul li a{
		padding-left:50px;
		font-size: 14px;
		font-family: "Verdana";
		display: block;
		height: inherit;
		width: inherit;
		//border: 1px solid red;
		color: gray;
		text-decoration: none;
		//text-shadow: -1px -1px 1px lightgray;
	}
	

	.panel-body ul li a:link{
		text-decoration: none;
	}
	.panel-body ul li:hover > a{
		background-color: white;
		color:#337ab7;
		font-weight: bold;
		border-bottom: 2px solid lightgray;
	}

	h4,h5{
		color: gray;
		font-weight: bold; 
	}
	.panel-body{

		background-color:#eaeaea;
		padding: 0px;
	}

	.panel-group{
		padding:;
	}
	.panel-title{
		border-radius:0px;
	}
	.panel-title a{
		display: block;
		height: 20px;
		line-height: inherit;
	}
	.activo{
		background-color: #337ab7;
		color:black;
		font-weight: bold;
		border-bottom: 2px solid lightgray;
	}

	td{
		white-space: nowrap;
	}
</style>