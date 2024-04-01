<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/entrada" var="linkEntrada" />


<html>
<body>
	<c:import url="logoutParcial.jsp" />
	
	<form action="${linkEntrada}?acao=AlteraEmpresa" method="post">

		<input type="hidden" name="id" value="${empresa.id}"/>
		
		Nome: 
		<input type="text" name="nome" value="${empresa.nome}"/><br/><br/>
		
		Data de abertura:
		<input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/><br/><br/>
		
		<button type="submit">Salvar</button>-;
	</form>
</body>
</html>