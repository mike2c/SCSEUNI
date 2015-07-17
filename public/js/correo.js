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
	document.getElementById("tipo_usuario").addEventListener("change",function(){

		listarUsuarios(this.selectedIndex);
		$("#usuario").val("");
	});

	var options = null;
	document.getElementById("usuario").addEventListener("change",function(){
		selected_user = null;
		options = document.getElementById(current_list).options;
		for(var i = 0; i < options.length; i++){
        	if(options[i].value === this.value){
            	selected_user = options[i].getAttribute('data-id');
        	}
    	}
    
	});

	document.getElementById("btnEnviar").addEventListener("click",function(){
		enviar();
	});

	document.getElementById("btnCancelar").addEventListener("click",function(){
		cancelar();
	});

	document.getElementById("btnBorrador").addEventListener("click",function(){
		guardarBorrador();
	});

	document.getElementById("btnActualizar").addEventListener("click",function(){
		actualizar();
	});

	document.getElementById("formBusqueda").addEventListener("submit",function(e){
		e.preventDefault();
		buscar();
	});
	//FUNCIONES
	function listarUsuarios(indice){

		if(indice == 0){
			current_list = "lista_egresados";
			$("#usuario").attr("list","lista_egresados");
			//document.getElementById("usuario").list="lista_egresados";
		}else if(indice == 1){
				current_list = "lista_empresas";
			$("#usuario").attr("list","lista_empresas");
			//document.getElementById("usuario").list="lista_empresas";
		}else if(indice == 2){
			current_list = "lista_publicadores";
			$("#usuario").attr("list","lista_publicadores");
			//document.getElementById("usuario").list="lista_publicadores";
		}
		
	}

	
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

function enviar(){
	if(selected_user == null){
		alert("Selecciona un destinatario valido de la lista");
	}else{
		enviarMensaje(false);
		limpiarCampos();
	}
}

function enviarMensaje(borr){

	var checkbox = document.getElementById("adjuntar_curriculum");
	var adj;
	if(!(checkbox == null)){
		adj = checkbox.checked;
	}else{
		adj = false;
	}

	var msg = {usuario: selected_user,
			asunto: document.getElementById("asunto").value,
			mensaje: document.getElementById("mensaje").value,
			curr_adjuntado: adj,
			borrador: borr
		};

	var set = {url:base_url+"Correo/EnviarMensaje",
		type: "post",
		data: msg,
		datatype: "html",
		success: function(data){
			console.log(data);
			if(borr == true){
				alert("Mensaje guardado");
			}else{
				alert("Mensaje enviado");
			}
			
			$("#exampleModal").modal("hide");
		},
		error: function(jqXHR,textStatus,errorThrown){
			alert("Ha ocurrido un error y no se ha podido enviar el mensaje. \n" + errorThrown);
		},
		async: false
		};

	$.ajax(set);

}

function guardarBorrador(){
	if((document.getElementById("mensaje").value != "") && (document.getElementById("asunto").value != "")){
		if(confirm("¿Desea guardar este mensaje como borrador?")){
			enviarMensaje(true);

		}
	}
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

function buscar(){
	var search = document.getElementById("busqueda").value;
	var filter = document.getElementById("filtro").value;
	
	var set = {url: base_url+"Correo/Buscar",
		type: "get",
		data: {busqueda: search,filtro: filter, bandeja: tipo},
		success: function(data){
			$("#area_mensajes").html(data);
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

function limpiarCampos(){
	$("#usuario").val("");
	$("#asunto").val("");
	$("#mensaje").val("");
	$("#tipo_usuario").attr("selectedIndex",0);
}

getInbox();