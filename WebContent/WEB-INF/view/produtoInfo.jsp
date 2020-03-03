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
			<h2>${produto.nome}</h2>
		</div>
		<!--/.section-header-->
		<div class="row desc-produto">
			<div class="col-sm-4">
				<img src='<c:url value="img/${produto.imagem}"></c:url>'
					alt="${produto.nome}">
			</div>
			<div class="col-sm-8">
				<p>
					<b>Valor:</b><fmt:formatNumber value="${produto.valor}" type="currency" maxFractionDigits="2"></fmt:formatNumber>
				</p>
				<p>
					<b>Descrição:</b> ${produto.descricao}
				</p>
				<p>
					<button class="btn-cart btn-produto"
						onclick="window.location.href='index?acao=AdicionaAoCarrinho&id=${produto.id}'">Adicionar
						ao carrinho</button>
				</p>
			</div>
		</div>

	</div>
</section>

<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<!-- import rodapé -->
<c:import url="comum/rodape.jsp" />
</body>
</html>