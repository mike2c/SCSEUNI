<?php  $this->load->view('cabecera'); 
echo $error;
echo form_open_multipart('empresa/registro');
?>
<input type="file" name="userfile" size="20" />
<br/> <br/>
<input type="submit" value="Registrar" />
</form>
<?php $this->load->view('footer'); ?>
