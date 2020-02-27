<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- import header -->
<c:import url="comum/header.jsp" />

<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />

<!--  

Lista de produtos provisória
<div class="container">
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Imagem</th>
				<th scope="col">Nome</th>
				<th scope="col">Descrição</th>
				<th scope="col">Valor</th>
				<th scope="col">Adicionar ao carrinho</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listaDeProdutos}" var="produto">
				<tr>
					<th scope="row"></th>
					<th><a href="index?acao=ProdutoInfo&id=${produto.id}">${produto.nome}</a></th>
					<td>${produto.descricao}</td>
					<td>${produto.valor}</td>
					<td><a href="index?acao=AdicionaAoCarrinho&id=${produto.id}">Adicionar</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<a href="index?acao=CarrinhoLista">Carrinho de compras</a>-->
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
								<img src='<c:url value="img/${produto.imagem}"></c:url>'
									alt="${produto.nome}">
								<div class="single-new-arrival-bg-overlay"></div>

								<div class="new-arrival-cart">
									<p>
										<span class="lnr lnr-cart"></span> <a href="index?acao=AdicionaAoCarrinho&id=${produto.id}">Adicionar
											ao carrinho</a>
									</p>
									<p class="arrival-review pull-right">
										<a href="index?acao=ProdutoInfo&id=${produto.id}"><span class="lnr lnr-frame-expand"></span></a>
									</p>
								</div>
							</div>
							<h4>
								<a href="index?acao=ProdutoInfo&id=${produto.id}">${produto.nome}</a>
							</h4>
							<p class="arrival-product-price">R$ ${produto.valor}</p>
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



<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<!-- import rodapé -->
<c:import url="comum/rodape.jsp" />
</body>
</html>