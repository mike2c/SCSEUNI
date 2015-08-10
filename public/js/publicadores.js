	var current_area = "";
	var current_cargo = "";
	var base_url = "";

	if(document.getElementById("base_url") != null){
		base_url = document.getElementById("base_url").value;
		console.log(base_url);
	}

	if(document.getElementById("area_id") != null){
		current_area = document.getElementById("area_id").value;
	}
	if(document.getElementById("cargo_id") != null){
		current_cargo = document.getElementById("cargo_id").value;
	}

	var existsAreas = false;
	if($("#area_seleccion").length){
 		listarAreas();
 		$("#area").addClass("form-control");

 		if($("#cargo_seleccion").length){
 			$("#area").change(function(){
 				listarCargos($("#area").val());
 			});
 		}
 		
 		existsAreas = true;
 	}

 	if($("#cargo_seleccion").length){
 		if(existsAreas == true){
			listarCargos($("#area").val());
 			
 		}
 	
 	}
	 	
 	function listarAreas(){
 		$.ajax({url: base_url + "Ajax/CargarAreas/" + current_area,
 		type: "post",
 		datatype: "html",
 		success: function(data){
 			$("#area_seleccion").html(data);
 		},
 		async: false});
 	}

 	function listarCargos(id_area){

 		$.ajax({url: base_url+"Ajax/CargarCargos/"+id_area+"/"+current_cargo,
 			type: "get",
 			datatype: "html",
 			success: function(data){
 				$("#cargo_seleccion").html(data);
 				$("#cargo").addClass("form-control");
 			},
 			async: false
 		});
 	}

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