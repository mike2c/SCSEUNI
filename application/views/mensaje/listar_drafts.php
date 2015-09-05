<?php
  if(!isset($mensajes) || $mensajes == null){
    exit("<h4>No se pudo cargar la información</h4>");
  }

  if($mensajes->num_rows() == 0){
    exit("<center><h3 class='page-header'>No hay mensajes</h3></center>");
  }
?>
<table class="table table-hover">
  <caption>Borrador</caption>
  <thead>
    <tr><td>#</td><td>Asunto</td><td>Fecha de creación</td><td>Estado</td></tr>
  </thead>
  <tbody>
    <?php
  
      $cont = 1;
      foreach ($mensajes->result() as $row) {
        echo "<tr class='' data-mensaje='$row->mensaje_id'>
            <td>
            <label for=''>$cont <input id='$cont' type='checkbox' value='$row->mensaje_id'  name='mensajes_a_eliminar'> </label></td>
       
            <td><a href='javascript:cargarBorrador($row->mensaje_id)'>$row->asunto</a></td>
            <td>$row->fecha_creacion</td>
            <td>Sin enviar</td>
          </tr>";
   
        $cont += 1;   
      }
    ?>
  </tbody>
  <tfoot>
    
  </tfoot>
</table>
<style type="text/css">

</style>
<script type="text/javascript">

</script>