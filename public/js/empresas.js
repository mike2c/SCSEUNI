var base_url = "";
if(document.getElementById("base_url") != null){
	base_url = document.getElementById("base_url").value;
}

function registrarEmpresa(datos, content){

	$.ajax({
		url: base_url+"Empresa/Registro",
		data: datos,
		type: "post",
		datatype: "html",
		success: function(data){

			if(data == ""){
				alert("Registro creado, porfavor proceda a iniciar sesion");
				window.location = base_url+ "Sesion";
			}else{
				if(!(content == undefined)){
					content.css("visibility","visible");
					content.html(data);
				}
			}
		},
		error: function(jqXHR, textStatus, errorThrown){
			alert("Ha ocurrido un error y no se ha podido procesar la peticion. \n"+errorThrown);
		}
	});
}