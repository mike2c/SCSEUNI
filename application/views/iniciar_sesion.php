<hmtl>
<head>
	<title><?= $title ?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>

	<?php 
		echo form_open('login/iniciarSesion');
	?>

	<label>Correo electronico</label>
	<?php echo form_error('correo'); ?>
	<input type ="text" name="correo" value="<?php echo set_value('correo') ?>" size="50" />

	<br>
	<label>Contraseña</label>
	<?php echo form_error('pass'); ?>
	<input type ="password" name="pass" value="<?php echo set_value('pass') ?>" size="50" />

	<div><input type="submit" value="Iniciar Sesión" /></div>

</body>
</html>