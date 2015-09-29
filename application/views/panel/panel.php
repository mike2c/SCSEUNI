<!-- FontAwesome Styles-->
<link href="<?=base_url('public/css/font-awesome.css')?>" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="<?=base_url('public/js/morris/morris-0.4.3.min.css')?>" rel="stylesheet" />
<!-- Custom Styles-->
<link href="<?=base_url('public/css/custom-styles.css')?>" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?=base_url()?>">UNI</a><br>
            
        </div>
        <ul class="nav navbar-nav navbar-right" style="margin-right:20px;">
            <li><a href="<?=base_url('Correo')?>"><i class="fa fa-envelope"></i></a></li>
            <li><a href="<?=base_url('Perfil')?>"><i class="fa fa-user"></i></a></li>
        </ul>    
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                 <li><a href="#" class="active-menu"><i class="fa fa-graduation-cap"></i> Egresados<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="javascript:registrarEgresado()"><i class="fa fa-user-plus"></i> Registrar</a></li>
                        <li><a href="javascript:listarEgresado()"><i class="fa fa-list-alt"></i>Listado</a></li>
                        <li><a href="javascript:importarEgresado()"><i class="fa fa-upload"></i> Importar desde excel</a></li>
                    </ul>
                </li>
                 <li><a href="#"><i class="fa fa-sitemap"></i> Empresas<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="#"><i class="fa fa-list-alt"></i> Listado</a></li>
                    </ul>
                </li>
				 <li><a href="#" class="active"><i class="fa fa-sitemap"></i> Publicadores<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="#"><i class="fa fa-user-plus"></i> Registrar</a></li>
                        <li><a href="#"><i class="fa fa-list-alt"></i> Listado</a></li>
                    </ul>
                </li>
                 <li><a href="#" class="active"><i class="fa fa-sitemap"></i> Admins<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="#"><i class="fa fa-user-plus"></i>Registrar</a></li>
                        <li><a href="#"><i class="fa fa-list-alt"></i>Listado</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-area-chart"></i> Reportes<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                            <li>
                            <a href="#"><i class="fa fa-graduation-cap"></i> Egresados<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">Trabajando</a>
                                </li>
                                <li>
                                    <a href="#">Titulados</a>
                                </li>
                                <li>
                                    <a href="#">Por carrera</a>
                                </li>

                            </ul>

                        </li>
                    </ul>
                </li>
                <li>
                    <a href="empty.html"><i class="fa fa-fw fa-file"></i> Empty Page</a>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <!--CONTENIDO QUE SE CARGA CON AJAX-->
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js   <script src="assets/js/jquery-1.10.2.js"></script>-->

<!-- Bootstrap Js   <script src="assets/js/bootstrap.min.js"></script>-->

<!-- Metis Menu Js -->
<script src="<?=base_url('public/js/jquery.metisMenu.js')?>"></script>

<!-- Custom Js -->
<script src="<?=base_url('public/js/custom-scripts.js')?>"></script>
<!-- Morris Chart Js -->
<script src="<?=base_url('public/js/morris/raphael-2.1.0.min.js')?>"></script>
<script src="<?=base_url('public/js/morris/morris.js')?>"></script>
<script type="text/javascript">

    //Cambiamos de color al menu para saber cual es el activo
    $("#main-menu").children("li").children("a").click(function(){
        $("#main-menu li a").removeClass("active-menu");
        $(this).addClass("active-menu");
    });

    function registrarEgresado(){
        $("#page-inner").load("<?=base_url('CPanel/RegistrarEgresado')?>");
    }
</script>