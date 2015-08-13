<input type="hidden" id="base_url" value="<?=base_url()?>">
<div class="" style="background-color:white;">
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

		<div class="col-md-2 col-lg-2" style="background-color:#eaeaea;padding:0px 0px;"><!-- COLUMNA PARA EL MENU-->
			
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
	       	<li><a class="activo" href="javascript:agregarEgresado()"><span class="glyphicon glyphicon-asterisk"></span> Nuevo</a></li>
       		<li><a id="" href="javascript:listarEgresados()"><span class="glyphicon glyphicon-user"></span> Registro</a></li>
	       	<li><a id="" href="#"><span class="glyphicon glyphicon-list-alt"></span> Reportes</a></li>
	       
      	</ul>       
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         	Empresas <span class="badge pull-right">100</span>
        </a>
       
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        <ul>
	      	
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
	       	<li><a id="agregarEgresado" class="" href="javascript:nuevoPublicador();"><span class="glyphicon glyphicon-asterisk"></span> Nuevo</a></li>
       		<li><a id="registroEgresado" href="javascript:consultarPublicadores()"><span class="glyphicon glyphicon-user"></span> Registro</a></li>
	       	<li><a id="" href="#"><span class="glyphicon glyphicon-list-alt"></span> Reportes</a></li>
  		</ul>  
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
          Reportes <span class="badge pull-right">5</span>
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
      <div class="panel-body">
        <ul>
          <li><a id="agregarEgresado" class="" href="javascript:mostrarReportes();"><span class="glyphicon glyphicon-asterisk"></span> Egresados</a></li>
        </ul>  
      </div>
    </div>
  </div>
</div>		
		</div>

  
  <div class="col-md-10 col-lg-10" style="padding: 0px 0px;">
  <div class="contenido" id="contenido">
    
  </div>
  </div>
  </div>
<script type="text/javascript" src="<?=base_url('public/js/egresados.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/empresas.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/publicadores.js')?>"></script>
<style type="text/css">
	@import url('<?=base_url('public/css/panel.css')?>');
</style>

<script type="text/javascript">
	
    $(".panel-body ul li a").click(function(){

      $(".activo").removeClass("activo");
      $(this).addClass("activo");

    });

    function nuevoPublicador(){
      $("#contenido").load("<?=base_url('Publicador/Registro')?>");
    }

    function consultarPublicadores(){
      $("#contenido").load("<?=base_url('Publicador/Listar')?>");
    }

    function mostrarReportes(){
      $.ajax({
        url: "<?=base_url('Reporte/ReporteEgresadosTrabajando')?>",
        datatype: "html",
        success: function(data){
          $("#contenido").html(data);
        },
        error: function(jqXHR){
          console.log(jqXHR.responseText);
          alert("Ha ocurrido un error y no se ha podido ejecutar la solicitud.");
        },
        async: true
      });

    }
    
</script>