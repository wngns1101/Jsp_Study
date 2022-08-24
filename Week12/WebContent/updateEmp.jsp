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
	<form action="updateEmpResult.jsp">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="updatename"></td>
			</tr>
			<tr>
				<td>부서코드</td>
				<td><input type="text" name="updatecode"></td>
			</tr>
			<tr>
				<td>업무</td>
				<td><input type="text" name="updatejob"></td>
			</tr>
			<tr>
				<td>급여</td>
				<td><input type="text" name="updatesal"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정"></td>
			</tr>
		</table>
	</form>
</body>
</html>