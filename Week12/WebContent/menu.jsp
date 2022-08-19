<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3 style="text-align: center;">메뉴 선택</h3>
	<div class="menu">
		<input type="button" onclick="location.href='queryEmp.jsp'" value="사원목록">
		<input type="button" onclick="location.href='inputEmpForm.jsp'" value="사원등록">
		<input type="button" onclick="location.href='queryEmpForm.jsp'" value="사원조회">
	</div>
</body>
</html>