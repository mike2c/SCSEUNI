
<div class="container">
	<!-- CABECERA DE LA PAGINA-->
	
	<div class="row">
		<div class="col-md-12 col-lg-12 col-xs-12">
			
		</div>
	</div>
	<!-- MENU Y LISTADO DE MENSAJES -->
	<div class="row">
		<div class="col-md-3 col-g-3 col-xs-3">
			<ul class="nav nav-pills nav-stacked">
				<li class="active"><a data-toggle="pill" href="#inbox">Bandeja de entrada<span class="badge pull-right">0</span></a></li>
				<li><legend></legend></li>
				<li><a data-toggle="pill" href="#sent">Mensajes enviados <span class="badge pull-right">0</span></a></li>
				<li><legend></legend></li>
				<li><a data-toggle="pill" href="#draft">Borrador <span class="badge pull-right">0</span></a></li>
			</ul>
				
		</div>
		
		<div class="vr col-md-9 col-lg-9 col-xs-9">
			<div class="tab-content">
			    <div role="tabpanel" class="tab-pane fade" id="inbox">
			    	<table class="table table-hover">
						<caption>Bandeja de entrada</caption>
						<thead>
							<tr>
							<th>Remitente</th>
							<th>Asunto</th>
							<th>Fecha de envio</th>
							<th>Visto</th>
						</tr>
						</thead>
						<tbody>
							<?php
							//Programar para ue liste los mensajes

							?>
						</tbody>
						<tfoot>
							
						</tfoot>
					</table>
			    </div>
				 <div role="tabpanel" class="tab-pane fade in active" id="sent">
			    	<table class="table table-hover">
						<caption>Bandeja de salida</caption>
						<thead>
							<tr>
							<th>Remitente</th>
							<th>Asunto</th>
							<th>Fecha de envio</th>
							<th>Visto</th>
						</tr>
						</thead>
						<tbody>
							<?php
							//Programar para ue liste los mensajes

							?>
						</tbody>
						<tfoot>
							
						</tfoot>
					</table>
			    </div>
			  
			     <div role="tabpanel" class="tab-pane fade" id="draft">
			    	<table class="table table-hover">
						<caption>Borrador</caption>
						<thead>
							<tr>
							<th>Remitente</th>
							<th>Asunto</th>
							<th>Fecha de envio</th>
							<th>Visto</th>
						</tr>
						</thead>
						<tbody>
							<?php
							//Programar para ue liste los mensajes

							?>
						</tbody>
						<tfoot>
							
						</tfoot>
					</table>
			    </div>
			</div>
			</div>
		</div>
</div>
<style type="text/css">
	th{
		font-family: Arial;
		font-weight: px;
	}
	.vr{
		border-left:1px solid lightgray;
		height: 400px;
	}
	.borde{
		border-left: 1px solid lightgray;
	}
	thead{
		background-color:#eaeaea;
	}
	legend{
		margin: 0 auto;
	}
</style>