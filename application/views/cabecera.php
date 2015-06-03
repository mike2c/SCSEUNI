<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>
		<!-- Bootstrap CSS -->
		<script src="//code.jquery.com/jquery.js"></script>
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
		<link href="<?=base_url().'public/css/bootstrap.css'?>" rel="stylesheet">
		<script type="text/javascript">
			function activarMenu(menu){
				menu.className="active";
			}
		</script>
		<style type="text/css">
			body{
				#padding-top:4%;
				background-color: #eaeaea;	
			}
			
			header{
				background-color: #03447F;
				color: white;
			}
			.navbar{
				margin-bottom: 0px;
			}

			.contenido{

				background-color: white;
				border-left:1px solid lightgray;
				border-right:1px solid lightgray;
				border-bottom:1px solid lightgray;
				display: block;
				#box-shadow: 1px 1px 1px black;
			}
			.separador{
				display: block;
				background-color: white;
				height: 20px;
			}
		</style>
	</head>
	<body>

	<!-- Barra de navegación -->
	