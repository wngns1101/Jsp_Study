<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookie = new Cookie("name", "홍길동");
	response.addCookie(cookie);
%>
<h1>
	<%=cookie.getName() %> 쿠키의 값 = <%=cookie.getValue() %>
</h1>
</body>
</html>