$(document).ready(function(){

	
});

function cargarFichas(){ 

	$.ajax({
		url: baseURL('Ficha/Listar'),
		datatype: "html",
		success: function(data){
			$("#area_perfil").html(data);
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
	$("#area_perfil").load(baseURL("Beca/Listar"));
}

function editarBecas(id){
	$("#area_perfil").load(baseURL("Beca/Editar/") + id);
}

function cargarCursos(){
	$("#area_perfil").load(baseURL("Curso/Listar"));
}

function editarCursos(id){
	$("#area_perfil").load(baseURL("Curso/Editar/") + id);
}

