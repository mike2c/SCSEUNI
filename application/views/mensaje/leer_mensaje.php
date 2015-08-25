<?php
  
  if(!isset($mensaje)){
    echo "El mensaje no se pudo cargar";

  }

?>
  <div class="message-header">
      
    <span class="date" ><small>ENVIADO EL: <?=$mensaje->fecha_envio?></small> </span >
     <span for="">Remitente <small><?=$mensaje->remitente?>></small></span>
    <h1 class="subject"><?=$mensaje->asunto?></h1 >
  </div>
  
  <div class="message-body">
    <p class="body"><?php

      echo $mensaje->mensaje;
  ?></p>
  
  <div class="message-footer">
    <?php
        if($mensaje->curr_adjuntado == true){
          echo "<a target='_new' id='att_file' href='". base_url('Curriculum/'. $mensaje->remitente_id). "'> <span class='glyphicon glyphicon-paperclip'></span> Curriculum adjuntado</a>";
        }
    ?>
    <button class="btn btn-sm btn-primary" onclick="actualizar();">Cerrar</button>
  </div>
  </div>
  <style type="text/css">
    #att_file{
      margin: 5px 0px;
      padding: 5px 5px;
      font-size: 15px;
    }

  </style>
