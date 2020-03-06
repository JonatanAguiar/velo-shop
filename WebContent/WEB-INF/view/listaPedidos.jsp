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
		<div class="section-header">
			<h2>Meus Pedidos</h2>
		</div>
		<div class="accordion margin" id="myAccordion">
			<c:set var="cont" value="${0}" />
			<c:forEach items="${listaDePedidos}" var="pedido">
				<c:set var="cont" value="${cont + 1}" />

				<div class="card">
					<div class="card-header" id="heading${cont}">
						<h4 class="mb-0">
							<button type="button" class="font-button" data-toggle="collapse"
								data-target="#collapse${cont}">
								<span class="lnr lnr-plus-circle"></span> <b>Pedido:</b> ${pedido.id} -
								<fmt:parseDate value="${pedido.dataEHora}"
									pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
								<fmt:formatDate pattern="dd/MM/yyyy HH:mm"
									value="${parsedDateTime}" />
								-
								<b><fmt:formatNumber value="${pedido.valorTotal}" type="currency"
									maxFractionDigits="2"></fmt:formatNumber></b>
								- <span class="status" ><span class="lnr lnr-checkmark-circle"></span> Status: Aprovado</span>
							</button>
						</h4>
					</div>
					<div id="collapse${cont}" class="collapse"
						aria-labelledby="heading${cont}" data-parent="#myAccordion">
						<div class="card-body">
							<table class="table table-bordered small-font">
								<thead>
									<tr>
										<th scope="col" class="">Produtos</th>
										<th scope="col" class="">Quantidade</th>
										<th scope="col" class="">Valor</th>
										<th scope="col" class="">Total</th>

									</tr>
								</thead>
								<tbody>

									<c:forEach items="${pedido.itensDoPedido}" var="produto">
										<tr>
											<th>${produto.descricao}</th>
											<td>${produto.quantidade}</td>
											<td><fmt:formatNumber value="${produto.valor}"
													type="currency" maxFractionDigits="2"></fmt:formatNumber></td>
											<td><fmt:formatNumber
													value="${produto.valor * produto.quantidade }"
													type="currency" maxFractionDigits="2"></fmt:formatNumber></td>
										</tr>
										
									</c:forEach>
									<th>Total da Compra</th>
									<td colspan="3"><fmt:formatNumber
											value="${pedido.valorTotal}" type="currency"
											maxFractionDigits="2"></fmt:formatNumber></td>

								</tbody>
							</table>
						</div>
					</div>
			</c:forEach>
		</div>
	</div>
</section>
<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
.bs-example {
	margin: 20px;
}
</style>
<!-- import rodapido-->
<c:import url="comum/rodape.jsp" />
</div>
</body>

</html>
