
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- import header -->
<c:import url="comum/header.jsp" />
<script type="text/javascript" src="js/socoExplosivo.js"></script>
<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />


<section class="new-arrivals">
	<div class="container">
		<div class="section-header">
			<h2>Carrinho de Compras</h2>

		</div>
		<!--/.section-header-->
		<c:if test="${empty carrinho}">
			<div class="row carrinho-vazio">
				<h3>Seu carrinho est� vazio!</h3>
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
									<input type="hidden" id="id" name="id" value="${produto.id}" />

									<tr>
										<th><img class="img-produto"
											src='<c:url value="img/${produto.imagem}"></c:url>'
											alt="${produto.nome}"></th>
										<th><input name="nome" value="${produto.nome}" disabled
											class="input-nome" /></th>
										<td><input name="quantidade:${produto.id}" type="number"
											value="${produto.quantidade}" min="1" style="width: 50px"></td>
										<td><a
											href="index?acao=RemoverDoCarrinho&id=${produto.id}">Remover</a></td>

									</tr>
							</tbody>


							</c:forEach>
						</table>
						<div class="row">
							<div class="col-sm-4">
								<button type="submit" class="btn-cart btn-produto"
									onclick="verificaSeTaTop()">Finalizar Compra</button>
							</div>
						</div>
				</form>


			</div>
		</c:if>
	</div>
</section>


<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<!-- import rodap� -->
<c:import url="comum/rodape.jsp" />
</body>
</html>

<!--  
<body>
	<a href="index?acao=ProdutoLista">Lista de Produtos</a> 
	Carrinho de	compras :)
	<div class="container">
		<form action="index?acao=FinalizarPedido" method="POST">
			<c:forEach items="${carrinho}" var="produto">
				<input type="hidden" name="id" value="${produto.id}" />
				<input name="nome" value="${produto.nome}" disabled />
				<input name="quantidade:${produto.id}" type="number" value="${produto.quantidade}" min="1" style="width:50px">
				<a href="index?acao=RemoverDoCarrinho&id=${produto.id}">Remover</a>
				<br>
			</c:forEach>
			<div>
				<button type="submit">Finalizar Compra</button>
			</div>
		</form>
	</div>
</body>
</html> -->
<!-- 
	<a href="index?acao=ProdutoLista">Lista de Produtos</a> 
	Carrinho de	compras :)
	<div class="container">
		<form action="index?acao=FinalizarPedido" method="POST">
			<c:forEach items="${carrinho}" var="produto">
				<input type="hidden" id="id" name="id" value="${produto.id}" />
				<input name="nome" value="${produto.nome}" disabled />
				<input name="quantidade:${produto.id}" type="number" value="${produto.quantidade}" min="1" style="width:50px">
				<a href="index?acao=RemoverDoCarrinho&id=${produto.id}">Remover</a>
				<br>
			</c:forEach>
			<div>
				<button onclick="verificaSeTaTop()" type="submit">Finalizar Compra</button>
			</div>
		</form>
	</div>
</body>
</html> -->