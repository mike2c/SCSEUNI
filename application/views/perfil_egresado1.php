<input type="hidden" value="<?=base_url()?>" id="base_url">
<input type="hidden" value="formActualizarPerfil" id="defaultForm">

<div>
  <!-- FORMULARIO DE LOS CONTROLES-->
   <form action="<?=base_url('Egresado/ActualizarPerfil')?>" method="post" id="formActualizarPerfil">
    <input type="hidden" id="egresado_id" name="egresado_id" value="<?=$perfil->egresado_id?>">
    <input type="hidden" id="persona_id" name="persona_id" value="<?=$perfil->persona_id?>">
    <input type="hidden" id="contacto_id" name="contacto_id" value="<?=$perfil->contacto_id?>">
    <input type="hidden" id="usuario_id" name="usuario_id" value="<?=$perfil->usuario_id?>">

    <input type="hidden" id="municipio_id" name="municipio_id" value="<?=$perfil->municipio_id?>">
    <input type="hidden" id="departamento_id" name="departamento_id" value="<?=$perfil->departamento_id?>">
     <input type="hidden" id="carrera_id" name="carrera_id" value="<?=$perfil->carrera_id?>">   
   </form>
  <!-- -->

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Informacion personal</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Informacion de cuenta</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Informacion de contacto</a></li>
    <li role="presentation"><a href="#settings" aria-="settings" role="tab" data-toggle="tab">Cambiar contraseña</a></li>
    
    <input form="formActualizarPerfil" class="btn btn-primary navbar-right navbar-btn btn-sm" style="margin:0px;" type="submit" value="Guardar cambios">
  </ul>
    
   <!-- Tab panes -->
   <div class="tab-content">
      <div role="tabpanel" class="tab-pane active v-line" id="info_personal">
        <div class="container">
          <div class="row">
            <div class="col-md-5 col-lg-5">
               <div class="form-group">
                  <label for="">Nombre</label>
                  <input required form="formActualizarPerfil" type="text" name="nombre" class="form-control" value="<?=$perfil->nombre?>">
                </div>
                <div class="form-group">
                  <label for="">Apellido</label>
                  <input required form="formActualizarPerfil" type="text" name="apellido" value="<?=$perfil->apellido?>" class="form-control">
                </div>
                <div class="form-group">
                  <label required for="">Sexo</label>
                  <select form="formActualizarPerfil" name="genero" id="genero" class="form-control">
              
                   <option value="M">Masculino</option>
                   <option value="F">Femenino</option>
                  </select>
                </div>
                  <?php
                    if($perfil->sexo == "F"){
                      ?>
                        <script type="text/javascript">
                          document.getElementById("genero").selectedIndex=1;
                        </script>
                      <?
                    }
                  ?>
           
                <div class="form-group">
             
              

                  <label for="">Fecha de nacimiento</label>
                  <?php
                    $sqldate = $perfil->fecha_nacimiento;
                    $fecha = date("d/m/Y",strtotime($sqldate));
                  ?>


                  <input maxlength="10" required form="formActualizarPerfil" value="<?=$fecha?>" type="text" id="fecha_nacimiento" name="fecha_nacimiento" class="form-control">
                  <script type="text/javascript">
                   // $("#fecha_nacimiento").datepicker();
                  </script>
                </div>
                <div class="form-group">
                    <label for="">Carrera</label>
                    <div id="carrera_seleccion">
                    </div>
                    <script type="text/javascript">

                    </script>
                </div>
                </div>
    
            <div class="col-md-5 col-lg-5">
              <div class="form-group">
                  <label for="">Carnet</label>
                  <input form="formActualizarPerfil" form="formActualizarPerfil" type="text" disabled class="form-control" value="<?=$perfil->carnet?>">
                </div>
                <div class="form-group">
                  <label for="">Cedula</label>
                  <input form="formActualizarPerfil" form="formActualizarPerfil" type="text" name="cedula" class="form-control" value="<?=$perfil->cedula?>">
                </div>
                <div class="form-group">
                  <label for="">¿Te encuentras trabajando actualmente?</label><br>
                  <input form="formActualizarPerfil" form="formActualizarPerfil" type="radio" name="trabaja" checked value="1"> Si <br>
                  <?php
                    if(!$perfil->trabaja){
                      ?>
                        <input form="formActualizarPerfil" form="formActualizarPerfil" type="radio" name="trabaja" checked value="0"> No
                      <?
                    }else{
                      ?>
                      <input form="formActualizarPerfil" form="formActualizarPerfil" type="radio" name="trabaja"  value="0"> No
                      <?
                    }
                  ?>

                  
                  <br>
                   <label for="">¿Ya sacaste tu titulo?</label><br>
                  
                    <input form="formActualizarPerfil" form="formActualizarPerfil" type="radio" name="titulado" checked value="1">Si  <br>
                  
                  <div class="checkbox">
                  <?php
                    if(!$perfil->titulado){
                      ?>
                       <input form="formActualizarPerfil" form="formActualizarPerfil" type="radio" name="titulado" checked value="0"> No
                      <?
                    }else{
                      ?>
                       <input form="formActualizarPerfil" form="formActualizarPerfil" type="radio" name="titulado" value="0"> No
                      <?
                    }
                  ?>
                   </div>
                 

                 
                  <br>
                </div>
            </div>
          </div>
        </div>
           
       </div>
   
    <div role="tabpanel" class="tab-pane v-line" id="profile">
      <div class="container">
           <div class="row">
          <div class="col-md-5 col-lg-5">
          <div class="form-group">
          <label for="">Correo</label>
          <input required form="formActualizarPerfil" type="text" name="correo" value="<?=$perfil->correo?>" class="form-control">
        </div>
        <div class="h-line"></div>
   
          </div>
         
              <div class="col-md-5 col-lg-5 v-line">
            <div class="form-group">
              <label for="">Ultima sesión</label>
              <h5><?=$perfil->ultima_sesion?></h5>
               <label for="">Estado de la cuenta</label>
              <h5><?=($perfil->activo)? "activa" : "inactiva"; ?></h5>
            </div>
              <div class="form-group">
          <button class="btn btn-default btn-danger">Desactivar cuenta</button>
          </div>
          </div>
       
        </div>    
      </div>
    </div>

    <div role="tabpanel" class="tab-pane v-line" id="messages">
      <div class="container">
         <div class="row">
           <div class="col-md-5 col-lg-5">
          <div class="form-group">
            <label for="">Telefono</label>
            <input form="formActualizarPerfil" type="text" name="telefono" value="<?=$perfil->telefono?>" class="form-control">
          </div>
        <div class="form-group">
          <label for="">Celular</label>
          <input form="formActualizarPerfil" type="text" name="celular" value="<?=$perfil->celular?>" class="form-control">
        </div>
        </div>
              <div class="col-md-5 col-lg-5">
        <div class="form-group">
            <label for="">Departamento</label>
        <div id="departamento_seleccion"></div>
        </div>
        <div class="form-group">
          <label for="">Municipio</label>
          <div id="municipio_seleccion"></div>
        </div>
        <div class="form-group">
          <label for="">Dirección actual</label>
          <textarea form="formActualizarPerfil" class="form-control" name="direccion" id="direccion" cols="30" rows="4"><?=$perfil->direccion?></textarea>
        </div>
      </div>
        </div>
      </div>
    </div>
    
    <!--CAMBIAR-->
    <div role="tabpanel" class="tab-pane v-line" id="settings">
         <div class="container">
              <div class="row">
          <div class="col-md-5 col-lg-5">
             <form method="post" action="<?=base_url('Perfil/CambiarClave')?>" name="formCambiarClave" id="formCambiarClave">
              <div class="form-group">
                <label for="">Digite su contraseña actual</label>
                <input type="password" name="clave_actual" class="form-control">
              </div>
              <div class="h-line"></div>
              <div class="form-group">
                <label for="">Contraseña</label>
                <input required type="password" name="clave_nueva" class="form-control">
              </div>
              <div class="form-group">
                <label for="">Repite contraseña</label>
                <input required type="password" name="clave_repetida" class="form-control">
              </div>
              <div class="form-group">
                <input required class="btn btn-danger" type="submit" value="Cambiar contraseña">
              </div>
            </form>

          </div>
           <div class="col-md-4 col-lg-5">
            <div id="cambiarClaveRespuesta"></div>
          </div>
        </div>
         </div>
    </div>
    </div>
</div>

<!-- IMPORTANDO ARHIVOS-->
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript">
  $("#formCambiarClave").submit(function(e){
    e.preventDefault();
    cambiarClave(this);

  });

  $("#carrera").attr("form","formActualizarPerfil");
</script>