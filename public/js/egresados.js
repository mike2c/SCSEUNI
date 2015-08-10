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
	function buscarEgresado(datos,content){

		var result = null;
		$.ajax({
			url: base_url+"Egresado/Busqueda",
			type: "post",
			data: datos,
			datatype: "html",
			success: function(data){
				content.html(data);
				console.log(data);
			},
			async: true
		});

	}
