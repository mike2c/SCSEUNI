
$(document).ready(function(){
 	
 	var base_url = "";
 	if(esta("base_url")){
 		base_url = document.getElementById("base_url").value;
 	}

 	var default_form = null;
 	if($("#defaultForm").length){
 		default_form = document.getElementById("defaultForm").value;
 	}

 	var mun_actual = null;
 	if(esta("municipio_id")){
 		mun_actual = document.getElementById("municipio_id").value;
 	}

	var dep_actual = null
 	if(esta("departamento_id")){
 		dep_actual = document.getElementById("departamento_id").value
 	}
 

 	var carr_actual = "";
 	if(esta("carrera_id")){
 		carr_actual = document.getElementById("carrera_id").value;
 	}
 	var soc_actual = null;//Si el usuario es una empresa cargamos la sociedad actual
 	if($("#sociedad_id").length){
 		soc_actual = $("#sociedad_id").val();
 	}

 	if($("#sociedad_seleccion").length){
 		console.log("se ha cargado la sociedad actual");
 		listarSociedades();

 	}
	
 	//PREGUNTAMOS SI EXISTE EL ELEMENTO departamento _selección
	if($("#departamento_seleccion").length){
 		listarDepartamentos();//cargamos los departamentos via ajax
		
		$("#departamento").addClass("form-control");
		$("#departamento").attr("form",default_form);

		//agregamos el evento Change de jquery para saber cuando la combo ha cambiado de valor
		$("#departamento").change(function(){
			listarMunicipios($("#departamento").val());
		});

 	}

	if($("#municipio_seleccion").length){

		listarMunicipios($("#departamento").val());

	}
 	
 	if($("#carrera_seleccion").length){
 	
 		listarCarreras();
 		//console.log("asdasd");
 	}
	
 	if(base_url == ""){
 		console.log("No se ha encontrado el elemento base_url");
 		console.log("porfavor cree un elemento input type=hidden con el valor de la url base de codeigniter");
 	}

 	function listarDepartamentos(){
		var dir = base_url+"Ajax/CargarDepartamentos/"+dep_actual;
		var settings = {url: dir,
		type: "post",
		dataType: "html",
		success: function(data){
			$("#departamento_seleccion").html(data);
		},
		async: false}; 

		$.ajax(settings);
	}
	
	function listarMunicipios(id_departamento){
		var dir = base_url+"Ajax/CargarMunicipios/"+id_departamento+"/"+mun_actual;
		var settings = {url: dir,
		type: "post",
		dataType: "html",
		success: function(data){
			$("#municipio_seleccion").html(data);
		},
		async: false}; 

		$.ajax(settings);
		$("#municipio").addClass("form-control");
		$("#municipio").attr("form",default_form);

	}

	function listarCarreras(){
		var dir = base_url+"Ajax/CargarCarreras/"+carr_actual;
		var settings = {url: dir,
		type: "post",
		dataType: "html",
		success: function(data){
			$("#carrera_seleccion").html(data);
		},
		async: false}; 

		$.ajax(settings);
		$("#carrera").addClass("form-control");
		$("#carrera").attr("form",default_form);
	}

	function listarSociedades(){
		var dir = base_url+"Ajax/CargarSociedades/"+soc_actual;
		var settings = {url: dir,
		type: "post",
		dataType: "html",
		success: function(data){
			$("#sociedad_seleccion").html(data);
		},
		async: false}; 

		$.ajax(settings);
		$("#sociedad").addClass("form-control");
		$("#sociedad").attr("form",default_form);
	}

});

function esta(element_id){
	if(document.getElementById(element_id) != null){
		return true;
	}

	return false;
}
/*
	*/