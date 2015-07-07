$(document).ready(function(){

	$(".slider #1").show("fade",1000);
	$(".slider #1").delay("4000").hide("slide",{direction:"left"},1000);

	var sc = $(".slider img").size();
	console.log(sc);
	var cont = 2;

	setInterval(function(){

		$(".slider #"+cont).show("slide",{direction:"left"},1000);
		$(".slider #"+cont).delay("4000").hide("slide",{direction:"left"},1000);
		
		if(cont == sc){
			cont = 1;
		}else{
			cont = cont + 1;
		}
	},6000);
});