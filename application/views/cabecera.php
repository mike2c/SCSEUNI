<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?php echo (isset($title)) ? $title : "Sistema de control y seguimiento de egresados";?></title>
	
		<script src="<?=base_url().'public/js/jquery.js'?>"></script><!-- jQuery -->
		<script src="<?=base_url().'public/js/jquery-ui.js'?>"></script>
		<link rel="stylesheet" href="<?=base_url('public/css/jquery-ui.css')?>">
		<link rel="stylesheet" href="<?=base_url('public/css/jquery-ui.structure.css')?>">

		<script type="text/javascript" src="<?=base_url().'public/js/bootstrap.min.js'?>"></script>
		<link href="<?=base_url().'public/css/bootstrap.css'?>" rel="stylesheet"><!-- Bootstrap CSS -->

		<link rel="stylesheet" href="<?=base_url('public/css/default.css')?>">
		<script type="text/javascript">
			function baseURL(ext){

				if(ext != undefined){
					return "<?=base_url()?>" + ext
				}

				return "<?=base_url()?>";
			}
			
		</script>
	</head>
<body>