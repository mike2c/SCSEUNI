<div class="container">
	<div class="row">
		<div class="col-md-12 col-lg-12 contenido">
			<?php
				echo form_open('admin/registrar');

				$this->load->view('datos_personales');
				$this->load->view('datos_usuario');
			?>
			<table>
				<tr><td><input type="submit" value="Registrar" /></td></tr>
			</table>
		</div>
	</div>
</div>
