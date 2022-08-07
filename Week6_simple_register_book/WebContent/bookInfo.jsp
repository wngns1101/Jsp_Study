<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="member" class="Week6.bookMember" scope="request"/>
	<jsp:setProperty property="bookCode" name="member"/>
	<jsp:setProperty property="bookName" name="member"/>
	<jsp:setProperty property="bookWriter" name="member"/>
	
	<h3>도서 등록 결과</h3>
	<table border="1">
		<tr><td>코드</td><td>제목</td><td>작가</td></tr>
		<tr>
		<td><jsp:getProperty property="bookCode" name="member"/></td>
		<td><jsp:getProperty property="bookName" name="member"/></td>
		<td><jsp:getProperty property="bookWriter" name="member"/></td>
		</tr>
	</table>
</body>
</html>