<div class="container" id="panelConteiner">
	<div class="contenido">
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<h2 class="page-header text-primary">Información para egresados</h3>
				<div class="text-justify">
					<h4><small><strong>
						El Recinto Universitario Augusto C. Sandino, sede regional del norte, Estelí – Nicaragua, está implementando un sistema para el control y seguimiento de sus estudiantes egresados y graduados con el objetivo de obtener información actualizada de estos. El sistema está diseñado para mantener informados a los egresados y graduados interesados en cursos libre y de posgrado que ofrece la universidad, así como las posibles oportunidades de empleo publicadas directamente por las empresas.
					</strong></small></h4>
				</div>
	
				<h3 class="page-header text-primary">Registro</h3>
				<div class="">
					<h4><small><strong>
						Para autenticar la cuenta de los egresados o graduados, sigue las instrucciones dadas en el siguiente <a href="<?php echo base_url('index.php/Egresado/Autenticar') ?>"> enlace </a>
					</strong></small></h4>
				</div>
				
				<h3 class="page-header text-primary">Características</h3>
				<dl class="list-group">
					<dt class="list-group-item">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						Formar parte de la bolsa laboral con los CV de profesionales egresados y graduados del Recinto Universitario Augusto C. Sandino.
					</dt>
					<dd class="text-justify">
						<h4><small><strong>
							Al hacer click en el formulario de currículo desde el perfil de usuario los egresados o graduados podrán crear su hoja de vida, sin la tediosa necesidad de subir archivos, simplemente deberán completar la información requerida por el formulario y guardarla.
							Una de las ventajas de esto es que podrán actualizar la información de sus currículos en cualquier momento sin necesidad de subir un archivo cada vez que deseen agregar campos en su currículo, volviendo este proceso más rápido y menos tedioso.
							Si aún no has completado el formulario de currículo, haz click <a href="<?= base_url('Curriculum/Crear') ?>">aquí.</a>
						</strong></small></h4>
					</dd>
					<dt class="list-group-item">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						Promover la inserción laboral por medio de ofertas laborales online.
					</dt>
					<dd class="text-justify">
						<h4><small><strong>
							La bolsa de trabajo muestra las ofertas de empleo publicadas por las empresas, estas publicaciones estarán clasificadas según las carreras impartidas en el Recinto Universitario Augusto C. Sandino, esto con el fin de crear un filtro en las publicaciones y mostrar únicamente lo relevante a cada usuario.
							Los egresados y graduados tendrán la posibilidad de navegar en la bolsa de trabajo, y podrán enviar su currículo si creen que cumple con los requisitos del cargo ofertado.
							Si eres un egresado o graduado del Recinto Universitario Augusto C. Sandino te invitamos a que pruebes la <a href="<?= base_url('Publicaciones/BolsaDeTrabajo') ?>">bolsa de trabajo.</a>
						</strong></small></h4>
					</dd>
					<dt class="list-group-item">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						Facilitar información relevante de los cursos libres y de posgrados, asi como las becas ofertadas por la universidad.
					</dt>
					<dd class="text-justify">
						<h4><small><strong>
							El apartado de Becas y cursos, muestra una breve descripción de los diferentes cursos libres o de posgrados impartidos en el Recinto Universitario Augusto C. Sandino así como las diferentes becas ofertadas.
							<br>Para ver los cursos ofertados has click <a href="<?=BASE_URL('Publicaciones/Cursos')?>">aquí</a>.
							<br>Para ver as becas disponibles has click <a href="<?=BASE_URL('Publicaciones/Becas')?>">aquí</a>.
						</strong></small></h4>
					</dd>
				</dl>
				
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$(".active").removeClass("active");
		$("#menu_informacion").addClass("active");
		
		$("dd").hide();
		$("dt").click(function(event){
			
			var desplegable = $(this).next();
			$('dd').not(desplegable).slideUp('fast');
			desplegable.slideToggle('fast');
			
			var icono = $(this).find('span');
			$('dt span').removeClass("glyphicon glyphicon-chevron-down");
			$('dt span').addClass("glyphicon glyphicon-chevron-right");
			icono.addClass("glyphicon glyphicon-chevron-down");
			
			event.preventDefault();
		});
	});
</script>
<style type="text/css">
	#panelConteiner{
		padding-left:5px;
		padding-right:15px;
	}
	dt:hover{
		background : #E6E6E6;
	}
	dd{
		padding-left:30px;
		padding-right:30px;
	}
	.glyphicon{
		padding-right:20px;
	}
</style>