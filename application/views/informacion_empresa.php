<style type="text/css">
	p {
		text-align: justify;
		padding-left: 10px;
		padding-right: 10px;
	}
	li{
		text-align: justify;
	}
	/*
	.nav-tabs{
		background-color: #EFF8FB;
	}
	.tab-content{
		background-color: #EFF8FB;
		padding-bottom: 10px;
	}
	*/

	img{
    	border: 1px solid #03447F;
    	width: 460px;
	}
</style>
<div class="container">
	<div class="row">
		<div class="col-md-12 col-lg-12 contenido">
			<h3 class="page-header">Información para empresas</h3>
			<p>
				El Recinto Universitario Augusto C. Sandino, sede regional del norte, Estelí – Nicaragua, ofrece el servicio de bolsa de trabajo a las empresas que buscan profesionales con una formación académica de primer nivel y de alta ética profesional, para integrarles a sus respectivas organizaciones.
			</p>

			<h3 class="page-header">Ventajas para las empresas</h3>
			<ul>
				<li>
					Podrán hacer uso de la bolsa de trabajo, la cual facilita el proceso de reclutamiento con el servicio de publicación de ofertas de empleos, a las que los egresados y graduados del Recinto pueden enviar su candidatura, por medio de un currículo normalizado.  
				</li>
				<li>
					Podrán gestionar de manera muy sencilla las candidaturas recibidas para cada oferta publicada.
				</li>
				<li>
					El servicio está en funcionamiento en internet las 24 horas de día, por lo que podrán publicar sus ofertas y gestionar las candidaturas en cualquier momento.
				</li>
				<li>
					Está absolutamente garantizada la confidencialidad entre ambas partes ya que es imposible acceder a las funciones del sitio sin una clave (de egresado/graduado o de empresa) de acceso.
				</li>
			</ul>

			<h3 class="page-header">¿Cómo acceder?</h3>
			<p>
				Para registrar una cuenta de empresa, completa la información del siguiente <a href="<?php echo base_url('index.php/Empresa/Registro') ?>"> formulario </a>
			</p>

			<h3 class="page-header">Funciones de las empresas</h3>
			<div>

				  <!-- Nav tabs -->
				  <ul class="nav nav-tabs" role="tablist">
				    <li role="presentation"class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Perfil</a></li>
				    <li role="presentation"><a href="#cv" aria-controls="cv" role="tab" data-toggle="tab">Gestion de Candidaturas</a></li>
				    <li role="presentation"><a href="#bolsa" aria-controls="bolsa" role="tab" data-toggle="tab">Gestion de Ofertas de Trabajo</a></li>
				  </ul>

				  <!-- Tab panes -->
				  <div class="tab-content">

				    <div role="tabpanel" class="tab-pane active" id="profile">
				    	<table>
				    	<tr><td><img class="img-rounded" src="<?=BASE_URL('public/res/Informacion Empresa/Perfil.jpg')?>"></td>
						<td> <p>	
						    	Una vez registrados y autenticados las empresas, tendrán un perfil el cual puede ser público o privado según las preferencias del usuario, en el podrán actualizar sus datos personales, sociales, intereses, también tendrán el acceso a su bandeja de mensajes, formulario de gestión de candidaturas y el formulario de gestión de ofertas de trabajo.
							</p> </td></tr>
						</table>
				    </div>

				    <div role="tabpanel" class="tab-pane" id="cv">
				    	<table>
				    	<tr><td><img class="img-rounded" src="<?=BASE_URL('public/res/Informacion Empresa/Curriculum.jpg')?>"></td>
						<td> <p>	
						    	Al hacer click en el formulario de gestión de candidaturas desde el perfil de usuario las empresas podrán examinar a los candidatos que han aplicado a la oferta de trabajo publicada por la empresa.
								<br/><br/>Una vez que la empresa ha seleccionado el mejor candidato tendrá la opción de enviarle un mensaje directo y comunicarse con el candidato seleccionado.
							</p> </td></tr>
						</table>
				    </div>

				    <div role="tabpanel" class="tab-pane" id="bolsa">
				    	  <table>
					    	<tr><td><img class="img-rounded" src="<?=BASE_URL('public/res/Informacion Empresa/Bolsa.png')?>"></td>
							<td> <p>	
						    	La gestión de ofertas de trabajos es una de las funciones de la bolsa de trabajo, está función es administrada principalmente por las empresas, desde aquí podrán crear, almacenar y modificar las ofertas de trabajos y publicarlas en la bolsa de trabajo.
								<br/><br/>Sin embargo las empresas tienen la opción de enviar las ofertas de trabajo al administrador y él puede hacer la publicación.
							</p> </td></tr>
						</table>
				    </div>
				  </div>

				</div>
				<div class="tab-content">
				  <div role="tabpanel" class="tab-pane fade in active" id="profile"></div>
				  <div role="tabpanel" class="tab-pane fade" id="cv"></div>
				  <div role="tabpanel" class="tab-pane fade" id="bolsa"></div>
				</div>
		</div>
	</div>
</div>