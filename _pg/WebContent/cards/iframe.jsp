<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% 
	session.setAttribute("id", "aaa");

%>
<title>Insert title here</title>
<style>
	.if{
		border: 1px solid black;
	}
</style>
</head>
<body>
	<iframe class="if" src="cards.jsp" width="1280" height="720" frameborder="0"></iframe>
</body>
</html>