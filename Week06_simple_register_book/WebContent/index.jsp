<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 도서 등록 화면 </h3>
	<br>
	<form action="bookInfo.jsp">
		<table border="1">
			<tr><td>도서 코드<td><td colspan="2"><input type="text" name="bookCode"></td></tr>
			<tr><td>도서 제목<td><td colspan="2"><input type="text" name="bookName"></td></tr>
			<tr><td>도서 저자<td><td colspan="2"><input type="text" name="bookWriter"></td></tr>
			<tr><td><input type="submit" value="등록"></td></tr>
		</table>
	</form>
</body>
</html>