var fecha1;
var fecha2;

function validar(){
	if (fecha1.value < fecha2.value){
				
	}

	else {
		fecha1.value = "";
		fecha2.value = "";
		alert("revise su fecha ");
	}

}

function inicializa(){

	//inicializar 
	fecha1 = document.getElementById('fecha1');
	fecha2 = document.getElementById('fecha2');
	// agregar eventos 
//fecha1.addEventListener("change",validar,false);
fecha2.addEventListener("change",validar,false);



} 
inicializa();
//alert('puto 2.0');