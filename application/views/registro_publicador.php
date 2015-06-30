<h3 class="page-header">Registrar publicador</h3>
<div class="col-md-8 col lg-8">
	<form action="<?=base_url().'index.php/Publicador/Registro'?>" id="formRegistroPublicador" class="form-horizontal">
		<div class="form-group">
			<div class="col-sm-9 col-sm-push-3">
				  <p class="help-block">Los campos marcados con un <i class="glyphicon glyphicon-asterisk"></i> son obligatorios.</p>
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
	    <label for="inputEmail3" class="col-sm-3 control-label pull-left">Correo:</label>
	    <div class="col-sm-9">
		    <div class="input-group">
		    	<input type="email" name="correo" class="form-control"  placeholder="ejemplo@gmail.com" autocomplete="off">
		    	<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
		    </div>
	    </div>
  	</div>
	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Area:</label>
	    <div class="col-sm-9">
    	 <div class="input-group">
 			<select class="form-control" name="area" id="area">
 				<?
					if(isset($areas)){
						foreach($areas->result() as $row){
							echo "<option value='$row->area_id'>$row->area</option>";
						}
					}
 				?>
 			</select>
			<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
	     </div>
       </div>
  	</div>
  	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-3 control-label">Cargo:</label>
	    <div class="col-sm-9">
    	 <div class="input-group">
	    	<div id="idAreaCargo">
	    	 	<select class="form-control" name="cargo" id="cargo"></select>
	    	</div>
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

<script type="text/javascript">
	
	$("#area").change(function(){
		listarCargos($("#area").val());
	});

	function listarCargos(areaId){
		$("#idAreaCargo").load("url");
	}
</script>