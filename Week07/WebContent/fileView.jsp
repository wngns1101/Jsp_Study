<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String fileName = request.getParameter("filename");
	String path = "/upload/" + fileName;
	String real = application.getRealPath(path);
	BufferedReader br = new BufferedReader(new FileReader(real));
%>

<h3>파일 내용 보기</h3>
파일명 = <%=fileName %><br>
소스 패스 = <%=path %><br><br>
</body>
</html>