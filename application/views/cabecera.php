<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>
	
		<script src="<?=base_url().'public/js/jquery.js'?>"></script><!-- jQuery -->
		<script type="text/javascript" src="<?=base_url().'public/js/bootstrap.min.js'?>"></script>
		<link href="<?=base_url().'public/css/bootstrap.css'?>" rel="stylesheet"><!-- Bootstrap CSS -->
			<style type="text/css">
			body{
				background-color: #eaeaea;	
			}
			
			header{
				background-color: #03447F;
				color: white;
				padding: 5px 0px;
			}

			header img{
				border: 2px solid white;
				background-color: white;
			}
			header h1,h2,h3,h4{
				margin: 4px auto;
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
			#contenido_pestanas ul  {   display: block; height: 18px; list-style: none;}
			#contenido_pestanas a {   float: left;  padding: 5px 20px; list-style: none; border: 1px solid #999;   }
			#contenido_pestanas a:hover  {   background-color: #999; color: #FFF;}
			#contenido_pestanas a.aqui  {   background-color: #333; color: #FFF; box-shadow: 3px 0px 2px #ccc;
			                                    -webkit-box-shadow: 3px 0px 2px #ccc; -moz-box-shadow: 3px 0px 2px #ccc;}
			#contenido_pestanas div  {   border: 1px solid #333; margin-left: 40px; width: 485px; background: #fff; padding: 20px; box-shadow: 3px 3px 2px #ccc;
                                    			-webkit-box-shadow: 3px 3px 2px #ccc; -moz-box-shadow: 3px 3px 2px #ccc;}
		</style>
	</head>
<body>