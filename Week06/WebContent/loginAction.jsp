<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
	%>
	
	<jsp:useBean id="member" class="Week6.user" scope="request"/>
	<jsp:setProperty property="id" name="member" value="<%=id%>"/>
	<jsp:setProperty property="password" name="member" value="<%=password%>"/>
	<jsp:setProperty property="name" name="member" value="<%=name%>"/>
	<jsp:setProperty property="email" name="member" value="<%=email%>"/>

	<table border="1">
		<tr><td>아이디</td><td><jsp:getProperty property="id" name="member"/></td><td>비밀번호</td><td><jsp:getProperty property="password" name="member"/></td></tr>
		<tr><td>이름</td><td><jsp:getProperty property="name" name="member"/></td><td>이메일</td><td><jsp:getProperty property="email" name="member"/></td></tr>
	</table>
</body>
</html>