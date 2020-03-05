
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="index?acao=Login" var="link" />
<!-- import header -->
<c:import url="comum/header.jsp" />

<!-- import cabecalho -->
<c:import url="comum/cabecalho.jsp" />

<section class="new-arrivals">



	<div class="container">
		<div class="form-group d-flex justify-content-center section-header">
			<h2>Login</h2>
		</div>


		<form action="${link}" method="POST" name="formulario">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-4 hid">
					<div class="row">
						<label>Nome</label> <input type="text" name="nome" id="nome"
						class="form-control " placeholder="Digite seu primeiro nome" required>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 col-sm-offset-4 hid margin">
					<div class="row">
						<label>CPF </label> <input type="password" name="cpf" id="cpf"
						class="form-control" placeholder="Digite seu CPF" required>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 col-sm-offset-5 hid">
					<div class="row">
						<button class="btn-cart btn-produto">Logar</button>
					</div>
				</div>
			</div>
			
		</form>
	</div>




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