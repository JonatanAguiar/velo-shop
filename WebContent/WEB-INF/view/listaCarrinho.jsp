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
	Carrinho de compras :)
	<div class="container">
		<table>
			<thead>
				<tr>
					<th>Nome</th>
					<th>Remover</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${carrinho}" var="produto">
					<tr>
						<td><input type="hidden" name="id" value="${produto.id}"/>${produto.nome}</td>
						<td><input name="quantidade" type="number" value="1" min="1"></td>
						<td><a href="index?acao=RemoverDoCarrinho&id=${produto.id}">Remover</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="index?acao=FinalizarPedido">Finalizar Pedido</a>
	</div>
</body>
</html>