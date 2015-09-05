<?php
  if(!isset($mensaje)){
  
    echo "El mensaje no se pudo cargar";
  }
?>

<div class="mensaje">
  <div class="titulo">
   <h2><?=$mensaje->asunto?></h2>
  </div>
  <?php
    if(isset($mensaje->destinatario)){
      ?>
        <div class="cabecera"><span>De: Mi</small></span> 
          <span>Para: <small><?=$mensaje->destinatario?></small></span>
        </div>
      <?
    }else{
      ?>
        <div class="cabecera"><span>De: <small><?=$mensaje->remitente?></small></span> 
          <span>Para: <small>Mi</small></span>
        </div>
      <?
    }
  ?>
  <div class="cuerpo">
    <p>
        <?=$mensaje->mensaje?>
    </p>
  </div>
  <div class="pie-pagina">
    <?php
      if($mensaje->curr_adjuntado == true){
        if(isset($mensaje->remitente)){
          echo "<a target='_new' href='" . base_url('Curriculum/' . $mensaje->remitente_id) . "'><span class='glyphicon glyphicon-paperclip'></span> Curriculum vitae</a>";
        }else{
          echo "<a target='_new' href='" . base_url('Curriculum/' . $mensaje->destinatario_id) . "'><span class='glyphicon glyphicon-paperclip'></span> Curriculum vitae</a>";
        }
      }
    ?>
    <button onclick="actualizar()" class="btn btn-primary">Cerrar</button>
  </div>
    <p>Enviado el: <small><?=$mensaje->fecha_envio?></small></p>
</div>