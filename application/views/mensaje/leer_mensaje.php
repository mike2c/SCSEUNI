<?php
 # print_r($mensaje)
?>
  <div class="message-header">
    <span class="date" ><small>ENVIADO EL: <?=$mensaje->fecha_envio?></small> </span >
    <span for="">Remitente <<small><?=$mensaje->correo?>></small></span>
    <h1 class="subject"><?=$mensaje->asunto?></h1 >
  </div>
  
  <div class="message-body">
    <p class="body"><?php

      echo $mensaje->mensaje;
  ?></p>
  
  <div class="message-footer">
    <?php
      if($tipo == "inbox"){
        if($mensaje->curr_adjuntado == true){
          echo "<a href='". base_url('Curriculum/'. $mensaje->usuario_id). "'>Leer curriculum</a>";
        }
      }
    ?>
  </div>
  </div>
