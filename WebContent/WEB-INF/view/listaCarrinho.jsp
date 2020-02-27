<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="index?acao=ProdutoLista">Lista de Produtos</a> 
	Carrinho de	compras :)
	<div class="container">
		<form action="index?acao=FinalizarPedido" method="POST">
			<c:forEach items="${carrinho}" var="produto">
				<input type="hidden" name="id" value="${produto.id}" />
				<input name="nome" value="${produto.nome}" disabled />
				<input name="quantidade:${produto.id}" type="number" value="1" min="1" style="width:50px">
				<a href="index?acao=RemoverDoCarrinho&id=${produto.id}">Remover</a>
				<br>
			</c:forEach>
			<div>
				<button type="submit">Finalizar Compra</button>
			</div>
		</form>
	</div>
</body>
</html>