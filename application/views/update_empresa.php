<?php echo validation_errors();?>

<div id="contenido_pestanas">
	<ul>
		<li><a href="#empresaData" title="Datos de la Empresa"> Datos de la Empresa</a></li>
		<li><a href="#contactoData" title="Datos de Contacto"> Datos de Contacto</a></li>
		<li><a href="#usuarioData" title="Datos de Usuario"> Datos de Usuario</a></li>
	</ul>		

	<div id="empresaData" class="empresaData">
		<?php $atributos = array('class' => 'empresaData', 'id' => 'empresaData', 'name'=> 'formUpdateEmpresa');
		echo form_open('Empresa/actualizar',$atributos); ?>
			<label class="empresaData" id="empresaData">Nombre de la Empresa</label><br/>
			<input type="text" id="empresaData" name="nombre_empresa" class="empresaData" value="<?php echo $empresa["data_empresa"]->row()->nombre_empresa; ?>" /><br/>

			<label class="empresaData" id="empresaData">Tipo de Sociedad</label><br/>
			<select name="sociedad" id="empresaData" class="empresaData">
				<?php foreach($sociedad["datos_sociedad"]->result() as $row){ 
					if ($empresa["data_empresa"]->row()->sociedad_id == $row->sociedad_id){
					?>	
					<option selected="selected" value="<?php echo $row->sociedad_id ?>"><?php echo $row->sociedad ?></option>
				<?php }else{ ?>
					<option value="<?php echo $row->sociedad_id ?>"><?php echo $row->sociedad ?></option>
			<?php	} 
				} ?>	
			</select><br/>

			<label class="empresaData" id="empresaData">Mision</label><br/>
			<textarea name="mision"  id="empresaData" class="empresaData"><?php echo $empresa["data_empresa"]->row()->mision; ?></textarea></br>

			<label class="empresaData" id="empresaData">Vision</label><br/>
			<textarea name="vision" id="empresaData" class="empresaData"><?php echo $empresa["data_empresa"]->row()->vision; ?></textarea></br>

			<label class="empresaData" id="empresaData">Ocupacion</label><br/>
			<textarea name="ocupacion" id="empresaData" class="empresaData"><?php echo $empresa["data_empresa"]->row()->ocupacion; ?></textarea></br>

			<label class="empresaData" id="empresaData">Sitio Web</label><br/>
			<input type="text" id="empresaData" name="sitio_web" class="empresaData" value="<?php echo $empresa['data_empresa']->row()->sitio_web; ?>" /><br/>

			<input type="submit" id="empresaData" class="empresaData" value="Guardar Cambios" />
		</form>
	</div>

	<div id="contactoData" class="empresaData">
		<?php $atributos = array('class' => 'contactoData', 'id' => 'contactoData', 'name'=> 'formUpdateEmpresaContacto');
		echo form_open('Empresa/actualizar',$atributos); ?>
			<label id="contactoData" class="contactoData">Telefono</label><br/>
			<input type="text" id="DatosContacto" name="telefono" placeholder="0000-0000" autocomplete="off" class="contactoData" value="<?php echo $empresa['data_contacto']->row()->telefono; ?>" /><br/>

			<label id="contactoData" class="contactoData">Celular</label><br/>
			<input id="contactoData" class="contactoData" pattern="([0-9]{4})+[-]([0-9]{4})" placeholder="0000-0000" autocomplete="off" type="text" value="<?php echo $empresa['data_contacto']->row()->celular; ?>" name="celular"><br/>

			<label id="contactoData" class="contactoData">Direccion</label><br/>
			<textarea id="contactoData" name="direccion" class="contactoData"><?php echo $empresa["data_contacto"]->row()->direccion; ?></textarea><br/>

			<input id="contactoData" type="submit" value="Guardar Cambios" class="contactoData" />
		</form>
	</div>

	<div id="usuarioData" class="usuarioData">
		<?php $atributos = array('class' => 'usuarioData', 'id' => 'usuarioData', 'name'=> 'formUpdateEmpresaUsuario');
			echo form_open_multipart('Empresa/actualizar',$atributos); ?>

			<label class="usuarioData" id= "usuarioData">Imagen de Perfil</label><br/>

			<?php	
				$img = $empresa['data_usuario']->row()->imagen_perfil;
				if ($img == "") {
					$defaultImg = "/Tesis/uploads/Male.jpg";
				}else{
					$defaultImg= "/Tesis/uploads/".$img;
					$ruta = "C:/AppServ/www/Tesis/uploads/".$img;
				}

				$nuevo_ancho = 100;
				$nuevo_alto = 100;

				list($ancho,$alto,$tipo_imagen) = getimagesize($ruta);

				$thumb = imagecreatetruecolor($nuevo_ancho, $nuevo_alto);

				switch ( $tipo_imagen ){
				case "image/jpg":
					$origen = imagecreatefromjpeg($ruta);
					$this->output->set_header("image/jpeg");
					break;
				case IMAGETYPE_JPEG:
					$origen = imagecreatefromjpeg($ruta);
					$this->output->set_header("image/jpeg");
					break;
				case IMAGETYPE_PNG:
					$origen = imagecreatefrompng($ruta);
					$this->output->set_header("image/png");
					break;
				case IMAGETYPE_GIF:
					$origen = imagecreatefromgif($ruta);
					$this->output->set_header("image/gif");
					break;
			}
				imagecopyresampled($thumb, $origen, 0, 0, 0, 0, $nuevo_ancho, $nuevo_alto, $ancho, $alto);
				imagejpeg($thumb,$ruta, 90);
			?>
				<img src="<?php echo $defaultImg; ?>" alt"logo" height="100" widht="100" id="usuarioData" class="img-responsive">

			<br/><input type="file" name="userfile" size="20" /><br/>

			<label class="usuarioData" id="usuarioData">Correo Electronico</label><br/>
			<input type="text" id="usuarioData" name="correo" class="usuarioData" value="<?php echo $empresa['data_usuario']->row()->correo; ?>" /><br/>

			<label class="usuarioData" id="usuarioData">Correo Electronico</label><br/>
			<input type="password" id="usuarioData" name="clave" class="usuarioData" value="<?php echo $empresa['data_usuario']->row()->clave; ?>" /><br/>

			<input type="submit" id="usuarioData" value="Guardar Cambios" class="usuarioData" />
		</form>
	</div>

</div>

<script type="text/javascript">
  $(document).ready(function(){ // Script del menú con pestañas
    $('#contenido_pestanas div').css('position', 'absolute').not(':first').hide();
    $('#contenido_pestanas ul li:first a').addClass('aqui');
    $('#contenido_pestanas a').click(function(){
        $('#contenido_pestanas a').removeClass('aqui');
        $(this).addClass('aqui');
        $('#contenido_pestanas div').fadeOut(350).filter(this.hash).fadeIn(350);
        return false;
    });
 });
</script>                      