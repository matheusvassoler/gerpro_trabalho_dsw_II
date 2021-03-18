<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Plataforma de negocia��o de mercadorias</title>
		<link rel="stylesheet" href="public/assets/css/index.css" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	</head>
	<body>
		<div class="page">
			<div class="box_one">
				<div class="header">
					<div class="logo">
						<a href="index.jsp" title="Gerpro">
<%--							<img src="public/assets/images/logo.png" alt="Gerpro" />--%>
<%--							<img src="<%=request.getContextPath()%>/public/assets/images/logo.png" alt="Gerpro" />--%>
						</a>
					</div>
					<div class="header_menu">
						<ul>
							<li><a href="/add-merchandise" title="Adicionar">Adicionar mercadorias</a></li>
							<li><a href="/merchandise-table" title="Ver">Ver mercadorias</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<div class="global_content">
					<h1>Plataforma digital de controle de estoque</h1>
					<p>Gerpro, a ferramenta na qual ajuda administrar o estoque do seu neg�cio</p>
					<a href="/merchandise-table" title="Entrar">Entrar na plataforma</a>
				</div>
			</div>
		</div>
	</body>
</html>
<%@ include file="common/index.jspf"%>
<%@ include file="common/default.jspf"%>
