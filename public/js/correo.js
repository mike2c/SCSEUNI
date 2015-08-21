var selected_user = null;
var current_list = "lista_egresados";
var msgToDelete= null;
var base_url = "";
var borr = false;
var actualizar = null;
var tipo = "inbox";

$(document).ready(function(){

	//INICIALIZAR VARIABLES
	base_url = document.getElementById("base_url").value;
	//EVENTOS
	
	$(".left-menu li a").click(function(){
		$(".left-menu li a").removeClass("activo");
		$(this).addClass("activo");

	});

	document.getElementById("btnCancelar").addEventListener("click",function(){
		cancelar();
	});

});

function eliminarMensajes(){
	var mens = document.getElementsByName("marcador");
	msgToDelete = new Array();

	for(var i = 0; i< mens.length; i++){
		if(mens[i].checked == true){
			msgToDelete.push(mens[i].value);
		}
	}

	if(msgToDelete.length > 0){
		
		if(confirm("¿Esta seguro que desea eliminar estos mensajes")){
			$.ajax({url:base_url+"Correo/EliminarMensajes",
			type: "post",
			datatype: "html",
			data: {mensajes:msgToDelete},
			success: function(data){
				alert("Mensajes eliminados");
				actualizar();
				//console.log(data);
			},
			error: function(jqXHR,textStatus,errorThrown){
				alert("No se ha podido realizar la operacion debido al siguiente error: \n" + errorThrown);
			},
			async: false
			});
		}
		
	}else{
		alert("No se han seleccionado mensajes para eliminar");
	}
	
}

function enviarMensaje(form){

	$.ajax({
		url: form.action,
		data: $("#"+form.id).serialize(),
		type: "post",
		datatype: "text",
		success: function(data){
			if(data == ""){
				if(form.borrador.value == 'false'){
					alert("Mensaje enviado");
				}else{
					alert("Mensaje guardado");
				}
				actualizar();
			}else{
				console.log(data);
			}
		},
		error: function(jqXHR,textStatus,errorThrown){
			alert("Ha ocurrido un error y no se ha podido procesar la solicitud. \n"+errorThrown);
			console.log(jqXHR);
		},
		async: false
	});

}

function leerMensaje(mensaje_id){
	
	var dat = {mensaje: mensaje_id,
		bandeja: tipo};
	
	$.ajax({url: base_url+"Correo/LeerMensaje",
		data: dat,
		type: "get",
		datatype: "html",
		success: function(data){
			console.log(data);
			$("#area_mensajes").html(data);
		},
		error: function(jqXHR, textStatus, errorThrown){
			console.log(jqXHR.responseText);
			console.log(textStatus);
			console.log(errorThrown);

		},
		async: false});
}

function cancelar(){
	if((document.getElementById("mensaje").value != "") || (document.getElementById("asunto").value != "")){
		if(confirm("¿Esta seguro que desea cancelar el envio de este mensaje?")){
			limpiarCampos();
			$("#exampleModal").modal("hide");
		}
	}else{
		limpiarCampos();
		$("#exampleModal").modal("hide");
	}
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

function getInbox(){

	actualizar = getInbox;
	tipo = "inbox";
	$("#area_mensajes").load(base_url+"Correo/Inbox");

}

function getSent(){
	actualizar = getSent;
	tipo = "sent";
	$("#area_mensajes").load(base_url+"Correo/Sent");
}

function getDrafts(){
	tipo = "drafts";
	actualizar = getDrafts;
	$("#area_mensajes").load(base_url+"Correo/Drafts");
}

function desactivar(val){
	$("a[name='menu_correo']").remove(".activo");
	
}

function limpiarCampos(){
	$("#usuario").val("");
	$("#asunto").val("");
	$("#mensaje").val("");
	$("#tipo_usuario").attr("selectedIndex",0);
}

getInbox();