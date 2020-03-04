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
						<p>
							<b>Cliente: </b> ${pedido.cliente.nome}
						</p>
						<p>
							<b>Data/Hora: </b>
							<fmt:parseDate value="${pedido.dataEHora}"
								pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
							<fmt:formatDate pattern="dd/MM/yyyy HH:mm"
								value="${parsedDateTime}" />
						</p>
						<p>
							<b>Valor Total: </b>
							<fmt:formatNumber value="${pedido.valorTotal}" type="currency"
								maxFractionDigits="2"></fmt:formatNumber>
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

	</div>
</section>
<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<!-- import rodapido-->
<c:import url="comum/rodape.jsp" />

<c:set var="valido" value="${false}" />
<c:if test="${!empty pedido}">
	<c:set var="valido" value="${true}" />
</c:if>


<script>
	$(document).ready(function() {
		if(${valido}){
			$('#myModal').modal('show');
		}
	});
</script>
</body>

</html>




