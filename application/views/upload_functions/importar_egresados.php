<div class="container">
	<div class="contenido">
		<h3 class="form-title">
			Importar egresados al sistema
		</h3>
		<div class="col-md-3 col-lg-3">
			<img class="img-responsive" src="http://www.cavsi.com/preguntasrespuestas/images/excel/xlsx.png" alt="asdasd">
		</div>
		<div class="col-md-9 col-lg-9">
			<form action="<?=base_url("Importar/ImportarEgresados")?>" method="post" id="formImportarEgresados" enctype="multipart/form-data">
			<input type="file" name="excel_file" accept=".xls">
			<input type="submit" value="subir archivo">
			</form>
			</div>
		</div>
	</div>
<br>



