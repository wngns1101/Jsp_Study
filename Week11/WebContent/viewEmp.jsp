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
	
	<form action="viewEmpQuery.jsp" post>
		조회할 사원 번호를 입력하세요: 	<input type="text" name="id"><br>
		<input type="submit" value="조회">
		<input type="reset" value="취소">
	</form>
</body>
</html>