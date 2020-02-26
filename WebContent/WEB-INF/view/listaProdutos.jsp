<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<th scope="col">Imagem</th>
				<th scope="col">Nome</th>
				<th scope="col">Descrição</th>
				<th scope="col">Valor</th>
				<th scope="col">Adicionar ao carrinho</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listaDeProdutos}" var="produto">
				<tr>
					<th scope="row"></th>
					<th><a href="index?acao=ProdutoInfo&id=${produto.id}">${produto.nome}</a></th>
					<td>${produto.descricao}</td>
					<td>${produto.valor}</td>
					<td>Adicionar</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>