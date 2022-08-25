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
		String filename = request.getParameter("filename");
	%>
	
	<table>
		<caption>업로드 파일</caption>
		<tr>
			<th>텍스트</th>
			<td><a href="fileView.jsp?filename=<%= filename%>">텍스트파일 보기</td>
		</tr>
		<tr>
			<th>이미지</th>
			<td><a href="imageView.jsp?filename=<%= filename%>">이미지파일 보기</td>
		</tr>
		<br>
		<button onclick="location.href='uploadForm.jsp'">돌아가기</button>
	</table>
</body>
</html>