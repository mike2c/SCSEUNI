<?php
  if($perfil == null){
    exit("<h3>No se ha podido cargar el perfil</h3>");
  }
?>
<input type="hidden" value="formActualizarPerfil" id="defaultForm">
<input type="hidden" value="<?=base_url()?>" id="base_url"><!--CARGANDO LA URL BASE-->
<div class="container no-padding">
  <div class="col-md-2 col-lg-2 no-padding">
    <div class="perfil">
      <a href="#" id="cambiar_imagen" class="thumbnail">
        <?php
      
          if(file_exists("uploads/". getImagenPerfil())){
            ?> <img src="<?=base_url('uploads/'. getImagenPerfil())?>" alt=""> <?
          }else{
            ?> <img src="<?=base_url('uploads/default/no_image.gif')?>" alt=""> <?
          }
        ?>
        <span class="glyphicon glyphicon-camera"></span>
      </a>
      <div class="perfil-nombre">
        <label>
          <?=$perfil->nombre?>
        </label>
      </div>
      <div class="perfil-correo">
        <strong>
          <small><?=getCorreo()?></small>
        </strong>
      </div>

      <ul id="perfil_menu" class="perfil-menu">
        <li><a href="<?=base_url('Perfil')?>">Perfil</a></li>
        <li><a href="<?=base_url('Correo')?>">Mensajes</a></li>
        <li><a href="javascript:cargarCursos()">Cursos</a></li>
        <li><a href="javascript:cargarBecas()">Becas</a></li>
        <li><a href="javascript:cargarFichas()">Fichas ocupacionales</a></li>
      </ul>
    </div>
  </div>
  <div class="col-md-10 col-lg-10" style="padding-right:0px;">
    
    <div id="area_perfil">
    
      <!--Div a donde se cargan los errores-->
      <div id="area_response" class="panel panel-danger text-danger panel-body response-area"></div>
      
      <!-- formulario-->
      <form action="<?=base_url('Publicador/ActualizarPerfil')?>" method="post" id="formActualizarPerfil">
          <input type="hidden" id="publicador_id" name="publicador_id" value="<?=$perfil->publicador_id?>">
          <input type="hidden" id="persona_id" name="persona_id" value="<?=$perfil->persona_id?>">
          <input type="hidden" id="usuario_id" name="usuario_id" value="<?=$perfil->usuario_id?>">
          
      </form>
      
      <!--menu de pestañas-->
      <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#info_personal" role="tab" data-toggle="tab">Datos personales</a></li>
          <li role="presentation"><a href="#info_cuenta" aria-controls="profile" role="tab" data-toggle="tab">Mi cuenta</a></li>
        <li><button form="formActualizarPerfil" id="update" class="btn btn-primary btn-sm">Actualizar perfil</button></li>
      </ul>

      <!--Paneles-->
      <div class="tab-content">

      <!--Informacion personal-->
      <div role="tabpanel" class="tab-pane active" id="info_personal">
        <div class="col-md-12 col-lg-12">
          <p class="text-primary">Información personal</p>
          <hr>
          <div class="form-horizontal">
            <div class="form-group">
              <label class="control-label col-sm-3">Nombre:</label>
              <div class="col-sm-6">
                <input form="formActualizarPerfil" name="nombre" class="form-control" type="text" value="<?=$perfil->nombre?>">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3">Apellido:</label>
              <div class="col-sm-6">
                <input form="formActualizarPerfil" name="apellido" class="form-control" type="text" value="<?=$perfil->apellido?>">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3">Genero:</label>
              <div class="col-sm-6">
                <select form="formActualizarPerfil" class="form-control" name="genero" id="genero">
                  <?php
                    if($perfil->sexo == "F"){
                      echo "<option value='M'>Masculino</option>";
                      echo "<option selected value='F'>Femenino</option>";
                    }else{
                      echo "<option selected value='M'>Masculino</option>";
                      echo "<option value='F'>Femenino</option>";
                    }
                  ?>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3">Fecha de nacimiento:</label>
              <div class="col-sm-6">
                <input form="formActualizarPerfil" value="<?=date_toDMY($perfil->fecha_nacimiento)?>" id="fecha_nacimiento" name="fecha_nacimiento" class="form-control fecha" type="text" value="<?=""?>">
              </div>
            </div>
          </div>
          <p class="text-primary">Area y Cargo</p><hr>
          <div class="form-horizontal">
            <div class="form-group">
              <label class="control-label col-sm-3">Area:</label>
              <div class="col-sm-6">
                <div class="input-group">
                  <div id="area_area"></div>

                  <div class="input-group-btn">
                     <button id="btnAgregarArea" onclick='registrarArea()' type='button' class='btn btn-warning btn-sm'>Agregar</button>
                    </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3">Cargo:</label>
              <div class="col-sm-6">
                <div class="input-group">
                  <div id="cargo_area"></div>
                  <div class="input-group-btn">
                     <button id="btnAgregarCargo" onclick='registrarCargo()' type='button' class='btn btn-warning btn-sm'>Agregar</button>
                  </div>
                </div>
               
              </div>
            </div>
          </div>
      
        </div>
      </div>

      <!--Informacion de la cuenta-->
      <div role="tabpanel" class="tab-pane" id="info_cuenta">
        <div class="col-md-12 col-lg-12">
          <p class="text-primary">Cambiar correo</p>
          <hr>
            <div class="form-horizontal">
              <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Correo:</label>
                  <div class="col-sm-6">
                    <input required value="<?=$perfil->correo?>" form="formActualizarPerfil" type="correo" class="form-control" name="correo" id="correo" placeholder="cambiar correo">
                  </div>
                </div>
            </div>
          <p class="text-primary">Cambiar contraseña</p>              
          <hr>
          <form class="form-horizontal" action="<?=base_url('Perfil/CambiarClave')?>" name="formCambiarClave" id="formCambiarClave">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Actual:</label>
                <div class="col-sm-6">
                  <input required type="password" class="form-control" name="clave_actual" placeholder="contraseña actual">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Nueva:</label>
                <div class="col-sm-6">
                  <input required type="password" class="form-control" name="clave_nueva" placeholder="nueva contraseña">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Repite la contraseña</label>
                <div class="col-sm-6">
                  <input required type="password" class="form-control" name="clave_repetida" placeholder="repite la contraseña">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-9">
                  <button type="submit" class="pull-right btn btn-danger btn-sm">Cambiar contraseña</button>
                </div>
              </div>
              <div class="form-group">
                <p id="cambiarClaveRespuesta" style="padding:10px;display:none" class="text-center bg-danger text-danger"></p>
              </div>
          </form>
          <p class="text-primary">Desactivar cuenta</p>
          <hr>
          <form method="post" action="<?=base_url('Perfil/DesactivarCuenta')?>" id="formDesactivarCuenta">
            <div class="form-group">
              <span class="help-block">Puedes desactivar temporalmente tu cuenta, esta volvera a estar activa la proxima vez que inicies sesión.
              Cuando tu cuenta se encuentre inactiva los demás usuarios no podran enviarte mensajes.</span>
            </div>
            <div class="form-group">
              <button class="btn btn-danger btn-sm">Desactivar cuenta</button>
            </div>
          </form>
        </div><!--Fin de la columna-->
      </div><!--Fin de informacion de la cuenta-->

      </div>
  </div>
  </div>

</div>  
<form action="<?=base_url('Perfil/CambiarImagenDePerfil')?>" method="POST" id="formSubirImg" enctype='multipart/form-data'>
  <input type="file" name="imagen" id="imagen" style="visibility:hidden" accept=".jpg,.png,.gif,.jpeg">
</form>
<link rel="stylesheet" href="<?=base_url('public/css/perfil.css')?>"></link>
<link rel="stylesheet" href="<?=base_url('public/css/publicacion.css')?>"></link>
<script type="text/javascript" src="<?=base_url('public/js/jquery.mask.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/publicacion.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/perfil.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/validar.js')?>"></script>
<script type="text/javascript">
  
  $(document).ready(function(){

    var area_actual = <?=$perfil->area_id?>;
    var cargo_actual = <?=$perfil->cargo_id?>;

    listarAreas(area_actual,"formActualizarPerfil","form-control");
    listarCargos($("#area").val(),cargo_actual,"formActualizarPerfil","form-control");

    $("#cambiar_imagen").click(function(){
      $("#imagen").trigger("click");
    });

    $("#imagen").change(function(){
      $("#formSubirImg").submit();
    });

    $("#fecha_nacimiento").datepicker({dateFormat:"dd/mm/yy"});

  });
  
  function cargarCurriculum(){
    $("#area_perfil").load("<?=base_url('Curriculum')?>");
  }
  
  $("#formActualizarPerfil").submit(function(e){
    e.preventDefault();
    validarForm(this,$("#area_response"));
  });
  
</script>