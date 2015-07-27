<div class="container" style="">
	<?php
		if(isset($ficha)){
			$ficha = $ficha[0];
		}
	?>
	<div class="row">
		<div class="col-md-8 col-lg-8">
			<h3 class="page-header">Editar ficha ocupacional</h3>
		</div>
	
	</div>

	<form action="<?=base_url('Ficha/Actualizar')?>" name="formCrearFicha" id="formCrearFicha" method="post" enctype="multipart/form-data">
		<!--Informacion general-->
		<input type="hidden" value="<?=$ficha->ficha_id?>" name="ficha_id">
		<input type="hidden" value="<?=$ficha->publicacion_id?>" name="publicacion_id">
		<div class="row">
			<div class="col-md-8 col-lg-8">
				<div class="form-group">
					<label for="">Fecha de alta: </label><br>
					<input class="form-control" style="width:150px;" type="text" id="fecha" maxlength="10" value="<?=$ficha->fecha_alta?>" placeholder="dd/mm/aaaa" name="fecha_alta">
				
				</div>
				<div class="form-group">
					<label for="">Digite una breve descripción</label>
					<textarea name="descripcion" id="descripcion" cols="30" rows="4" class="form-control"><?=$ficha->descripcion?></textarea>
				</div>
				
				<div class="form-inline">
					<div class="form-group">
						<label for="">Imagen <small>opcional</small></label><br>
						<input type="file" name="imagen" id="imagen" >

					</div>
						<div class="form-group">
					
					<img src="<?=base_url('Imagen/DeFichaOcupacional/'. $ficha->ficha_id)?>" alt="no se puede visualizar la imagen" id="precarga">
				</div>
				</div>
			
				<div class="form-group">
					<div class="h-line"></div>
				</div>
				<div class="form-inline" style="">
					<div class="form-group" style="">
						<label for="" class="">Denominación del cargo</label><br>	
						<input style="width:360px;" type="text" class="form-control" name="cargo" value="<?=$ficha->cargo?>">
					</div>
					<div class="form-group">
						<label for="" class="">Ubicación de cargo</label><br>		
						<input style="width:360px;" type="text" class="form-control" value="<?=$ficha->ubicacion?>" name="ubicacion">
					</div>
				</div>
				<div class="form-inline">
					<div class="form-group">
						<label for="" class="">Cantidad de puestos</label><br>	
						<input maxlength="4" pattern="^([1-9])" style="width:360px;" value="<?=$ficha->cantidad?>" type="text" class="form-control" name="cantidad">
					</div>
						<div class="form-group">
						<label for="" class="">Jefe inmediato</label><br>		
						<input style="width:360px;"  type="text" class="form-control" value="<?=$ficha->jefe?>" name="jefe">
					</div>
				</div>
				<div class="form-group">
					<label for="" class="">Experiencia</label>		
					<input style=""  type="text" class="form-control" value="<?=$ficha->experiencia?>" name="experiencia">
				</div>
				<div class="form-group">
					<label for="" class="">Personal a cargo</label>		
					<textarea class="form-control" name="a_cargo" id="a_cargo" cols="30" rows="4"><?=formatearTexto($ficha->a_cargo)?></textarea>
				</div>
				
				<div class="form-group">
					<label for="" class="">Finalidad</label>		
					<textarea class="form-control" name="finalidad" id="" cols="30" value="" rows="5"><?=formatearTexto($ficha->finalidad)?></textarea>
				</div>
				<div class="form-group">
					<label for="" class="">Requisitos</label>		
					<textarea class="form-control" name="requisitos" id="requisitos" cols="30" rows="5"><?=formatearTexto($ficha->requisitos)?></textarea>
				</div>
				
				<div class="form-group">
					<label for="" class="">Competencia</label>		
					<textarea class="form-control" name="competencia" id="competencia" cols="30" rows="5 class="form-control""><?=formatearTexto($ficha->competencia)?></textarea>
				</div>
				<div class="form-group">
					<label for="" class="">Funciones y responsabilidades</label>		
					<textarea class="form-control" name="funciones" id="funciones" cols="30" rows="5"><?=formatearTexto($ficha->funciones)?></textarea>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-primary"  value="Guardar">
					<button type="button" class="btn btn-primary" onClick="listarFichas()">Cancelar</button>
				</div>
			</div>
		</div>
	</form><!--fin del formulario-->

</div>
<br>
<br>
<br>
<?php
	
	function formatearTexto($str){

		return str_replace("<br />", "", $str);
	}
?>
<style type="text/css">
	.bg-primary{
		display: block;
		color: white;
		padding: 5px 5px;
	}
	
	textarea.form-control{
		border-radius: 1px;
	}
	
	form img{
		width: 300px;
	}

	#precarga{
		display: block;
		
		margin-bottom:10px;
		border: 1px solid gray;

	}
	
	#fecha{
		border-radius: 0px;
	}
	.form-inline .form-group:first-child{
		margin-right: 23px;
	}

	.form-inline{
		margin-bottom: 20px;
	}

</style>
<!--Cargando archivos javascript-->
<script type="text/javascript" src="<?=base_url('public/js/precarga.js')?>"></script>
<script type="text/javascript">
	
	$("#fecha").datepicker();
</script>
