<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String pet = request.getParameter("pet"); %>
	<h3>당신이 좋아하는 동물은 <%=pet%>입니다.</h3>
</body>
</html>