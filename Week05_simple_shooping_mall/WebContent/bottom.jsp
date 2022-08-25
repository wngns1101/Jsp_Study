<%@ page import="java.time.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.bottom{
		text-align: center;
	}
</style>
<body>
	<div class="bottom">
	<h3>Welcome to Web Market!</h3>
	<%
		LocalDate now = LocalDate.now();
		LocalTime time = LocalTime.now();
	%>
	현재 접속 시간: <%=now%> <%=time %>
	<hr>
	Copyright c Lee Juhoon All Rights Reserved.
	</div>
</body>
</html>