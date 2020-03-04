var url = "http://localhost:8080/velo-shop/clientes";

var listaDeClientes;

$.post(url, function(response, status) {
	listaDeClientes = response;
});

$('#btn-finaliza').click(function(event) {

	var cpf = $("#cpf").val();

	var cpfValido = false;

	for (var i = 0; i < listaDeClientes.length; i++) {
		if (listaDeClientes[i].cpf == cpf) {
			cpfValido = true;
		}
	}

	if (cpfValido) {
		//alert("Compra efetuada com sucesso!");
		$('#finaliza-compra').submit();
	} else {
		alert("Cliente invalido ou nao existente.");
	}
});