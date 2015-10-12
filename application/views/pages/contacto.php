<div class="container">
	<div class="contenido">
		<h2 class="page-header">Contacto</h2>
		<br>
		<div class="row">
			<div class="col-md-12">
				<h3>Formulario de contacto:</h3>
				<h3><small>Si tienes alguna duda o consulta la puedes hacer por este medio.</small></h3>
				<br>
				<form class="form-horizontal" action="#" method="post">
				  	<div class="form-group">
					    <label class="col-sm-2 control-label">Nombre completo</label>
					    <div class="col-sm-6">
					      <input type="text" <?php
					      	if(sesionIniciada()){
					      		echo 'value="'. getNombreCompleto() .'" disabled';
					      	}
					      ?> class="form-control" name="nombre" id="nombre" placeholder="nombre completo">
					    </div>
				  	</div>
					<div class="form-group">
					    <label class="col-sm-2 control-label">Correo</label>
					    <div class="col-sm-6">
					      <input type="text" <?php
					      	if(sesionIniciada()){
					      		echo 'value="'. getCorreo() .'" disabled';
					      	}
					      ?> class="form-control" name="correo" id="correo" placeholder="correo">
					    </div>
				  	</div>
					<div class="form-group">
					    <label class="col-sm-2 control-label">Asunto</label>
					    <div class="col-sm-6">
					      <input type="text" class="form-control" name="asunto" id="asunto" placeholder="asunto">
					    </div>
				  	</div>
				  	<div class="form-group">
					    <label class="col-sm-2 control-label">Mensaje</label>
					    <div class="col-sm-6">
					      <textarea class="form-control" name="mensaje" rows="6" id="mensaje" ></textarea>
					    </div>
				  	</div>
			  		<div class="form-group">
			  			<div class="col-sm-8">
			  				<button class="pull-right btn btn-primary btn-sm">Enviar mensaje</button>
			  			</div>
			  			
			  		</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>Dirección:</h3>
				<h3><small class=''>Entrada a La Tunoza, Antigua Hacienda el Higo, Estelí, Nicaragua</small></h3>
				<br>
				<h3>Telefonos:</h3>
				<h3><small>Dirección: 2719-7843 <br>
						Subdirección: 2719-7843 <br>
						Administración: 2719-7841 <br>
						Adquisiciones: 2719-7865 <br>
						Registro académico: 2719-7818 <br>
					</small></h3>
				
			</div>
		</div>
	</div>
</div>