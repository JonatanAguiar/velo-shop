<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- import header -->
<c:import url="comum/header.jsp" />

<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />

<!--new-arrivals start -->
<section id="new-arrivals" class="new-arrivals">
	<div class="container">
		<div class="section-header">
			<h2></h2>
		</div>
		<!--/.section-header-->
		<div class="new-arrivals-content">
			<div class="row">

				<!--  -->
				<c:forEach items="${listaDeProdutos}" var="produto">
					<div class="col-md-3 col-sm-4">
						<div class="single-new-arrival">
							<div class="single-new-arrival-bg">
								<a href="index?acao=ProdutoInfo&id=${produto.id}"> <img
									src='<c:url value="img/${produto.imagem}"></c:url>'
									alt="${produto.nome}"> </
								</a>
								<div class="new-arrival-cart">
									<p>
										<span class="lnr lnr-cart"></span> <a
											href="index?acao=AdicionaAoCarrinho&id=${produto.id}">Adicionar
											ao carrinho</a>
									</p>
									<p class="arrival-review pull-right">
										<a href="index?acao=ProdutoInfo&id=${produto.id}"><span
											class="lnr lnr-frame-expand"></span></a>
									</p>
								</div>
							</div>
							<h4>
								<a href="index?acao=ProdutoInfo&id=${produto.id}">${produto.nome}</a>
							</h4>
							<p class="arrival-product-price">
								<fmt:formatNumber value="${produto.valor}" type="currency"
									maxFractionDigits="2"></fmt:formatNumber>
							</p>
						</div>
					</div>
				</c:forEach>
				<!--  -->

			</div>
		</div>
	</div>
	<!--/.container-->

</section>
<!--/.new-arrivals-->
<!--new-arrivals end -->

<section class="modal">
	<div class="container">

		<h2>Basic Modal Example</h2>
		<br> <br> <br> <br>
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModal">Open Modal</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Compra efetuada com sucesso!</h4>
					</div>
					<div class="modal-body">
						<p>Cliente: ${pedido.cliente.nome}</p>
						<p>Data / Hora: ${pedido.dataEHora}</p>
						<table class="table table-bordered">
							<tr>
								<td>Produto</td>
								<td>Quantidade</td>
								<td>Valor</td>
							</tr>

							<c:forEach items="${pedido.itensDoPedido}" var="produto">
								<tr>
									<td>${produto.quantidade}</td>
									<td>${produto.nome}</td>
									<td><fmt:formatNumber value="${produto.valor}"
											type="currency" maxFractionDigits="2"></fmt:formatNumber></td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="2">Valor Total</td>
								<td><fmt:formatNumber value="${pedido.valorTotal}"
										type="currency" maxFractionDigits="2"></fmt:formatNumber></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

	</div>
</section>



<c:if test="${empty pedido}">
	<h2>oi</h2>
</c:if>
<c:if test="${empty listaDeProduto}">
	<h2>oiee</h2>
	<h2>${pedido.cliente.nome}</h2>
</c:if>

<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<!-- import rodapé -->
<c:import url="comum/rodape.jsp" />


</body>
</html>