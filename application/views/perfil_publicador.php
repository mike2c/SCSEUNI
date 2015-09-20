<?php
  if(!isset($perfil) || $perfil == null){
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
            ?> <img src="<?=base_url('public/res/no_image.gif')?>" alt=""> <?
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

      <ul class="perfil-menu">
        <li><a href="<?=base_url('Perfil')?>">Perfil</a></li>
        <li><a href="<?=base_url('Correo')?>">Mensajes</a></li>
        <li><a href="javascript:cargarFichas();">Fichas ocupacionales</a></li>
        <li><a href="javascript:cargarCursos();">Cursos</a></li>
        <li style=""><a href="javascript:cargarBecas();">Becas</a></li>
      </ul>
    </div>
  </div>
  <div class="col-md-10 col-lg-10" style="padding-right:0px;">
    <div id="area_perfil">

      <!-- formulario-->
      <form action="<?=base_url('Publicador/ActualizarPerfil')?>" method="post" id="formActualizarPerfil">
          <input type="hidden" id="publicador_id" name="publicador_id" value="<?=$perfil->publicador_id?>">
          <input type="hidden" id="persona_id" name="persona_id" value="<?=$perfil->persona_id?>">
          <input type="hidden" id="usuario_id" name="usuario_id" value="<?=$perfil->usuario_id?>">
          <input type="hidden" id="cargo_id" name="cargo_id" value="<?=$perfil->cargo_id?>">
          <input type="hidden" id="area_id" name="area_id" value="<?=$perfil->area_id?>">
      </form>
      
      <!--menu de pestañas-->
      <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#info_personal" role="tab" data-toggle="tab">Informacion personal</a></li>
          <li role="presentation"><a href="#info_cuenta" aria-controls="profile" role="tab" data-toggle="tab">Informacion de cuenta</a></li>
          <li role="presentation"><a href="#contraseña" aria-="settings" role="tab" data-toggle="tab">Cambiar contraseña</a></li>
      
        <li><button form="formActualizarPerfil" class="btn btn-primary btn-sm">Actualizar perfil</button></li>
      </ul>

      <!--Paneles-->
      <div class="tab-content">
          <div role="tabpanel" class="tab-pane active" id="info_personal">
            <div class="col-md-6 col-lg-6">
              <div class="form-group">
                <label for="">Nombre</label>
                       <input required form="formActualizarPerfil" type="text" id="nombre" name="nombre" class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="">Apellido</label>
                      <input required form="formActualizarPerfil" type="text" id="apellido" name="apellido" class="form-control">
                    </div>
                    <div class="form-group">
                      <label required for="">Sexo</label>
                      <select form="formActualizarPerfil" name="genero" id="genero" class="form-control">
                          <option value="M">Masculino</option>
                        <option value="F">Femenino</option>
                      </select>
                    </div>
                    <div class="form-group">
                    <label for="">Fecha de nacimiento</label>
                      <?php
                        $sqldate = $perfil->fecha_nacimiento;
                        $fecha = date("d/m/Y",strtotime($sqldate));
                      ?>
                      <input maxlength="10" required form="formActualizarPerfil" value="<?=$fecha?>" type="text" id="fecha_nacimiento" name="fecha_nacimiento" class="form-control">
                      </div>
            
            </div>
            <div class="col-md-6 col-lg-6">
              <div class="form-group">
                  <label for="">Area actual</label>
                  <div class="input-group">
                    <div id="area_seleccion"></div>
                     <div class="input-group-btn">
                     <button id="btnAgregarTitulo" onclick='registrarArea()' type='button' class='btn btn-warning btn-sm'>Agregar</button>
                    </div>
                  </div>
                  
                </div>
                 <div class="form-group">
                  <label for="">Cargo actual</label>
                  <div class="input-group">
                    <div id="cargo_seleccion"></div>
                    <div class="input-group-btn">
                       <button id="btnAgregarTitulo" onclick='registrarCargo()' type='button' class='btn btn-warning btn-sm'>Agregar</button>
                    </div>
                  </div>
                 
                </div>
            </div>
         </div>
      <div role="tabpanel" class="tab-pane" id="info_cuenta">
        <div class="col-md-5 col-lg-5">
          <div class="form-group">
            <label for="">Correo</label>
            <input required form="formActualizarPerfil" type="text" name="correo" id="correo" class="form-control">
          </div>
          
        </div>
        <div class="col-md-5 col-lg-5">
          <div class="form-group">
            <label for="">Ultima vez que iniciaste sesión</label>
            <p id="sesion"></p>
          </div>
          <div class="form-group">
            <label for="">Estado de la cuenta</label>
            <p id="estado"></p>
          </div>
          <div class="form-group">
            <button class="btn btn-danger">Desactivar cuenta</button>
          </div>
        </div>
      </div>
     
        <div role="tabpanel" class="tab-pane" id="contraseña">
          <div class="col-lg-5 col-md-5">
            <form method="post" action="<?=base_url('Perfil/CambiarClave')?>" name="formCambiarClave" id="formCambiarClave">
                    <div class="form-group">
                      <label for="">Digite su contraseña actual</label>
                      <input type="password" name="clave_actual" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="">Contraseña</label>
              <input required type="password" name="clave_nueva" class="form-control">
            </div>
                  <div class="form-group">
                    <label for="">Repite contraseña</label>
              <input required type="password" name="clave_repetida" class="form-control">
            </div>
                    <div class="form-group">
                      <input onclick="cambiarClave()" class="btn btn-danger" value="Cambiar contraseña">
                    </div>
                </form>
          </div>
          <div class="col-md-5 col-lg-5">
              <div id="cambiarClaveRespuesta"></div>
            </div>
      </div>
    </div>
  </div>
  </div>
</div>  
<form action="<?=base_url('Perfil/CambiarImagenDePerfil')?>" method="POST" id="formSubirImg" enctype='multipart/form-data'>
  <input type="file" name="imagen" id="imagen" style="visibility:hidden" accept=".jpg,.png,.gif,.jpeg">
</form>
<link rel="stylesheet" type="text/css" href="<?=base_url('public/css/publicacion.css')?>">
<link rel="stylesheet" href="<?=base_url('public/css/perfil.css')?>"></link>
<script type="text/javascript" src="<?=base_url('public/js/publicacion.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/publicadores.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/jquery.mask.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript">
  
  $(document).ready(function(){
    var perfil = <?=json_encode($perfil)?>;

    $("#fecha_nacimiento").datepicker({dateFormat: 'dd/mm/yy'});
    $("#nombre").val(perfil.nombre);
    $("#apellido").val(perfil.apellido);
    $("#correo").val(perfil.correo);
    $("#sesion").text(perfil.ultima_sesion);

    if(perfil.activo){
      $("#estado").text("Activa");
    }
    
    if(perfil.sexo == 'F'){
      document.getElementById("genero").selectedIndex = 1;
    }

    $("#formCambiarClave").submit(function(e){
      e.preventDefault();
      cambiarClave(this);
    });
      
    $("#cambiar_imagen").click(function(){
      $("#imagen").trigger("click");
    });

    $("#imagen").change(function(){
      $("#formSubirImg").submit();
    });

    $("#cargo").attr("form","formActualizarPerfil");
    $("#area").change(function(){
       $("#cargo").attr("form","formActualizarPerfil");
    });

    $("#formActualizarPerfil").submit(function(e){
      e.preventDefault();
      if($("#cargo").length && $("#area").length){
        this.submit()
      }else{
        alert("Tienes que seleccionar una area y un cargo");
      }
    });

    listarAreas(<?=$perfil->area_id?>);
    listarCargos(<?=$perfil->area_id?>,<?=$perfil->cargo_id?>);
  
    var get = "<?php
          if(isset($_GET['page'])){
            echo $_GET['page'];
          }
        ?>";

    switch(get){

      case 'fichas':
        cargarFichas();
      break;
      case 'becas':
        cargarBecas();
      break;
      case 'cursos':
        cargarCursos();
      break;
    }

  });
</script>