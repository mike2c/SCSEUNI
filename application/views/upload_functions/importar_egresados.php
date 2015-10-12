<h1 class="page-header">
	Importar egresados al sistema
</h1>

<div class="panel panel-default">
	<div class="panel-body">
		<div class="col-md-12">
			<form class="form-inline" action="<?=base_url("importar/importarEgresados")?>" method="post" id="formImportarEgresados" enctype="multipart/form-data">
							
			<input type="hidden" value="upload" name="action">
			<label for="">Selecciona un archivo de excel</label><br>
			<div class="form-group">
				<input type="file" name="excel" accept=".xlsx">
			</div>
			<div class="form-group">
				<input class="btn btn-primary btn-sm" type="submit" value="subir archivo">	
			</div>
			<div class="form-group">
				
			</div>
		</form>
		</div>
		<br> <br>
		<img src="<?=base_url('public/res/formato.png')?>" alt="">
	</div>
</div>