
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- import header -->
<c:import url="comum/header.jsp" />
<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />


<section class="new-arrivals">
	<div class="container body-content">
		<div class="section-header">
			<h2>Carrinho de Compras</h2>

		</div>
		<!--/.section-header-->
		<c:if test="${empty carrinho}">
			<c:set var="absolute" value="absolute" />
			<div class="row carrinho-vazio" id="absolute">
				<h3>Seu carrinho está vazio!</h3>
				<p>
					<button class="btn-cart btn-produto"
						onclick="window.location.href='index?acao=ProdutoLista'">Comprar
						produtos</button>
				</p>
			</div>
		</c:if>
		<c:if test="${!empty carrinho}">
			<div class="row desc-produto">
				<form action="index?acao=FinalizarPedido" method="POST">
					<div class="row">
						<table class="table table-produtos">
							<thead>
								<tr>
									<th scope="col-sm-2" colspan="2">Produto</th>
									<th scope="col-sm-2">Quantidade</th>
									<th scope="col-sm-2"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${carrinho}" var="produto">

									<tr>
										<th><img class="img-produto"
											src='<c:url value="img/${produto.imagem}"></c:url>'
											alt="${produto.nome}"></th>
										<th><input type="hidden" id="id" name="id"
											value="${produto.id}" /> <input name="nome"
											value="${produto.nome}" disabled class="input-nome" /></th>
										<td><input name="quantidade:${produto.id}" type="number"
											value="${produto.quantidade}" min="1" max="100"
											id="quantidade"></td>
										<td><a
											href="index?acao=RemoverDoCarrinho&id=${produto.id}">Remover</a></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-sm-4">
							<button type="submit" class="btn-cart btn-produto"
								onclick="verificaSeTemAlgoNoCarrinho()">Finalizar
								Compra</button>
						</div>
					</div>
				</form>
			</div>
		</c:if>
	</div>
</section>



<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<!-- import rodapé -->
<c:import url="comum/rodape.jsp" />

<script type="text/javascript"
	src='<c:url value="js/position-footer.js"></c:url>'></script>
</div>
</body>
</html>