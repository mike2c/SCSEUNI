<?php
	$this->load->view('cabecera');
?>
<h3>Su archivo fue exitosamente Subido!</h3>
<ul>
	<?php foreach($upload_data as $item=>$value): ?>
		<li><? echo $item; ?>: <?php echo $value; ?></li>
		<?php endforeach; ?>
</ul>
<?php $this->load->view('footer'); ?>