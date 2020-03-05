<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- import header -->
<c:import url="comum/header.jsp" />

<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />


<section class="new-arrivals">
	<div class="container">
		<c:forEach items="${listaDePedidos}" var="pedido">
			${pedido.dataEHora}
			${pedido.valorTotal}
			<br>
			Lista de produtos do pedido:
			
			<br>
		</c:forEach>
	</div>
</section>