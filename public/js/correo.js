var base_url = baseURL();
var mensaje_actual = null;
var usuario = null;
var bandeja = "inbox";
var buscar = null;
var lista = $("datalist").get(0);

$(document).ready(function(){

	$("#btnEnviar").click(function(){
		enviarMensaje();
	});

	$("#btnBorrador").click(function(){
		
		guardarComoBorrador();
	});

	$("#btnCancelar").click(function(){
		cancelar();
	});
	
	$("#destinatario").change(function(){
		validarNombreUsuario($(this).val());
	});

	$("#destinatario").keyup(function(){
		validarNombreUsuario($(this).val());
	});

	$("#busqueda").keydown(function(e){
		buscar();
	});

	$("#formBusqueda").submit(function(e){
		e.preventDefault();
	});

	$(".left-menu li a").click(function(){
		$(".left-menu li a").removeClass("activo");
		$(this).addClass("activo");
	});

	$('#redactarMensaje').on('hidden.bs.modal', function (e) {
		limpiarCampos();
	})

	$("#tipo_usuario").change(function(){
	
		var indice = $("#tipo_usuario").val();
		lista = $("datalist").get(indice);
		$("#destinatario").attr("list",lista.id);
		$("#destinatario").val("");
	
	});

	getInbox();
});

function validarNombreUsuario(strValue){
	if(lista != null){
		options = lista.options;
		for(var i = 0; i < options.length; i++){
        	if(options[i].value == strValue){
        		
        		usuario = options[i].getAttribute('data-id');
        		console.log(usuario);
        		return;
            }
    	}

    	usuario = null;
	}
}

function enviarMensaje(){

	if(usuario == null){
		alert("Seleccione un usuario valido de la lista");
	}else if($("#asunto").val() == ""){
		alert("El campo asunto* es obligatorio");
	}else if($("#mensaje").val() == ""){
		alert("El campo mensaje* es obligatorio");
	}else{

		var curr = false;
		if($("#curr_adjuntado").prop("checked")){
			curr = true;
		}
		
		var json_data = {
			usuario_id: usuario,
			asunto: $("#asunto").val(),
			mensaje: $("#mensaje").val(),
			curr_adjuntado: curr
		};

		$.ajax({
			url: baseURL("Correo/EnviarMensaje"),
			type: "post",
			data: json_data,
			datatype: "text",
			success: function(data){
				if(data == ""){
					alert("Mensaje enviado");
					$("#redactarMensaje").modal("hide");
					actualizar();
				}else{
					console.log(data);
				}
			},
			error: function(jqXHR, textStatus, errorThrown){
				alert("Ha ocurrido un error y no se ha podido procesar la petición.\n"+ errorThrown);
				console.log(jqXHR.responseText);
			},
			async: true
		});

	}
}

function guardarComoBorrador(){

	if($("#asunto").val() != "" && $("#mensaje").val() != ""){
		var json_data = {
			asunto: $("#asunto").val(),
			mensaje: $("#mensaje").val()
		};

		$.ajax({
			url: baseURL("Correo/GuardarBorrador"),
			type: "post",
			data: json_data,
			datatype: "text",
			success: function(data){
				if(data == ""){
					alert("Mensaje guardado");
					$("#redactarMensaje").modal("hide");
					actualizar();
				}else{
					console.log(data);
				}
			},
			error: function(jqXHR, textStatus, errorThrown){
				alert("Ha ocurrido un error y no se ha podido procesar la petición.\n"+ errorThrown);
				console.log(jqXHR.responseText);
			},
			async: true
		});

	}else{
		alert("Asegurese de haber ingresado el campo y el asunto");
	}

}

function eliminarBorradores(){

	var data_msg = Array();
	$("input:checked").each(function(indice,elemento){
		console.log(elemento.class);
		data_msg.push(elemento.value);	
	});

	if(data_msg.length > 0){

	}
}

function eliminarMensajes(){

	var data_msg = Array();
	$("input:checked").each(function(indice,elemento){
		data_msg.push(elemento.value);	
	});

	if(data_msg.length > 0){
		
		if(confirm("¿Esta seguro que desea eliminar estos mensajes")){
		
			$.post(baseURL("Correo/EliminarMensajes/"),
				{mensajes: data_msg},
				function(data,textStatus,jqXHR){
					if(data ==""){
						alert("Mensajes eliminados");
						actualizar();
					}else{
						alert("Ha ocurrido un error y no se hap odido ejecutar la peticion");
						console.log(jqXHR.textStatus);
					}
				}
			);
		}
	}else{
		alert("No se han seleccionado mensajes para eliminar");
	}
	
}

function leerInbox(mensaje){

	$.ajax({url: baseURL("Correo/LeerInbox"),
		data: {mensaje_id: mensaje},
		type: "post",
		datatype: "html",
		success: function(data){
			$("#area_mensajes").html(data);
		},
		error: function(jqXHR, textStatus, errorThrown){
			console.log(jqXHR.responseText);
			console.log(textStatus);
			console.log(errorThrown);

		},
		async: true});
}

function leerSent(mensaje){

	$.ajax({url: baseURL("Correo/LeerSent"),
		data: {mensaje_id: mensaje},
		type: "post",
		datatype: "html",
		success: function(data){
			$("#area_mensajes").html(data);
		},
		error: function(jqXHR, textStatus, errorThrown){
			console.log(jqXHR.responseText);
			console.log(textStatus);
			console.log(errorThrown);

		},
		async: true});
}

function cancelar(){
	if($("#mensaje").val() != ""){
		if(confirm("¿Esta seguro que desea cancelar el envio de este mensaje?")){
			$("#redactarMensaje").modal("hide");
		}
	}else{
		$("#redactarMensaje").modal("hide");
	}

}

function buscarEnInbox(){

	var json_data = {
		campo: $("#filtro").val(),
		busqueda: $("#busqueda").val()
	};

	$.ajax({
		url: baseURL("Correo/BuscarInbox"),
		data: json_data,
		type: "post",
		datatype: "html",
		success: function(data){
			if(data != ""){

				$("#area_mensajes").html(data);
			}
		},
		error: function(jqXHR){
			console.log(jqXHR.responseText);
		},
		async: true
	});
}

function buscarEnSent(){
	var json_data = {
		campo: $("#filtro").val(),
		busqueda: $("#busqueda").val()
	};

	$.ajax({
		url: baseURL("Correo/BuscarSent"),
		data: json_data,
		type: "post",
		datatype: "html",
		success: function(data){
			if(data != ""){

				$("#area_mensajes").html(data);
			}
		},
		error: function(jqXHR){
			console.log(jqXHR.responseText);
		},
		async: true
	});
}

function buscarEnDrafts(){

}

function buscar(form,bandeja){
	var dir = "";
	if(bandeja == "inbox"){
		dir = base_url+"Correo/BuscarRecibidos";
	}else if(bandeja == "sent"){
		dir = base_url+"Correo/BuscarEnviados";
	}else if(bandeja == "drafts"){
		dir = base_url+"Correo/BuscarBorrador";
	}
	console.log($("#"+form.id).serialize());
	var set = {url: dir,
		type: "post",
		data: $("#"+form.id).serialize(),
		datatype: "html",
		success: function(data){
			$("#area_mensajes").html(data);
		},
		error: function(jqXHR, textStatus, errorThrown){
			alert("Ha ocurrido un error y no se ha podido procesar la solicitud. \n"+errorThrown);
			console.log(jqXHR.responseText);
		},
		async: true
		};

		$.ajax(set);
}

function cargarBorrador(id_mensaje){

	$.ajax({
		url: base_url + "Correo/CargarBorrador",
		type: "get",
		data: {mensaje: id_mensaje},
		success: function(data){
			json_data = $.parseJSON(data);
				if(json_data != null && json_data != ""){

				$("#asunto").val(json_data.asunto);
				$("#mensaje").val(json_data.mensaje);
				mensaje = json_data.mensaje_id;
				$("#redactarMensaje").modal("show");
			}
		},
		error: function(jqXHR){
			console.log(jqXHR.responseText);
		},
		async: false
	});

}

function getInbox(){

	actualizar = getInbox;
	buscar = buscarEnInbox;
	$("#area_mensajes").load(base_url+"Correo/Inbox");
}

function getSent(){
	actualizar = getSent;
	buscar = buscarEnSent;
	$("#area_mensajes").load(base_url+"Correo/Sent");
}

function getDrafts(){
	actualizar = getDrafts;
	buscar = buscarEnDrafts;
	$("#area_mensajes").load(base_url+"Correo/Drafts");
}

function limpiarCampos(){
	document.getElementById("formEnviarMensaje").reset();
	lista = $("datalist").get(0);
	$("#destinatario").attr("list","lista_egresados");
	usuario = null;
	mensaje_actual = null;
}