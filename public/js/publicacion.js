tipoPublicacion = "";

function validarFormulario(form){

	$.ajax({
		url: form.action,
		data: $(form).serialize(),
		type: "post",
		datatype: "html",
		success: function(data){
			if(data != ""){
				$("#errorArea").show();
				$("#errorArea").html(data);
			}else{
				form.submit();
			}
		},
		async: false
	});
}

function cargarFichas(){ 

	$.ajax({
		url: baseURL('Ficha/Listar'),
		datatype: "html",
		success: function(data){
			$("#area_perfil").html(data);
			tipoPublicacion = "ficha"
		},
		error: function(jqXHR, textStatus, errorThrown){

		},
		async:false
	});
  //$("#area_perfil").load();
}

function editarFicha(id){
	$("#area_perfil").load(baseURL('Ficha/Editar/') + id);
}

function cargarBecas(){
	tipoPublicacion = "beca";
	$("#area_perfil").load(baseURL("Beca/Listar"));
	
}

function editarBeca(id){
	$("#area_perfil").load(baseURL("Beca/Editar/") + id);

}

function cargarCursos(){
	$("#area_perfil").load(baseURL("Curso/Listar"));
	tipoPublicacion = "curso";
}

function editarCursos(id){
	$("#area_perfil").load(baseURL("Curso/Editar/") + id);
}

function cambiarVisibilidad(button){

	var idPublicacion = $(button).data("publicacion_id");
	var valor = $(button).data("visible");
	var action = "";

	if(tipoPublicacion == "ficha"){
		action = baseURL("Ficha/CambiarVisibilidad");
	}else if(tipoPublicacion == "beca"){
		action = baseURL("Beca/CambiarVisibilidad");
	}else if(tipoPublicacion == "curso"){
		action = baseURL("Curso/CambiarVisibilidad");
	}
	
}

function eliminarPublicaciones(){
	publicaciones = Array();
	$("input:checked").each(function(indice,elemento){

		publicaciones.push(elemento.value);
	});

	if(publicaciones.length > 0){

		var action;
		if(tipoPublicacion == "ficha"){
			action = baseURL("Ficha/Eliminar");
		}else if(tipoPublicacion == "beca"){
			action = baseURL("Beca/Eliminar");
		}else if(tipoPublicacion == "curso"){
			action = baseURL("Curso/Eliminar");
		}

		$.ajax({
			url: action,
			data: {publicacion:publicaciones},
			type: "post",
			datatype: "html",
			success: function(data,textStatus,jqXHR){
				console.log(data);
				if(data == ""){
					return true;
				}
			},
			error: function(jqXHR,textStatus,errorThrown){
				alert("Ha ocurrido un error y no se ha podido procesar la petición.\n"+textStatus);
				console.log(jqXHR.responseText);
			},
			async: false
		});
	return false;
	}else{
		alert("No se han seleccionado publicaciones");
	}
}
