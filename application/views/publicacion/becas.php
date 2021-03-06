<div class="container">
	<div class="contenido">
		<h2 class="page-header text-primary">Programa de becas</h2>
		
		<div class="row">
			<div class="col-md-9 col-lg-9">
			<?php
				if(isset($becas) && !empty($becas) && $becas->num_rows() > 0){

					foreach ($becas->result() as $row) {
						?>
						<div class="publicacion">
							
							<h3 class="box-title text-primary"><img src="<?=base_url('public/res/logo_uni_610x377.png')?>" alt="" class="logo-uni pull-left">
							<?=ucfirst($row->programa_academico)?></h3>
							<p class=""><?=ucfirst($row->descripcion)?></p>
							
							<div class='hidden-content'>
								<?php
									if(!empty($row->imagen)){
										if(!empty($row->url)){
											?>
											<div class="imagen-publicitaria">
												<a href="<?=$row->url?>"><img class="img-responsive" src="<?=base_url("Imagen/Cargar/".$row->imagen_publicacion_id)?>" alt=""></a>
											</div>
											<?
										}else{
											?>
											<div class="imagen-publicitaria">
												<img class="img-responsive" src="<?=base_url("Imagen/Cargar/".$row->imagen_publicacion_id)?>" alt="">
											</div>
											<?	
										}									
									}
									if(!empty($row->url)){
										?>
										<a target="_new" class="btn btn-info" href="<?=$row->url?>">Mas información</a>
										<?
									}
								?>
							</div><!--End hidden-content-->
							<div class="publicacion-footer">
								<p class="help-block pull-left">Esta publicación expirará el dia: <?=date_toDMY($row->fecha_alta)?></p> 
								<a href="#<?=$row->publicacion_id?>" name="<?=$row->publicacion_id?>" class='pull-right expandir'>Expandir <span class='caret'></span></a>
							</div>
						</div>
					<?
					}
				}else{
					echo "<p class='panel panel-danger panel-body text-danger'>No hay publicaciones de becas</p>";
				}
			?>
		</div>
		<div class="col-md-3 col-lg-3" >
			<form method="post" id="formBuscar" action="<?=base_url("Publicaciones/Becas")?>">
				<h4 class="text-primary">Busqueda por carrera</h4>
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
	$(".active").removeClass("active");
	$("#menu_informacion").addClass("active");
	$(".publicacion .expandir").click(function(){
		$(this).parent().parent().find(".hidden-content").toggle("slow");
	});
	$("[name='carrera[]']").change(function(){
		$("#formBuscar").trigger("submit");
	});
</script>