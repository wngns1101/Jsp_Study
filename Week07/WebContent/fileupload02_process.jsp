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
	MultipartRequest multi = new MultipartRequest(request, "/Users/juhoonlee/Desktop/upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
	
	String name1 = multi.getParameter("name1");
	String subject1 = multi.getParameter("subject1");
	
	String name2 = multi.getParameter("name2");
	String subject2 = multi.getParameter("subject2");
	
	String name3 = multi.getParameter("name3");
	String subject3 = multi.getParameter("subject3");
	
	Enumeration files = multi.getFileNames();
	
	String file1 = (String)files.nextElement();
	String filename1 = multi.getFilesystemName(file1);

	String file2 = (String)files.nextElement();
	String filename2 = multi.getFilesystemName(file2);
	
	String file3 = (String)files.nextElement();
	String filename3 = multi.getFilesystemName(file3);
%>

	<table border="1">
		<tr>
		<th>이름</th>
		<th>제목</th>
		<th>파일</th>
		</tr>
		<%
		out.print("<tr><td>"+file1+"</td>");
		out.print("<td>"+subject1+"</td>");
		out.println("<td>"+filename1+"</td></tr>");
		out.print("<tr><td>"+file2+"</td>");
		out.print("<td>"+subject2+"</td>");
		out.println("<td>"+filename2+"</td></tr>");
		out.print("<tr><td>"+file3+"</td>");
		out.print("<td>"+subject3+"</td>");
		out.println("<td>"+filename3+"</td></tr>");
		%>
	</table>
</body>
</html>