<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gerpro</title>
    <link rel="stylesheet" type="text/css" href="public/assets/css/default.css">
    <link rel="stylesheet" type="text/css" href="public/assets/css/register.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src='https://igorescobar.github.io/jQuery-Mask-Plugin/js/jquery.mask.min.js'></script>
    <script src="public/assets/js/jquery.validate.js" type="text/javascript"></script>
    <script src="public/assets/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="https://raw.githubusercontent.com/danpalmer/jquery.complexify.js/master/jquery.complexify.js"></script>
    <script src="public/assets/js/jquery-rules.js"></script>
</head>
<body>
<div class="page">
    <div class="logo">
        <%--		<a href="index.jsp" title="Gerpro">--%>
        <%--			<img src="public/assets/images/grey-logo.png" width="150px" alt="Gerpro" />--%>
        <%--		</a>--%>
    </div>
    <div class="top_texts">
        <h1>Editar mercadoria</h1>
    </div>
    <div class="register_form">
        <form:form action="edit-product" method="post" modelAttribute="product" id="form">
            <div class="control-group rf_input">
                <form:label class="string" for="code" path="code">Código da mercadoria</form:label>
                <form:input class="string" type="text" name="code" id="code" path="code"/>
            </div>
            <div class="control-group rf_input">
                <form:label class="string" for="merchandiseType" path="type">Tipo da mercadoria</form:label>
                <input:input class="string" type="text" name="type" id="merchandiseType" path="type"/>
            </div>
            <div class="control-group rf_input">
                <form:label class="string" for="name" path="name">Nome da mercadoria</form:label>
                <input:input class="string" type="text" name="name" id="name" path="name"/>
            </div>
            <div class="control-group rf_input">
                <form:label class="string" for="quantity" path="quantity">Quantidade</form:label>
                <input:input class="string" type="text" name="quantity" id="quantity" path="quantity"/>
            </div>
            <div class="control-group rf_input">
                <form:label class="string" for="price" path="price">Preço</form:label>
                <input:input class="string" type="text" name="price" id="price" path="price"/>
            </div>
            <input:input class="string" type="hidden" name="id" id="id" path="id"/>
            <input type="hidden" name="success" />
            <div class="rf_input submit" id="rf_input_submit">
                <form:button id="submit" name="register">Editar</form:button>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>
<%@ include file="common/default.jspf"%>
<%@ include file="common/register.jspf"%>
<%@ include file="common/jquery.validate.jspf"%>
<%@ include file="common/jquery-rules.jspf"%>
<%@ include file="common/jquery.complexify.jspf"%>
<%@ include file="common/jquery.mask.min.jspf"%>