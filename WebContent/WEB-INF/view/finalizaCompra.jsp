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
	<a href="index?acao=ProdutoLista">Lista de Produtos</a> Finaliza Compra

	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Quantidade</th>
				<th>Valor</th>
				<th>Valor total</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="total" value="${0}"/>
			<c:forEach items="${listaFinalizada}" var="produto">
				<tr>
					<td>${produto.nome }</td>
					<td>${produto.quantidade }</td>
					<td>${produto.valor }</td>
					<td><c:out value="${produto.valor * produto.quantidade }"></c:out> </td>
				</tr>
				<c:set var="total" value="${total + produto.valor * produto.quantidade}" />
			</c:forEach>
		</tbody>
	</table>
	Total: ${total}
	<form action="index?acao=FinalizaCompra" method="POST">
		<input name="cpf">
		<button type="submit">Finalizar</button>
	</form>
</body>
</html>