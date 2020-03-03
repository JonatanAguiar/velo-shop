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
		alert("Compra efetuada com sucesso!");
		$('#finaliza-compra').submit();
	} else {
		alert("Cliente invalido ou nao existente.");
	}
});

// $('#btn-finaliza').click(function(event) {
// var cpf = $("#cpf").val();
//
// var data = "cpf=" + cpf;
// var res;
//
// var url = "http://localhost:8080/velo-shop/clientes";
//
// $.get(url, // Required URL of the page on server
// data, function(response, status) {
//		
// if (status == "success") {
// res = jQuery.parseJSON(response);
// if (res == null) {
// alert("CPF nao cadastrado, digite novamente");
// }else{
// $('#finaliza-compra').submit();
// }
//
// }
// });
//
// });
