function verificaCPF(msg){
	window.alert(msg);
}

function pegaDadosCliente(cpf){
	var xmlhttp = new XMLHttpRequest();

	var url = "http://localhost:8080/velo-shop/cliente/cpf/"+cpf;
	xmlhttp.open("GET", url);
	var array = [];
	
	xmlhttp.addEventListener("load", function() {
		var resposta = xmlhttp.responseText;
		var lista = JSON.parse(resposta);
		lista.forEach(function(x) {
			array.push(x);
		});
	});

	xmlhttp.send();

	return array;
	
}