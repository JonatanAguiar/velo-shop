<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="comum/header.jsp" />

<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />


<section class="new-arrivals">
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
<!-- import arquivos JS -->
<c:import url="comum/importJS.jsp" />
<!-- import rodapé -->
<c:import url="comum/rodape.jsp" />
<script type="text/javascript"
	src='<c:url value="js/verificacoes.js"></c:url>'></script>
</body>
</html>

<!--  
<section class="new-arrivals">

${pedido.cliente.nome}
${pedido.dataEHora}
<br>
<c:forEach items="${pedido.itensDoPedido}" var="produto">
${produto.quantidade} ${produto.nome} ${produto.valor}
<br>
</c:forEach>
Valor Total: ${pedido.valorTotal}


<a href="index?acao=ProdutoLista"><button class="btn-cart btn-finaliza">OK!</button></a>
</section> -->
<!-- Button trigger modal -->


<script>
	$('#myModal').on('shown.bs.modal', function() {
		$('#myInput').trigger('focus')
	});
</script>
</body>
</html>