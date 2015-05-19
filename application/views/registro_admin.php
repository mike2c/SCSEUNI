<?php
	echo form_open('admin/registrar');

	$this->load->view('datos_personales');
	$this->load->view('datos_usuario');
?>

<div><input type="submit" value="Registrar" /></div>
</form>