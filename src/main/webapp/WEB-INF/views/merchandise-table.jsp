<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Gerpro</title>
		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="page">
			<div class="header">
				<div class="logo">
<%--					<a href="index.jsp" title="Gerpro">--%>
<%--						<img src="public/assets/images/logo.png" alt="Gerpro" />--%>
<%--					</a>--%>
				</div>
				<div class="header_menu">
					<ul>
						<li><a href="/add-merchandise" title="Adicionar">Adicionar mercadorias</a></li>
						<li><a href="/merchandise-table" title="Ver">Ver mercadorias</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="container">
			  	<h2>Mercadorias cadastradas</h2>
			 	<p>Veja abaixo todas as mercadorias já inseridas na plataforma.</p>            
			  	<table class="table table-hover">
			    	<thead>
				      	<tr>
				      		<th>Id</th>
				        	<th>Código da mercadoria</th>
				        	<th>Tipo da mercadoria</th>
				        	<th>Nome da mercadoria</th>
				        	<th>Quantidade</th>
				        	<th>Preço</th>
				        	<th></th>
				      	</tr>
			    	</thead>
					<tbody>
						<c:forEach items="${products}" var="product">
							<tr>
								<td>${product.id}</td>
								<td>${product.code}</td>
								<td>${product.type}</td>
								<td>${product.name}</td>
								<td>${product.quantity}</td>
								<td>${product.price}</td>
								<td>
									<form:form action="delete-product" modelAttribute="product" method="post">
										<form:input type="hidden" name="product_id" value="${product.id}" path="id" />
										<form:button class="delete_item_button">Excluir</form:button>
									</form:form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
			  </table>
			</div>
		</div>
	</body>
</html>
<%@ include file="common/default.jspf"%>
<%@ include file="common/table.jspf"%>