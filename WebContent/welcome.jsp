<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="WEB-INF/view/comum/header.jsp" />
<c:import url="WEB-INF/view/comum/cabecalho.jsp" />
<c:import url="WEB-INF/view/comum/importJS.jsp" />
<c:set var="absolute" value="absolute" />
<section id="new-arrivals" class="new-arrivals" >
	<div class="container" id="absolute">
		<div class="section-header">
			<h2>Bem vindo ao VeloShop</h2>
			<img src='<c:url value="img/veloweb.jpg"></c:url>' id="logoVeloWeb" >
		</div>
		

	</div>
</section>
<c:import url="WEB-INF/view/comum/rodape.jsp" />
<script type="text/javascript"
	src='<c:url value="js/position-footer.js"></c:url>'></script>
</body>
</html>