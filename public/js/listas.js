function listarDepartamentos(dep_actual,form,classes){
	
	if(dep_actual == undefined){
		dep_actual = "";
	}
	
	$.ajax({url: baseURL("Ajax/CargarDepartamentos/"+dep_actual),
	type: "post",
	dataType: "html",
	success: function(data){
		//Comprobamos si el elemento existe
		if($("#departamento_area").length){

			$("#departamento_area").html(data);

			if(form != undefined && form != null){
				$("#departamento").attr("form",form);
			}
			if(classes != undefined && classes != null){
				$("#departamento").addClass(classes);
			}

			$("#departamento").change(function(){
				listarMunicipios($("#departamento").val(),null,$("#departamento").attr("form"),$("#departamento").attr("class"));
			});
		}
	},
	error: function(jqXHR,textStatus,errorThrown){
		console.log(jqXHR.responseText);
		alert("Ha ocurrido un error y no se ha podido procesar la petición \n"+textStatus);
	},
	async: false});

}

function listarMunicipios(departamento,mun_actual,form,classes){
	
	//Salimos de la funcion si no se proporciona la variable departamento
	if(departamento == undefined){
		return;
	}

	if(mun_actual == undefined){
		mun_actual == "";
	}
	
	$.ajax({url: baseURL("Ajax/CargarMunicipios/"+departamento+"/"+mun_actual),
	type: "post",
	dataType: "html",
	success: function(data){
		if($("#municipio_area").length){
			
			$("#municipio_area").html(data);

			if(form != undefined && form != null){
				$("#municipio").attr("form",form);
			}
			if(classes != undefined && classes != null){
				$("#municipio").addClass(classes);
			}
		}
	},
	error: function(jqXHR,textStatus,errorThrown){
		console.log(jqXHR.responseText);
		alert("Ha ocurrido un error y no se ha podido procesar la petición \n"+textStatus);
	},
	async: false}); 

}

function listarCarreras(carr_actual,form,classes){

	if(carr_actual == undefined){
		carr_actual = "";
	}

	$.ajax({
		url: baseURL("Ajax/CargarCarreras/"+carr_actual),
		type: "post",
		datatype: "html",
		success: function(data){

			if($("#carrera_area").length){

				$("#carrera_area").html(data);

				if(form != undefined && form != null){
					$("#carrera").attr("form",form);
				}
				if(classes != undefined && classes != null){
					$("#carrera").addClass(classes);
				}
			}
		},
		error: function(jqXHR,textStatus,errorThrown){
			console.log(jqXHR.responseText);
			alert("Ha ocurrido un error y no se ha podido procesar la petición \n"+textStatus);
		},
		async: false
	});

}

function listarSociedades(soc_actual,form,classes){

	if(soc_actual == undefined){
		soc_actual = "";
	}

	$.ajax({
		url: baseURL("Ajax/CargarSociedades/"+soc_actual),
		type: "post",
		datatype: "html",
		success: function(data){

			if($("#sociedad_area").length){

				$("#sociedad_area").html(data);

				if(form != undefined && form != null){
					$("#sociedad").attr("form",form);
				}
				if(classes != undefined && classes != null){
					$("#sociedad").addClass(classes);
				}
			}
		},
		error: function(jqXHR,textStatus,errorThrown){
			console.log(jqXHR.responseText);
			alert("Ha ocurrido un error y no se ha podido procesar la petición \n"+textStatus);
		},
		async: false
	});

}

function registrarSociedad(){

	var soc = prompt("Escribe el nombre de la sociedad");
	if(soc == null || soc == ""){
		return;
	}
	$.post(baseURL("Ajax/RegistrarSociedad"),{sociedad:soc},
		function(data){
			if(data == ""){
				alert("Sociedad registrada");
				listarSociedades($("#sociedad").val(),$("#sociedad").attr("form"),$("#sociedad").attr("class"));
			}else{
				console.log(data);
			}
	});
}

function listarAreas(area_actual){

	$.ajax({url: baseURL(+ "Ajax/CargarAreas/" + area_actual),
	type: "post",
	datatype: "html",
	success: function(data){
		$("#area_seleccion").html(data);
		$("#area").addClass("form-control");
		$("#area").attr("form","formActualizarPerfil");
		$("#area").change(function(){
	      listarCargos(this.value);
	    });
	},
	async: false});
}

function listarCargos(area,cargo_actual){

	if(cargo_actual == undefined){
		cargo_actual = "";	
	}

	$.ajax({url: baseURL("Ajax/CargarCargos/"+area+"/"+cargo_actual),
		type: "get",
		datatype: "html",
		success: function(data){
			$("#cargo_seleccion").html(data);
			$("#cargo").addClass("form-control");
			$("#cargo").attr("form","formActualizarPerfil");
		},
		async: false
	});
}

function registrarArea(){

	if($("#area").length){
		var a = prompt("Escribe el nombre de la area");
		if(a == null || a == ""){
			return;
		}
		$.post(baseURL("Ajax/RegistrarArea"),{area:a},
		function(data){
			if(data == ""){
				alert("Area registrada");
				listarAreas($("#area").val());
			}else{
				console.log(data);
			}
		});
	}
}

function registrarCargo(){

	if($("#area").length){
		var c = prompt("Escribe el nombre del cargo");
		if(c == null || c == ""){
			return;
		}
		$.post(baseURL("Ajax/RegistrarCargo"),{area:$("#area").val(),cargo:c},
		function(data){
			if(data == ""){
				alert("Cargo registrado");
				listarCargos($("#area").val(),$("#cargo").val());
			}else{
				console.log(data);
			}
		});
	}
}

function esta(element_id){
if(document.getElementById(element_id) != null){
	return true;
}

return false;
}
/*
*/