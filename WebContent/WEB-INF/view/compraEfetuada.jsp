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

${pedido.cliente.nome}
${pedido.dataEHora}
<br>
<c:forEach items="${pedido.itensDoPedido}" var="produto">
${produto.quantidade} ${produto.nome} ${produto.valor}
<br>
</c:forEach>
Valor Total: ${pedido.valorTotal}

</body>
</html>