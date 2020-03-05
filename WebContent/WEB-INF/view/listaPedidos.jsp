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
			<fmt:parseDate value="${pedido.dataEHora}"
								pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
							<fmt:formatDate pattern="dd/MM/yyyy HH:mm"
								value="${parsedDateTime}" />
			<br>
			Produtos:
			<ul>
				<c:forEach items="${pedido.itensDoPedido}" var="produto">
					<li>${produto.nome} - ${produto.descricao}</li>
				</c:forEach>
			</ul>
			Valor Total da Compra: <fmt:formatNumber value="${pedido.valorTotal}" type="currency" maxFractionDigits="2"></fmt:formatNumber>
			<br><br>
		</c:forEach>
	</div>
</section>