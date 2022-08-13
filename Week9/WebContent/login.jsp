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
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	
	if(id.equals(pw)){
		Cookie cookie = new Cookie("id", "admin");
		response.addCookie(cookie);
		out.println("로그인에 성공하였습니다.");
	}else{
		out.println("로그인에 실패했습니다.");
	}
%>
</body>
</html>