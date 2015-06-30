<script src="<?=base_url().'public/js/jquery.js'?>"></script>
<script type="text/javascript">
	$(document).ready(function(){

		$.post("<?=base_url().'Ajax/CargarDepartamentos'?>",
			function(data){
				$("body").html(data);
			});
	});
</script>