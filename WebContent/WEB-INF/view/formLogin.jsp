
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- import header -->
<c:import url="comum/header.jsp" />
<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form method="POST" action="${link}">

			Nome: <input type="text" name="nome" />
			CPF: <input type="password" name="cpf" />
			<input type="hidden" name="acao" value="Login" />
			<input type="submit" />

		</form>
	</div>

</body>
</html>