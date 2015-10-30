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
      
          if(imagen_disponible()){
            ?> <img src="<?=base_url('uploads/'. getImagenPerfil())?>" alt=""> <?
          }else{
            ?> <img src="<?=base_url('uploads/default/no_image.gif')?>" alt=""> <?
          }
        ?>
        <span class="glyphicon glyphicon-camera"></span>
      </a>
      <div class="perfil-nombre">
        <label>
          <?=$perfil->nombre_empresa?>
        </label>
      </div>
      <div class="perfil-correo">
        <strong>
          <small><?=getCorreo()?></small>
        </strong>
      </div>

      <ul class="perfil-menu">
        <li><a href="<?=base_url('Perfil')?>">Perfil</a></li>
        <li><a href="<?=base_url('Mensajes')?>">Mensajes</a></li>
        <li><a href="javascript:cargarFichas()">Fichas</a></li>
        </ul>
    </div>
  </div>
  <div class="col-md-10 col-lg-10" style="padding-right:0px;">
    <div id="area_perfil">
       <!--Div a donde se cargan los errores-->
        <div id="area_response" class="panel panel-danger text-danger panel-body response-area"></div>
          
      <!-- formulario-->
      <form action="<?=base_url('Empresa/ActualizarPerfil')?>" method="post" id="formActualizarPerfil">
          <input type="hidden" id="empresa_id" name="empresa_id" value="<?=$perfil->empresa_id?>">
          <input type="hidden" id="contacto_id" name="contacto_id" value="<?=$perfil->contacto_id?>">
          <input type="hidden" id="usuario_id" name="usuario_id" value="<?=$perfil->usuario_id?>">
          <input type="hidden" id="municipio_id" name="municipio_id" value="<?=$perfil->municipio_id?>">
          <input type="hidden" id="departamento_id" name="departamento_id" value="<?=$perfil->departamento_id?>">
          <input type="hidden" id="sociedad_id" name="sociedad_id" value="<?=$perfil->sociedad_id?>">
      </form>
      
      <!--menu de pestañas-->
      <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#info_personal" role="tab" data-toggle="tab">Datos de la empresa</a></li>
          <li role="presentation"><a href="#info_cuenta" aria-controls="profile" role="tab" data-toggle="tab">Mi cuenta</a></li>
          <li role="presentation"><a href="#info_contacto" aria-controls="messages" role="tab" data-toggle="tab">Contacto</a></li>
          <li><button form="formActualizarPerfil" class="btn btn-primary btn-sm">Actualizar perfil</button></li>
      </ul>

      <!--Paneles-->
      <div class="tab-content">
          <div role="tabpanel" class="tab-pane active" id="info_personal">
            <div class="col-md-12 col-lg-12">
              <div class="form-horizontal">
                <div class="form-group">
                  <label class="control-label col-sm-3">Nombre de la empresa:</label>
                  <div class="col-sm-7">
                    <input form="formActualizarPerfil" name="nombre_empresa" class="form-control" type="text" value="<?=$perfil->nombre_empresa?>">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">RUC:</label>
                  <div class="col-sm-7">
                    <input form="formActualizarPerfil" id="ruc" name="ruc" class="form-control" type="text" value="<?=$perfil->ruc?>">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">Sitio web:</label>
                  <div class="col-sm-7">
                    <input form="formActualizarPerfil" name="sitio_web" class="form-control" type="text" value="<?=$perfil->sitio_web?>">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">Tipo de organización:</label>
                  <div class="col-sm-7">
                     <div class="input-group">
                    <div id="sociedad_area"></div>
                    <div class="input-group-btn">
                     <button id="btnAgregarTitulo" onclick='registrarSociedad()' type='button' class='btn btn-warning btn-sm'>Agregar</button>
                    </div>
                  </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">Misión:</label>
                  <div class="col-sm-7">
                    <textarea form="formActualizarPerfil" class="form-control" name="mision" id="mision" rows="4"><?=$perfil->mision?></textarea>             
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">Visión:</label>
                  <div class="col-sm-7">
                    <textarea form="formActualizarPerfil" class="form-control" name="vision" id="vision" rows="4"><?=$perfil->vision?></textarea>             
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-3">Ocupación:</label>
                  <div class="col-sm-7">
                    <textarea form="formActualizarPerfil" class="form-control" name="ocupacion" id="ocupacion" rows="4"><?=$perfil->ocupacion?></textarea>             
                  </div>
                </div>
              </div>
            </div>
         </div>
         <!--Informacion de la cuenta-->
        <div role="tabpanel" class="tab-pane" id="info_cuenta">
          <div class="col-md-12 col-lg-12">
          <p class="help-block">Cambiar correo</p>
          <hr>
            <div class="form-horizontal">
              <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Correo:</label>
                  <div class="col-sm-6">
                    <input required value="<?=$perfil->correo?>" form="formActualizarPerfil" type="correo" class="form-control" name="correo" id="correo" placeholder="cambiar correo">
                  </div>
                </div>
            </div>
          <p class="help-block">Cambiar contraseña</p>              
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
          <p class="help-block">Desactivar cuenta</p>
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
        </div><!--Fin de la informacion de la cuenta-->

        <!--Informacion de contacto-->
        <div role="tabpanel" class="tab-pane" id="info_contacto">
          <div class="col-md-12 col-lg-12">
        <p class="help-block">Información de contacto</p>
        <hr>
          <div class="form-horizontal">
            <div class="form-group">
              <label class="control-label col-sm-3">Telefono:</label>
              <div class="col-sm-6">
                <input form="formActualizarPerfil" name="telefono" id="telefono" class="form-control" type="text" value="<?=$perfil->telefono?>">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3">Celular:</label>
              <div class="col-sm-6">
                <input form="formActualizarPerfil" name="celular" id="celular" class="form-control" type="text" value="<?=$perfil->celular?>">
              </div>
            </div>  
          </div>
          <p class="help-block">Ubicación actual</p>
          <hr>
            <div class="form-horizontal">
              <div class="form-group">
                <label class="control-label col-sm-3">Departamento:</label>
                <div class="col-sm-6">
                  <div id="departamento_area"></div>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Municipio:</label>
                <div class="col-sm-6">
                  <div id="municipio_area"></div>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Dirección:</label>
                <div class="col-sm-6">
                  <textarea form="formActualizarPerfil" name="direccion" id="direccion" class="form-control" rows="4"><?=$perfil->direccion?></textarea>
                </div>
              </div>
            </div>
        </div>
        </div>
      </div>
    
    </div>
  </div>
  </div>

</div>  
<form action="<?=base_url('Perfil/CambiarImagenDePerfil')?>" method="POST" id="formSubirImg" enctype='multipart/form-data'>
  <input type="file" name="imagen" id="imagen" style="visibility:hidden" accept=".jpg,.png,.gif,.jpeg">
</form>
<script type="text/javascript" src="<?=base_url('public/js/publicacion.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/publicadores.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/perfil.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/validar.js')?>"></script>
<link rel="stylesheet" type="text/css" href="<?=base_url('public/css/publicacion.css')?>">
<link rel="stylesheet" type="text/css" href="<?=base_url('public/css/perfil.css')?>">
<script type="text/javascript" src="<?=base_url('public/js/jquery.mask.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript">
  
  $(document).ready(function(){


    listarSociedades("<?=$perfil->sociedad_id?>","formActualizarPerfil","form-control");
    listarDepartamentos("<?=$perfil->departamento_id?>","formActualizarPerfil","form-control");
    listarMunicipios($("#departamento").val(),"<?=$perfil->municipio_id?>","formActualizarPerfil","form-control");
    


    $("#cambiar_imagen").click(function(){
      $("#imagen").trigger("click");
    });

    $("#imagen").change(function(){
      $("#formSubirImg").submit();
    });

      $("#telefono").mask("0000-0000",{placeholder: "0000-0000"});
      $("#celular").mask("0000-0000",{placeholder: "0000-0000"});
     
      $("#ruc").mask("AAAAAAAAAA-AAAA",{placeholder: "0000000000-0000"});

    $("#formActualizarPerfil").submit(function(e){
      e.preventDefault();
      validarForm(this,$("#area_response"));
    });
  });
  
  function cambiarClave(){
    var form = document.getElementById("formCambiarClave");

    if(form.clave_actual.value !="" && form.clave_nueva.value != "" && form.clave_repetida.value != ""){
      if(confirm("¿Esta seguro que desea cambiar su contraseña?")){
          $.ajax({url:form.action,
        data: $(form).serialize(),
        type: "post",
        datatype: "html",
        success:function(data){
          $("#cambiarClaveRespuesta").html(data);
        },
        aync: false
        });
        }

    }else{
      alert("Hay campos incompletos");
    }
  }
</script>