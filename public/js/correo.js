//variables globales

var elemento;
var tipo_busqueda = "inbox";
var base_url = "";

$(document).ready(function(){
	base_url = document.getElementById("base_url").value;
	mostrar("#divinbox");
	
	$("#option_inbox").click(function(){
		mostrar("#divinbox");
		tipo_busqueda = "inbox";
	});

	$("#option_sent").click(function(){
		mostrar("#divsent");
		tipo_busqueda = "sent";
	});

	$("#option_drafts").click(function(){
		mostrar("#divdrafts");
		tipo_busqueda = "drafts";
	});

	
	$("#formBusqueda").submit(function(e){
		e.preventDefault();
		buscar();
	});

	function buscar(){

		datos = $("#formBusqueda").serialize() + "&tipo=" + tipo_busqueda;
		console.log(datos);

		$.ajax({type: "POST",
			url: base_url+"Correo/Buscar",
			data: datos,
			datatype: "html",
			async: true}).success(function(data){
				$("#divinbox").html(data);
			});
		/*$.post(base_url + "Correo/Buscar",
			data,
			function(data){
				if(tipo_busqueda == "inbox"){
					$("#divinbox").html(data);
				}else if(tipo_busqueda == "sent"){
					$("#divsent").html(data);
				}else if(tipo_busqueda == "drafts"){
					$("#divdrafts").html(data);
				}
				
			});*/
	}

	function mostrar(id){
		$("#divinbox").hide();
		$("#divsent").hide();
		$("#divdrafts").hide();

		$(id).show();
	}

});

/*	$("#option_inbox").click(function(){
		
		elemento = $("#divinbox");
		
	});

	$("#option_sent").click(function(){
	
		elemento = $("#divsent");
		
	});

	$("#option_drafts").click(function(){
	
		elemento = $("#divdrafts");
		
	});
*/