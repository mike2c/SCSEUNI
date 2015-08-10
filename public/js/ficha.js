var base_url = "";
if(document.getElementById("base_url") != null){
	base_url = document.getElementById("base_url").value;
}
function nuevaFicha(){

	$("#contenido").load(base_url+"Ficha/Crear");
}

function listarFichas(){
	$("#contenido").load(base_url+"Ficha/Listar/");
}

function editarFicha(ficha){
	$("#contenido").load(base_url+"Ficha/Editar/"+ficha);
}