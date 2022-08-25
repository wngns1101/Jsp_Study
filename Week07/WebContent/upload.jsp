<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.File " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	
	int max = 1024 * 1024 * 10;
	
	MultipartRequest mr = new MultipartRequest(request, "/Users/juhoonlee/Desktop/upload", max, "utf-8", new DefaultFileRenamePolicy());
	
	String title = mr.getParameter("title");
	String writer = mr.getParameter("writer");
	String filename = mr.getFilesystemName("file");
	String original = mr.getOriginalFileName("file");
%>

	<h3>파일 업로드 결과</h3>
	제목 : <%=title %><br>
	작성 : <%=writer %><br>
	파일명 : <%=filename %><br>
	파일원본명 : <%=original %><br>
	
	<form action="uploadViewForm.jsp" method="post">
		<input type="hidden" name="filename" value="<%=filename %>">
		<input type="submit" value="파일 보기">
	</form>
</body>
</html>