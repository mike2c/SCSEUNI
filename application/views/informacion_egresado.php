<style type="text/css">
	p {
		text-align: justify;
		padding-left: 10px;
		padding-right: 10px;
	}
	li{
		text-align: justify;
	}
	
	img{
    	border: 1px solid #03447F;
    	width: 460px;
	}

</style>
<div class="container">
	<div class="row">
		<div class="col-md-12 col-lg-12 contenido">

			<h3 class="page-header">Información para egresados</h3>
			<p>
				El Recinto Universitario Augusto C. Sandino, sede regional del norte, Estelí – Nicaragua, está implementando un sistema para el control y seguimiento de sus estudiantes egresados y graduados con el objetivo de obtener información actualizada de estos. El sistema está diseñado para mantener informados a los egresados y graduados interesados en cursos libre y de posgrado que ofrece la universidad, así como las posibles oportunidades de empleo publicadas directamente por las empresas.
			</p>

			<h3 class="page-header">Beneficio para los egresados y graduados</h3>
			<ul>
				<li>
					Formar parte de la bolsa laboral con los CV de profesionales egresados y graduados del Recinto Universitario Augusto C. Sandino.
				</li>
				<li>
					Promover la inserción laboral por medio de ofertas laborales online.
				</li>
				<li>
					Facilitar información relevante de los cursos libres y de posgrados ofertados por la universidad.
				</li>
				<li>
					Proporcionar información para los procesos de mejora y actualización curricular a través de la información proporcionada de los graduados y el mercado laboral
				</li>
			</ul>
			<h3 class="page-header">¿Cómo acceder?</h3>
			<p>
				Para autenticar la cuenta de los egresados o graduados, sigue las instrucciones dadas en el siguiente <a href="<?php echo base_url('index.php/Egresado/Autenticar') ?>"> enlace </a>
			</p>

			<h3 class="page-header">Funciones de los Egresados y Graduados</h3>
				<div>

				  <!-- Nav tabs -->
				  <ul class="nav nav-tabs" role="tablist">
				    <li role="presentation"class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Perfil</a></li>
				    <li role="presentation"><a href="#cv" aria-controls="cv" role="tab" data-toggle="tab">Hoja de Vida</a></li>
				    <li role="presentation"><a href="#bolsa" aria-controls="bolsa" role="tab" data-toggle="tab">Bolsa de Trabajo</a></li>
				    <li role="presentation"><a href="#byc" aria-controls="byc" role="tab" data-toggle="tab">Becas y Cursos</a></li>
				  </ul>

				  <!-- Tab panes -->
				  <div class="tab-content">

				    <div role="tabpanel" class="tab-pane active" id="profile">
				    	<table>
				    	<tr><td><img src="../../public/res/perfil-usuario.jpg"></td>
						<td> <p>	
						    	Una vez registrados y autenticados los egresados y graduados, tendrán un perfil el cual puede ser público o privado según las preferencias del usuario, en el podrán actualizar sus datos personales, sociales, intereses, también tendrán el acceso a su bandeja de mensajes, formulario de currículo y la bolsa de trabajo.
							</p> </td></tr>
						</table>
				    </div>

				    <div role="tabpanel" class="tab-pane" id="cv">
				    	<table>
				    	<tr><td><img src="../../public/res/curriculum.jpg"></td>
						<td> <p>	
						    	Al hacer click en el formulario de currículo desde el perfil de usuario los egresados o graduados podrán crear su hoja de vida, sin la tediosa necesidad de subir archivos, simplemente deberán completar la información requerida por el formulario y guardarla.
								<br/><br/>Una de las ventajas de esto es que podrán actualizar la información de sus currículos en cualquier momento sin necesidad de subir un archivo cada vez que deseen agregar campos en su currículo, volviendo este proceso más rápido y menos tedioso.
								<br/><br/>Si aún no has completado el formulario de currículo, haz click <a href="">aquí.</a>  
							</p> </td></tr>
						</table>
				    </div>

				    <div role="tabpanel" class="tab-pane" id="bolsa">
				    	  <table>
					    	<tr><td><img src="../../public/res/bolsa_trabajo.png"></td>
							<td> <p>	
						    	La bolsa de trabajo muestra las ofertas de empleo publicadas por las empresas, estas publicaciones estarán clasificadas según las carreras impartidas en el Recinto Universitario Augusto C. Sandino, esto con el fin de crear un filtro en las publicaciones y mostrar únicamente lo relevante a cada usuario.
								<br/><br/>Los egresados y graduados tendrán la posibilidad de navegar en la bolsa de trabajo, y podrán enviar su currículo si creen que cumple con los requisitos del cargo ofertado.
								<br/><br/>Si eres un egresado o graduado del Recinto Universitario Augusto C. Sandino te invitamos a que pruebes la <a href="">bolsa de trabajo.</a>  
							</p> </td></tr>
						</table>
				    </div>
				    <div role="tabpanel" class="tab-pane" id="byc">
				    	  <table>
					    	<tr><td><img src="../../public/res/cyb.gif"></td>
							<td> <p>	
						    	El apartado de Becas y cursos, muestra una breve descripción de los diferentes cursos libres o de posgrados impartidos en el Recinto Universitario Augusto C. Sandino así como las diferentes becas ofertadas.
								<br/><br/>Para ver los cursos ofertados has click <a href="">aquí</a>.
								<br/><br/>Para ver as becas disponibles has click <a href="">aquí</a>.
							</p> </td></tr>
						</table>
				    </div>
				  </div>

				</div>
				<div class="tab-content">
				  <div role="tabpanel" class="tab-pane fade in active" id="profile"></div>
				  <div role="tabpanel" class="tab-pane fade" id="cv"></div>
				  <div role="tabpanel" class="tab-pane fade" id="bolsa"></div>
				  <div role="tabpanel" class="tab-pane fade" id="byc"></div>
				</div>

		</div>
	</div>
</div>