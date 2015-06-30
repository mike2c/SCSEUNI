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
      <a class="navbar-brand" href="<?=base_url();?>">SCSE</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Mi cuenta <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Mi perfil</a></li>
            <li><a href="<?=base_url().'index.php/Correo'?>">Mensajes</a></li>
            <li class="divider"></li>
            <li><a href="<?=base_url().'index.php/Sesion/CerrarSesion'?>">Cerrar sesión</a></li>
           </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="<?=base_url()?>">Inicio</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Información <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="<?=base_url().'index.php/Informacion/Egresados'?>">Egresado</a></li>
            <li><a href="<?=base_url().'index.php/Informacion/Empresas'?>">Empresa</a></li>
            <li><a href="#">Listado de Egresados</a></li>
          </ul>
        </li>
        <li><a href="<?=base_url().'index.php/contacto'?>">Contacto</a></li>
        <li><a href="<?=base_url().'index.php/Sesion'?>">Iniciar Sesión</a></li>
        <li><a href="#">Registro</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<header>
    <div class="container">
    <div class="row">
      <div class="col-md-2 col-lg-2 col-xs-2">
      
      
      <div class="col-lg-12 col-md-11 col-xs-12">
       <img src="<?=base_url().'public/res/logo_transparent.png'?>" alt="" class="img-responsive">
         <h1>
       
      </h1>
        
      </div>
     
      </div>
      <div class="col-md-10 col-lg-10 col-xs-10">
        <h2><strong>Universidad Nacional de Ingeniería</strong></h2>
        <h4>Recinto Universitario Augusto Cesar Sandino</h4>
        <h4>Sede Regional del Norte, Estelí - Nicaragua.</h4>
      </div>
    </div>
     
    </div>
</header>

<!--<style type="text/css">
  img{
    border: 3px solid white;
    background-color: white;
   }
   nav{
      box-shadow: 0px 1px 1px black;
   }
   header{
    display: block;
    border-bottom: 1px solid lightgray;
    padding:5px;
   }
   h1,h2,h3,h4,h5{
    margin:5px 0px;
   }
</style> -->
