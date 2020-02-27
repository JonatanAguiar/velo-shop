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
	<c:forEach items="${listaFinalizada}" var="produto">
		${produto.nome }
		${produto.quantidade }
	</c:forEach>

</table>

</body>
</html>