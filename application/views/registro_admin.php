<!DOCTYPE html>
<html>
<head>
	<title><?= $title ?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<?php
		echo form_open('admin/registrar');

		$this->load->view('datos_personales');
		$this->load->view('datos_usuario');
	?>

	<div><input type="submit" value="Registrar" /></div>
</form>
</body>
</html>