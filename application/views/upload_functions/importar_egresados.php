<div class="container">
	<div class="contenido">
		<h3 class="form-title">
			Importar egresados al sistema
		</h3>
		<div class="col-md-2 col-lg-2">
			<img class="img-responsive" src="http://www.cavsi.com/preguntasrespuestas/images/excel/xlsx.png" alt="Excel Files">
		</div>
		<div class="col-md-9 col-lg-9">
			<form action="<?=base_url("importar/cargarArchivo")?>" method="post" id="formImportarEgresados" enctype="multipart/form-data">
				<input type="file" name="excel" accept=".xlsx">
				<input type="submit" value="subir archivo">
				<input type="hidden" value="upload" name="action">
			</form>
			</div>
		</div>
	</div>
<br>



