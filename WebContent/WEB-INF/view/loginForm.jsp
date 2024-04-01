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
	<form action="${linkEntrada}" method="post">
		Login: <input type="text" name="login" />
		Data de abertura: <input type="password" name="senha" />
		<input type="hidden" name="acao" value="Login"/>
		<button type="submit">Login</button>
	</form>
</body>
</html>