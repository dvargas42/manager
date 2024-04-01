<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/entrada" var="linkEntrada"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="logoutParcial.jsp" />
	
	<form action="${linkEntrada}" method="post">
		Nome: <input type="text" name="nome" />
		Data de abertura: <input type="text" name="data" />
		<input type="hidden" name="acao" value="NovaEmpresa"/>
		<button type="submit">Cadastrar</button>
	</form>
</body>
</html>