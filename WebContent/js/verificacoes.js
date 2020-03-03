function verificaCPF(msg) {
	window.alert(msg);
}

$('#btn-finaliza').click(function(event) {	
	var cpf = $("#cpf").val();

	var data = "cpf=" + cpf;
	var res;

	var url = "http://localhost:8080/velo-shop/clientes";

	$.get(url, // Required URL of the page on server
	data, function(response, status) {
		
		if (status == "success") {
			res = jQuery.parseJSON(response);
			if (res == null) {
				alert("CPF nao cadastrado, digite novamente");
			}else{
				$('#finaliza-compra').submit();
			}

		}
	});

});
