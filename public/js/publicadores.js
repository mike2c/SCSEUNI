function registrarPublicador(content){

	$.ajax({
		url: base_url+"Publicador/Registro",
		data: $("#formRegistroPublicador").serialize(),
		datatype: "text",
		type: "post",
		success: function(data){
			console.log(data);
			if(data == ""){
				alert("Publicador registrado correctamente");
				$("#formRegistroPublicador").trigger("reset");
			}else{
				if(!(content == undefined)){
					content.html(data);
				}
			
			}
		},
		async: false
	});
}

function buscarPublicador(content,datos){

	if(datos == undefined){
		datos = $("#formBusqueda").serialize();
	}

	$.ajax({
		url: base_url+"Publicador/Busqueda",
		data: datos,
		datatype: "html",
		type: "post",
		success: function(data){
			if(!(content == undefined)){
				content.html(data);	
			}
			
		},
		error: function(jqXHR, textStatus, errorThrown){
			alert("Ha ocurrido un error y no se ha podido procesar la petición. \n"+errorThrown);
		}
	});
}