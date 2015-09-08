function cargarFichas(){
  $("#area_perfil").load(baseURL('Ficha/Listar'));
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