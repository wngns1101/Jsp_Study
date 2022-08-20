<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사원 정보 조회 화면</h3>
	<form action="viewEmpQuery.jsp">
		<p>조회할 사원 번호를 입력하세요:</p><input type="text" name="viewNO" autofocus="autofocus">
		<br><br>
		<input type="submit" value="조회">
		<input type="reset" value="취소">		
	</form>
		<br>
		<input type="button" onclick="location.href='menu.jsp'" value="메뉴화면">
</body>
</html>