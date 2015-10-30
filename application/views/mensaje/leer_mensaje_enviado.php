<?php
  if(!isset($mensaje) || empty($mensaje)){
    ?>
      <div class="panel panel-danger panel-body text-danger">
      <p>El mensaje no se pudo cargar</p>
      </div>
    <?
  }
?>
<h4 class="box-title"><?=$mensaje->asunto?></h4>
<div class="cuerpo-mensaje">
  <p class="text-primary">Destinatario: <span class=""><?=$mensaje->destinatario?></span> <span class="pull-right help-block">Fecha de envio: <?=$mensaje->fecha_envio?></span></p>  
  <hr>
  <p class="mensaje">
    <?=$mensaje->asunto?>
  </p>
  <hr>
   <?php
      if($mensaje->curr_adjuntado == true){
        echo "<a class='btn btn-link ' target='_new' href='" . base_url('Curriculum/' . $mensaje->destinatario_id) . "'><span class='glyphicon glyphicon-paperclip'></span> Curriculum vitae</a>";
      }
    ?>
    <a href="<?=base_url('Correo/Sent')?>" class="btn btn-primary pull-right"> Cerrar </a>
</div>