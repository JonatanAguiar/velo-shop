<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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