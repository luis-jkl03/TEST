
var init = function(){
	console.log("Entro a la funcion init");
	
	
	//Add event on button
//	var buttonElement = document.getElementById("button");
//	buttonElement.addEventListener("click", accion);
}

var accion = function(){
	var val1 = 5;
	var val2 = 6;
	var res = val1+val2;
	console.log("suma = "+res)
	
	var input = document.getElementById("input1");
	var label = document.getElementById("label");
	label.innerHTML=res;
}

window.onload = function(){
	console.log("Termino de cargar la pagina");
	init()
}