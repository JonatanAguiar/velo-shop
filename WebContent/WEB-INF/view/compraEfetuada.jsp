<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- import header -->
<c:import url="comum/header.jsp" />
<!-- import cabeçalho -->
<c:import url="comum/cabecalho.jsp" />

<section class="new-arrivals">

<div class="container">
${pedido.cliente.nome}
<br>
<c:forEach items="${listaDeProdutos}" var="produto">
${produto.quantidade} ${produto.nome} <fmt:formatNumber value="${produto.valor}" type="currency" maxFractionDigits="2"></fmt:formatNumber>
<br>
</c:forEach>
Valor Total: <fmt:formatNumber value="${pedido.valorTotal}" type="currency" maxFractionDigits="2"></fmt:formatNumber> <a href="index?acao=ProdutoLista"><button
				class="btn-cart btn-finaliza">OK!</button></a>
	</div>


</section>
</body>
</html>