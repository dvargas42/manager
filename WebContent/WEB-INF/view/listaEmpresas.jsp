<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:url value="/entrada" var="linkEntrada" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty novaEmpresa}">
		Empresa ${novaEmpresa.nome}, aberta em <fmt:formatDate value="${novaEmpresa.dataAbertura}" pattern="dd/MM/yyyy"/>: cadastrada com sucesso! <br/><br/>
	</c:if>
	
	Lista de empresas <br/>
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
		<fmt:formatDate value=""/>
			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
				<a href="${linkEntrada}?acao=MostraEmpresa&id=${empresa.id}">editar</a>
				<a href="${linkEntrada}?acao=RemoveEmpresa&id=${empresa.id}">remover</a>
			</li>
			
		</c:forEach>
	</ul>
</body>
</html>