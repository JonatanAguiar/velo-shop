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
Carrinho de compras :)
<ul>
<c:forEach items="${carrinho}" var="produto">
<li>
	${produto.nome }
</li>
</c:forEach>
</ul>
</body>
</html>