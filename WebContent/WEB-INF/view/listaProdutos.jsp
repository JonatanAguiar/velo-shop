<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vitrine</title>
</head>
<body>
Lista de produtos provisória
<div class="container">
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Horário</th>
				<th scope="col">Origem</th>
				<th scope="col">Destino</th>
				<th scope="col">Escalas</th>
				<th scope="col">Avião</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listaDeProdutos}" var="voo">
				<tr>
					<th scope="row">${voo.dataEHora } </th>
					<th>${voo.rota.cidadeOrigem.nome}</th>
					<td>${voo.rota.cidadeDestino.nome}</td>
					<td>
					Lista de escalas
					</td>
					<td>${voo.aviao.nome} - ${voo.aviao.modelo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>