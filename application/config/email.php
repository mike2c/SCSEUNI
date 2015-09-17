<?php 
	$config['protocol'] = 'smtp';
	$config['wordwrap'] = TRUE;
	$config['smtp_host'] = 'ssl://smtp.googlemail.com';
	$config['smtp_port'] = 465;
	#usar el correo que nos proporcione el host
	$config['smtp_user'] = 'correo@gmail.com';
	#usar la contraseña que nos proporcione el host
	$config['smtp_pass'] = 'clave';
	$config['smtp_timeout'] = '4';
	$config['mailtype'] = 'text';
	$config['charset'] = 'iso-8859-1';
?>