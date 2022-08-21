<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body{
		text-align: center;
	}
</style>
<body>
	<form action="inputEmpProc.jsp">
		<table border="1">
			<tr><th colspan="2">사원 등록 화면</th></tr>
			<tr><td>사번</td><td><input type="text" name="inputno"></td></tr>
			<tr><td>이름</td><td><input type="text" name="inputname"></td></tr>
			<tr><td>부서코드</td><td><input type="text" name="inputcode"></td></tr>
			<tr><td>업무</td><td><input type="text" name="inputjob"></td></tr>
			<tr><td>급여</td><td><input type="text" name="inputsal"></td></tr>
			<tr><th colspan="2"><input type="submit" value="등록"><input type="reset" value="취소"></th></tr>
		</table>
	</form>
</body>
</html>