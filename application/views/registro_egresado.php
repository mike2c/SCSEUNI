<h3 class="page-header">Registrar nuevo egresado</h3>
<div class="container">
	<div class="col-md-6 col-lg-6">

	<form action="<?=base_url().'index.php/Egresado/Registro'?>" id="formRegistroEgresado" method="POST" class="form-horizontal">
	<div class="form-group">
		<div class="col-sm-9 col-sm-push-3">
			  <p class="help-block">Los campos marcados con un <i class="glyphicon glyphicon-asterisk"></i> son obligatorios.</p>
		</div>
	</div>
	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label pull-left">Correo:</label>
	    <div class="col-sm-9">
	      <input type="email" name="correo" class="form-control"  placeholder="ejemplo@gmail.com" autocomplete="off">
	    </div>
  	</div>
  <div class="form-group">
    <label class="col-sm-3 control-label">Cárnet:</label>
    <div class="col-sm-9">
    	<div class="input-group">
    		<input type="text" required pattern="^([0-9]{4})+[-]([0-9]{5})" class="form-control" name="carnet" autocomplete="off" id="inputPassword3" placeholder="0000-00000" autocomplete="off">
	 		<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
    	</div>
      </div>
  </div>
	<!-- SELECT para las carreras -->
	 <div class="form-group">
    <label class="col-sm-3 control-label">Carrera*</label>
	    <div class="col-sm-9">
	     <div class="input-group">
        	<select required name="carrera" id="carrera" class="form-control">
	     		<?php
	     			foreach($carreras->result() as $row){
	     				echo "<option name='carrera' value='$row->carrera_id'>$row->nombre_carrera</option>";
	     			}
	     		?>
	     	</select>
			<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
	     </div>
	  
	    </div>
  	</div>
	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Cedula:</label>
	    <div class="col-sm-9">
	     	<input type="text" class="form-control" name="cedula" id="inputEmail3" placeholder="000-000000-0000L">
	    </div>
  	</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Nombre:</label>
	    <div class="col-sm-9">
	     <div class="input-group">
     		<input type="text" class="form-control" id="nombre" name="nombre" id="inputEmail3" placeholder="Nombre">
			<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
	     </div>
	    
	    </div>
  	</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Apellido:</label>
	    <div class="col-sm-9">
    	 <div class="input-group">
 			<input type="text" class="form-control" id="inputEmail3" name="apellido" placeholder="Apellido">
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
	    	<input type="date" class="form-control" name="fecha_nacimiento">
	    </div>
  	</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Telefono</label>
	    <div class="col-sm-9">
	    	<input type="text" class="form-control" id="inputEmail3" name="telefono" placeholder="0000-0000">
	    </div>
  	</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Celular</label>
	    <div class="col-sm-9">
	    	<input type="text" class="form-control" id="inputEmail3" name="celular" placeholder="0000-0000">
	    </div>
  	</div>
  	<div class="form-group">
	  	<label for="" class="control-label col-sm-3">Departamento</label>
	  		<div class="col-sm-9">
	  		 <div class="input-group">
	  		 	<div id="departamento_seleccion">
	  		 		<select name="departamento" required id="departamento" class="form-control"></select>
	  		 	</div>
		     
				<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
		     </div>
	  	</div>
 	</div>
 	<div class="form-group">
		<label for="" class="control-label col-sm-3">Municipio</label>
  		<div class="col-sm-9" id="areaDepartamento">
	  		<div class="input-group">
	  			<div id="municipio_seleccion">
	  				<select required name="municipio" id="municipio" class="form-control"></select>
	  			</div>
	     		<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
	     	</div>
  			
  		</div>
 	</div>
 	<div class="form-group">
 		<label for="" class="control-label col-sm-3">Dirección domiciliar</label>
 		<div class="col-sm-9">
 			<textarea name="direccion" class="form-control" id="direccion"  rows="3"></textarea>
 		</div>
 	</div>
 	<div class="form-group">
 		<div class="col-sm-9 col-sm-push-3">
 			<input type="submit" class="btn btn-primary" value="Registrar">	
 			<input type="reset" class="btn btn-primary" value="Limpiar">	
 		</div>
 		
 	</div>
</form>
</div>
</div>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$("#formRegistroEgresado").submit(function(e){
			e.preventDefault();
			$.post("<?=base_url().'Egresado/Registro'?>",
			$(this).serialize(),
			function(){
				alert("Egresado registrado");
			});
		});
		
	});
	
</script>