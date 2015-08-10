<input type="hidden" value="<?=base_url()?>" id="base_url">
<h3 class="page-header">Registrar publicador</h3>

<div class="col-md-8 col lg-8">
	<form method="POST" action="<?=base_url('Publicador/Registro')?>" id="formRegistroPublicador" class="form-horizontal">
		<div class="form-group">
			<div class="col-sm-9 col-sm-push-3">
				  <p class="help-block">Los campos marcados con un <i class="glyphicon glyphicon-asterisk"></i> son obligatorios.</p>
			</div>
		</div>
		<div class="form-group">
		    <label for="inputEmail3" class="col-sm-3 control-label">Nombre:</label>
		    <div class="col-sm-9">
		     	<div class="input-group">
	     			<input autocomplete="off" required type="text" class="form-control" id="nombre" name="nombre" id="inputEmail3" placeholder="Nombre">
					<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
		     </div>
		    </div>
  		</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Apellido:</label>
	    <div class="col-sm-9">
    	 <div class="input-group">
 			<input type="text" autocomplete="off" required class="form-control" id="inputEmail3" name="apellido" placeholder="Apellido">
			<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
	     </div>
       </div>
  	</div>
  	<div class="form-group">
	    <label class="control-label col-xs-3">Genero:</label>
        <div class="col-xs-2">
            <label class="radio-inline">
                <input required type="radio" name="genero" value="M"> Maculino
            </label>
        </div>
        <div class="col-xs-2">
            <label class="radio-inline">
                <input required type="radio" name="genero" value="F"> Femenino
            </label>
        </div>
  	</div>
  	 <div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Fecha de nacimiento</label>
	    <div class="col-sm-9">
	    	<input type="date" required class="form-control" name="fecha_nacimiento">
	    </div>
  	</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label pull-left">Correo:</label>
	    <div class="col-sm-9">
		    <div class="input-group">
		    	<input type="email" autocomplete="off" name="correo" class="form-control"  placeholder="ejemplo@gmail.com" autocomplete="off">
		    	<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
		    </div>
	    </div>
  	</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label pull-left">Contraseña:</label>
	    <div class="col-sm-9">
		    <div class="input-group">
		    	<input type="password" autocomplete="off" name="clave" class="form-control"  placeholder="digite una contraseña" autocomplete="off">
		    	<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
		    </div>
	    </div>
  	</div>
	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Seleccione el area:</label>
	    <div class="col-sm-9">
    	 <div class="input-group">
    		<!--CARGAMOS el div seleccion_area mediante una peticion ajax-->
    		<div id="area_seleccion"></div>
 			<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
	     </div>
       </div>
  	</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Seleccione el cargo:</label>
	    <div class="col-sm-9">
    	 <div class="input-group">
	    	<div id="cargo_seleccion"></div>
 			<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
	     </div>
       </div>
  	</div>
  	<div class="form-group">
	  	<div class="col-md-4 col-lg-4 col-md-push-3">
	  		<input type="submit" class="btn btn-primary" value="Registrar">
	  		<input type="reset" class="btn btn-default" value="Limpiar">
	  	</div>
  	</div>
	</form>
</div>

<div class="col-md-4 col-lg-4">
	<div id="error_panel"></div>
</div>
<br>
<script type="text/javascript" src="<?=base_url('public/js/publicadores.js')?>"></script>

<script type="text/javascript">
	$(document).ready(function(){

		$("#formRegistroPublicador").submit(function(e){
			e.preventDefault();
			registrarPublicador($("#error_panel"));
		});

		
	});
</script>