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

function editarCurso(id){
	$("#area_perfil").load(baseURL("Curso/Editar/") + id);
}

function cambiarVisibilidad(data){

	var params = {visible: data.getAttribute("data-visible"),publicacion: $(data).data("publicacion")};
	$.ajax({
		url: baseURL("Ficha/CambiarVisibilidad"),
		type: "post",
		datatype: "html",
		data: params,
		success: function(response){
			if(response != ""){
				console.log(response);
			}

			if(data.getAttribute("data-visible") == 'true'){
				$(data).html("<i class='glyphicon glyphicon-eye-close'></i> No visible");
				data.setAttribute("data-visible",'false');
			}else{
				$(data).html("<i class='glyphicon glyphicon-eye-open'></i> visible");
				data.setAttribute("data-visible",'true');
			}
		},
		error: function(jqXHR,textStatus,errorThrown){
			console.log(jqXHR);
			alert("Ha ocurrido un error y no se ha podido procesar la petición");
		},
		async: false
	});
}

function eliminarPublicaciones(target){
	
	publicaciones = Array();
	$("input:checked").each(function(indice,elemento){

		publicaciones.push(elemento.value);
	});

	if(publicaciones.length > 0){

		$.ajax({
			url: target,
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
