<div class="container" style="padding-left:1px;">
	<div class="jumbotron">
		<h3>Mensaje Enviado</h3>
		<h3><small>
			<?php echo $mensaje; ?>
		</small></h3>
		<br>
		<div class="form-group">
			<input type="button" class="btn btn-primary" value="Regresar" onclick="javascript:redireccionar()">
		</div>
	</div>
</div>
<style type="text/css">
	body{
		background-color: #eaeaea;
	}

	.jumbotron h2{
		font-size: 50px;
	}
	
	.panel-body{
		font-family: Helvetica;
		//font-weight: bold;
		color: gray;
	}
	.jumbotron{
		background-color: white;
		margin: 15px 0px;
	}


	.bg-danger{
		color: white;
		background-color: pink;
	}
</style>
<script type="text/javascript">
	function redireccionar(){
		window.location='../';
	}
</script>