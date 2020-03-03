<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- import header -->
<c:import url="comum/header.jsp" />
<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />

<section class="new-arrivals">

<div class="container">
${pedido.cliente.nome}
${pedido.dataEHora}
<br>
<c:forEach items="${pedido.itensDoPedido}" var="produto">
${produto.quantidade} ${produto.nome} ${produto.valor}
<br>
</c:forEach>
Valor Total: ${pedido.valorTotal} <a href="index?acao=ProdutoLista"><button
				class="btn-cart btn-finaliza">OK!</button></a>
	</div>


</section>
</body>
</html>