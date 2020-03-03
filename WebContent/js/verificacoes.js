function verificaCPF(msg) {
	window.alert(msg);
}


$('#finaliza-compra').submit(function(event) {
	
	var cpf = $("#cpf").val();
	var xmlhttp = new XMLHttpRequest();

	var url = "http://localhost:8080/velo-shop/clientes?cpf=" + cpf;
	xmlhttp.open("GET", url);
	//var array = [];

	xmlhttp.addEventListener("load", function() {
		
		var resJson = xmlhttp.responseText;
		var resposta = JSON.parse(resJson);
		
		if (resposta == null){
			alert("CPF nao cadastrado, tente novamente!");
			event.preventDefault();
			
		}
	});
	xmlhttp.send();
	return false;

});
