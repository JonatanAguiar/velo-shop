<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- import header -->
<c:import url="comum/header.jsp" />

<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />


<section class="new-arrivals">
	<div class="container">
		<div class="section-header">
			<h2>Finalizar compra</h2>

		</div>
		<!--/.section-header-->

		<div class="row col-sm-6 top-finaliza">
			<table class="table table-bordered table-finaliza">
				<thead>
					<tr>
						<th scope="col" class="col-xs-4 col-sm-4 col-md-4 col-lg-4">Produto</th>
						<th scope="col" class="col-xs-2 col-sm-2 col-md-2 col-lg-2">Quantidade</th>
						<th scope="col" class="col-xs-2 col-sm-2 col-md-2 col-lg-2">Valor</th>
						<th scope="col" class="col-xs-2 col-sm-2 col-md-2 col-lg-2">Total</th>

					</tr>
				</thead>
				<tbody>
					<c:set var="total" value="${0}" />
					<c:forEach items="${listaFinalizada}" var="produto">
						<tr>
							<th>${produto.nome}</th>
							<td>${produto.quantidade}</td>
							<td>R$ ${produto.valor}</td>
							<td>R$ <c:out value="${produto.valor * produto.quantidade }"></c:out>
							</td>
						</tr>
						<c:set var="total"
							value="${total + produto.valor * produto.quantidade}" />
					</c:forEach>
					<th colspan="3">Total da Compra</th>
					<td>R$ ${total}</td>

				</tbody>
			</table>
		</div>
		<div class="col-sm-8 top-finaliza">
			<div class="form-finaliza row">

				<form action="index?acao=FinalizaCompra" method="POST" id="finaliza-compra">
					<div class="form-group col-md-6">
						<input type="text" class="form-control" required="required" id="cpf" name="cpf"
							placeholder="CPF do cliente">
						
					</div>
					
					<div class="form-group col-md-4">
						<!--<button id="btn-finaliza" class="btn-cart btn-finaliza">Finalizar Compra</button>-->
						<input type="button" id="btn-finaliza" class="btn-cart btn-finaliza" value="Finalizar compra" >
					</div>
					</form>
		
				
			</div>
		</div>

	</div>
</section>
<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<!-- import rodapé -->
<c:import url="comum/rodape.jsp" />
<script type="text/javascript" src='<c:url value="js/verificacoes.js"></c:url>'></script>
</body>
</html>

<!--  
<body>
	<a href="index?acao=ProdutoLista">Lista de Produtos</a> Finaliza Compra

	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Quantidade</th>
				<th>Valor</th>
				<th>Valor total</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="total" value="${0}"/>
			<c:forEach items="${listaFinalizada}" var="produto">
				<tr>
					<td>${produto.nome }</td>
					<td>${produto.quantidade }</td>
					<td>${produto.valor }</td>
					<td><c:out value="${produto.valor * produto.quantidade }"></c:out> </td>
				</tr>
				<c:set var="total" value="${total + produto.valor * produto.quantidade}" />
			</c:forEach>
		</tbody>
	</table>
	Total: ${total}
	<form action="index?acao=FinalizaCompra" method="POST">
		<input name="cpf">
		<button type="submit">Finalizar</button>
	</form>
</body>
</html> -->