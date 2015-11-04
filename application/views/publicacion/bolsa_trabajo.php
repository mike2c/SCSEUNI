<div class="container">
	<div class="contenido">
		<h2 class="page-header text-primary">
			Bolsa de empleo
		</h2>
		<div class="row">
			<div class="col-md-9 col-lg-9">
				<?php
			
					if(isset($fichas) && !empty($fichas) && $fichas->num_rows() > 0){
						foreach ($fichas->result() as $row) {
							?>
								<div class="publicacion">
									<h3 class='text-primary box-title'><img class='logo-uni pull-left' src="<?=base_url("public/res/logo_uni_610x377.png")?>" ><?=$row->cargo?></h3>
									<p class=''><?=$row->descripcion?></p>
								
									<div class="hidden-content">
										<label class="text-info">Ubicación del cargo</label>
										<p><?=$row->ubicacion?></p>
										<label class="text-info">Cantidad de puestos</label>
										<p><?=$row->cantidad?></p>
										<label class="text-info">Jefe inmediato</label>
										<p><?=$row->jefe?></p>
										<label class="text-info">Personal a cargo</label>
										<p><?=$row->a_cargo?></p>
										<label class="text-info">Finalidad</label>
										<p><?=$row->finalidad?></p>
										<label class="text-info">Funciones</label>
										<p><?=$row->funciones?></p>
										<label class="text-info">Requisitos</label>
										<p><?=$row->requisitos?></p>
										<label class="text-info">Experiencia</label>
										<p><?=$row->experiencia?></p>
										<label class="text-info">Competencia</label>
										<p><?=$row->competencia?></p>

										<!--Imagen para la ficha-->
										<?php
											if(!empty($row->imagen)){
												?>
												<div class="imagen-publicitaria">
													<img class="img-responsive" src="<?=base_url("Imagen/Cargar/".$row->imagen_publicacion_id)?>" alt="">
												</div>
												<?
											}

											if(empty($row->ficha_solicitante_id)){
												?>
													<form id="formAplicar" method="post" action="<?=base_url('Publicaciones/aplicarFicha')?>">
														<input type="hidden" name="ficha_id" value="<?=$row->ficha_id?>">
														<button type="submit" class='btn btn-info'><span class='glyphicon glyphicon-share-alt'></span> Aplicar </button>
													</form>
												<?
											}else{
												?>
													<button type="button" disabled class='btn btn-info'><span class='glyphicon glyphicon-share-alt'></span> Solicitud enviada </button>
												<?
											}
										?>

									</div><!--End hidden-content-->
									<div class="publicacion-footer">
										<p class="help-block pull-left">Esta publicación expirará el dia: <?=date_toDMY($row->fecha_alta)?></p> 
										<a href="#<?=$row->publicacion_id?>" name="<?=$row->publicacion_id?>" class='pull-right expandir'>Expandir <span class='caret'></span></a>
									</div>
								</div>";
							<?
						}
					}else{
						echo "<p class='panel panel-danger panel-body text-danger'>No se han encontrado publicaciones</p>";
					}
				?>
			</div>
			<div class="col-md-3 col-lg-3" >
				<form method="post" id="formBuscar" action="<?=base_url("Publicaciones/Becas")?>">
					<h4 class="text-primary">Busqueda for carrera</h4>
					<ul class="filtro text-primary">
						<?php
							if(isset($carreras) && !empty($carreras)){
								foreach ($carreras->result() as $row) {
								
									echo "<li><div class='checkbox'>";
									if (isset($carreras_marcadas) && !empty($carreras_marcadas)) {
										if(buscar_carrera($row->carrera_id,$carreras_marcadas)){
											
											echo "<label for='carr_" . $row->carrera_id . "'> <input type='checkbox' id='carr_" . $row->carrera_id . "' name='carrera[]' value='$row->carrera_id' checked> $row->nombre_carrera</label>";
										}else{
											echo "<label for='carr_" . $row->carrera_id . "'> <input type='checkbox' id='carr_" . $row->carrera_id . "' name='carrera[]' value='$row->carrera_id'> $row->nombre_carrera</label>";
										}
									}else{
										echo "<label for='carr_" . $row->carrera_id . "'> <input type='checkbox' id='carr_" . $row->carrera_id . "' name='carrera[]' value='$row->carrera_id'> $row->nombre_carrera</label>";
									}
									echo "</div></li>";
								}
							}

							function buscar_carrera($id_carrera,$carreras){

								foreach ($carreras as $key => $value){
									
									if($value == $id_carrera){
										return TRUE;
									}
								}

								return FALSE;
							}
						?>
					</ul>
					
				</form>
			</div>
		</div>
	</div>
</div>

<style type="text/css">
	.filtro{
		list-style: none;
		padding-left: 0px;
	}
	.filtro li{

		font-size: 16px;
		border-bottom: 1px solid lightgray;
		padding: 1px 12px;
	}
	.filtro li:hover{
		border-radius: 3px;
		background-color: #337ab7;
		color: white;
	}
	.checkbox{
		margin:3px 0;
	}
	.checkbox label{
		line-height: 16px;
	}
	.publicacion{
		overflow: auto;
		padding: 10px;
		
		margin-bottom: 30px;
		border: 1px solid lightgray;
	}
	.publicacion h3{
		text-align: center;
		margin-top: 5px;
		padding-left: 10px;
		line-height: 35px;
	}

	.logo-uni{
		max-height: 35px;
		margin-right: 10px;
	}
	.publicacion hr{
		margin: 0px;
		margin-top: 8px;
	}
	
	.publicacion-footer{
	
		padding-top: 10px;
		overflow: auto;
		
		padding-bottom: 0px;
	}
	.publicacion-footer p,a{
		
		margin: 0px;		
	}
	.hidden-content{
		padding-top: 10px;
		padding-bottom: 10px;
	}
	.hidden-content p{
		padding-bottom: 10px;
		border-bottom: 1px solid lightgray;
	}
	.imagen-publicitaria{

		
		background-color: lightgray;
	}
	.imagen-publicitaria img{
		display: block;
		margin: 10px auto;
		border-left: gray;
		border-right: gray;
	}
</style>
<script type="text/javascript">
	$(".publicacion .expandir").click(function(){
		$(this).parent().parent().find(".hidden-content").toggle("slow");
	});
	$("[name='carrera[]']").change(function(){
		$("#formBuscar").trigger("submit");
	});
	$("#formAplicar").submit(function(e){
		e.preventDefault();
		if(confirm("¿Estas seguro que deseas aplicar a esta oferta de empleo? \n Se enviará un correo a la empresa que publicó la ficha ocupacional con tu currículum vitae.")){
			this.submit();
		}
	});
</script>