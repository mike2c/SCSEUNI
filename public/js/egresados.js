var base_url = "";
$(document).ready(function(){

	if($("#base_url").length){
		base_url = $("#base_url").val();
	}

});

function agregarEgresado(){

	$("#contenido").load(base_url+"Egresado/Registro");
}

function listarEgresados(contenedor){
	if(contenedor == undefined){
		contenedor = "contenido";
	}

	$.ajax({
		url: base_url+"Egresado/Listar",
		datatype: "html",
		success:function(data){
			$("#"+contenedor).html(data);
		},
		async: false
	});


	//$("#" + contenedor).load(base_url+"Egresado/Listar");
}

//regresa info en formato html
	function buscarEgresado(datos){
		console.log(datos);
		var result = null;
		$.ajax({
			url: base_url+"Egresado/Busqueda",
			type: "post",
			data: datos,
			datatype: "html",
			success: function(data){
				result = data;
			},
			async: false
		});

		return result;
	}
