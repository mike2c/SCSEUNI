$(document).ready(function(){

	var current_area = "";
	var current_cargo = "";
	var base_url = "";

	if(document.getElementById("base_url") != null){
		base_url = document.getElementById("base_url").value;
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
 		$("#area").change(function(){
 			listarCargos($("#area").val());

 		});
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

});