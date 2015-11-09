<div class="container">
	<div class="contenido">
		<div class="row ">
			<div class="col-md-6 col-lg-6">
				<h2 class="">Formulario de contacto</h2>
				<p class="help-block ">Si tienes alguna duda o consulta la puedes hacer por este medio.</p>
				<form action="<?=base_url('Mensaje/mensajeContacto')?>" method="post">
				  	<div class="form-group">
					    <label class="control-label">Nombre completo</label>
					     <input type="text" <?php
					      	if(sesionIniciada()){
					      		echo 'value="'. getNombreCompleto() .'" disabled';
					      	}
					      ?> class="form-control" name="nombre" id="nombre" placeholder="nombre completo" required>
				  	</div>
					<div class="form-group">
					    <label class="control-label">Correo</label>
					     <input type="email" <?php
					      	if(sesionIniciada()){
					      		echo 'value="'. getCorreo() .'" disabled';
					      	}
					      ?> class="form-control" name="correo" id="correo" placeholder="correo" required>
				  	</div>
					<div class="form-group">
					    <label class="control-label">Asunto</label>
					    <input type="text" class="form-control" name="asunto" id="asunto" placeholder="asunto">
				  	</div>
				  	<div class="form-group">
					    <label class="control-label">Mensaje</label>
					    <textarea class="form-control" name="mensaje" rows="6" id="mensaje" ></textarea>
				  	</div>
			  		<div class="form-group">
			  			<button class="btn btn-primary btn-sm">Enviar mensaje</button>
			  		</div>
				</form>

			</div>
		</div>
	
		<div class="row">
			<div class="col-md-12">
				<h2>Dirección</h2>
				<p class="help-block">
					Entrada a La Tunoza, Antigua Hacienda el Higo, Estelí, Nicaragua
				</p>
			</div>
			<div class="col-md-12">
				<h2>Teléfonos</h2>
				<p>
					Dirección: 2719-7843 <br>
						Subdirección: 2719-7843 <br>
						Administración: 2719-7841 <br>
						Adquisiciones: 2719-7865 <br>
						Registro académico: 2719-7818 <br>
				</p>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(".active").removeClass("active");
	$("#menu_contacto").addClass("active");
</script>