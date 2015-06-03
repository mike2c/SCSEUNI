<hmtl>
<head>
	<title>Sesion Iniciada</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<?php
		$usuario = $this->session->userdata('usuario_id');
		$persona = $this->session->userdata('persona_id');
		$tipo = $this->session->userdata('tipo_usuario');

		echo $usuario;
		echo "<br>";
		echo $tipo;
		echo "<br>";
		echo $persona;
		echo "<br>";
		echo anchor('admin/registrar','Registar Administrador',''); 
		echo "<br>";
		echo anchor('admin/update','Actualizar Administrador');
	?>
</body>
</html>