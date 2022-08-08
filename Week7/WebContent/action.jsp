<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String path = request.getRealPath("fileUpload");
	
	MultipartRequest mr = new MultipartRequest(request, path, 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());

	String title = mr.getParameter("title");
	out.println("<h3>" + title  + "</h3>");
	
	Enumeration files = mr.getFileNames();
	String name = (String) files.nextElement();
	
	String filename = mr.getFilesystemName(name);
	String original = mr.getOriginalFileName(name);
	
	out.println("실제 파일 이름: " + original + "<br>");
	out.println("저장 파일 이름: " + filename + "<br>");
	 %>
</body>
</html>