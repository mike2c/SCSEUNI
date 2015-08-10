<input type="hidden" value="<?=base_url()?>" id="base_url">
<input type="hidden" value="formActualizarPerfil" id="defaultForm">

<div>
  <!-- FORMULARIO DE LOS CONTROLES-->
   <form action="<?=base_url('Empresa/ActualizarPerfil')?>" method="post" id="formActualizarPerfil">
    <input type="hidden" id="empresa_id" name="empresa_id" value="<?=$perfil->empresa_id?>">
    <input type="hidden" id="contacto_id" name="contacto_id" value="<?=$perfil->contacto_id?>">
    <input type="hidden" id="usuario_id" name="usuario_id" value="<?=$perfil->usuario_id?>">

    <input type="hidden" id="municipio_id" name="municipio_id" value="<?=$perfil->municipio_id?>">
    <input type="hidden" id="departamento_id" name="departamento_id" value="<?=$perfil->departamento_id?>">
     <input type="hidden" id="sociedad_id" name="sociedad_id" value="<?=$perfil->sociedad_id?>">   
   </form>
  <!-- -->

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist" style="margin-left:-1px;">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Informacion de empresa</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Informacion de cuenta</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Informacion de contacto</a></li>
    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Cambiar contraseña</a></li>
    
    <input form="formActualizarPerfil" class="btn btn-primary navbar-right navbar-btn btn-sm" style="margin-right:30px;margin-top:0px;margin-bottom:0px;" type="submit" value="Guardar cambios">
  </ul>
    
   <!-- Tab panes -->
   <div class="tab-content">
      <div role="tabpanel" class="tab-pane active " id="home">
        <div class="container">
          <div class="row">
            <div class="col-md-4 col-lg-4">
               <div class="form-group">
                  <label for="">Nombre de la empresa</label>
                  <input required form="formActualizarPerfil" type="text" name="nombre_empresa" class="form-control" value="<?=$perfil->nombre_empresa?>">
                </div>
                <div class="form-group">
                  <label for="">N° ruc</label>
                  <input form="formActualizarPerfil" type="text" name="ruc" value="<?=$perfil->ruc?>" class="form-control">
                </div>
                 <div class="form-group">
                  <label for="">Sitio web</label>
                  <input form="formActualizarPerfil" type="text" name="sitio_web" class="form-control" value="<?=$perfil->sitio_web?>">
                </div>
                <div class="form-group">
                  <label for="">Sociedad</label>
                  <div id="sociedad_seleccion"></div>
                </div>                          
           
            </div>
    
            <div class="col required-md-5 col-lg-5">
                <div class="form-group">
                  <label for="">Misión</label>
                  <textarea form="formActualizarPerfil" class="form-control" name="mision" id="" cols="30" rows="4"><?=$perfil->mision?></textarea>
                </div>
                   <div class="form-group">
                  <label for="">Visión</label>
                  <textarea form="formActualizarPerfil" class="form-control" name="vision" id="" cols="30" rows="4"><?=$perfil->vision?></textarea>
                </div>
                <div class="form-group">
                  <label for="">Ocupación</label>
                  <textarea form="formActualizarPerfil" class="form-control" name="ocupacion" id="" cols="30" rows="4"><?=$perfil->ocupacion?></textarea>
                </div>

            </div>
          </div>
        </div>
           
       </div>
   
    <div role="tabpanel" class="tab-pane " id="profile">
      <div class="container">
           <div class="row">
          <div class="col-md-4 col-lg-4">
          <div class="form-group">
          <label for="">Correo</label>
          <input required form="formActualizarPerfil" type="text" name="correo" value="<?=$perfil->correo?>" class="form-control">
        </div>
        <div class="h-line"></div>
     
          </div>
            <div class="col-md-5 col-lg-5 ">
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
           <div class="col-md-4 col-lg-4">
          <div class="form-group">
            <label for="">Telefono</label>
            <input form="formActualizarPerfil" type="text" name="telefono" value="<?=$perfil->telefono?>" class="form-control">
          </div>
        <div class="form-group">
          <label for="">Celular</label>
          <input form="formActualizarPerfil" type="text" name="celular" value="<?=$perfil->celular?>" class="form-control">
        </div>
        </div>
              <div class="col-md-4 col-lg-4">
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
    <div role="tabpanel" class="tab-pane " id="settings">
         <div class="container">
              <div class="row">
          <div class="col-md-4 col-lg-4">
            <form method="post" action="<?=base_url('Perfil/CambiarClave')?>" name="formCambiarClave" id="formCambiarClave">
              <div class="form-group">
                <label for="">Digite su contraseña actual</label>
                <input type="password" name="clave_actual" class="form-control">
              </div>
              <div class="h-line"></div>
              <div class="form-group">
                <label for="">Contraseña</label>
                <input type="password" name="clave_nueva" class="form-control">
              </div>
              <div class="form-group">
                <label for="">Repite contraseña</label>
                <input type="password" name="clave_repetida" class="form-control">
              </div>
              <div class="form-group">
                <input class="btn btn-danger" type="submit" value="Cambiar contraseña">
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
</script>