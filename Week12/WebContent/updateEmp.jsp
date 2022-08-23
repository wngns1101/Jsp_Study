<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="connectDB.jsp" %>
	<%
		String empno = String.valueOf(session.getAttribute("no"));
		 
		Statement stat = null;
		ResultSet rs = null;
		
		String sql = "select * from emp where empno=" + empno;
		
		stat = conn.createStatement();
		rs = stat.executeQuery(sql);
		
		int result = 0;
		
		if(rs.next()){
			result = 1;
			request.setAttribute("empno", rs.getString("empno"));
			request.setAttribute("empname", rs.getString("empname"));
			request.setAttribute("empdept", rs.getString("empdept"));
			request.setAttribute("empjob", rs.getString("empjob"));
			request.setAttribute("empsal", rs.getInt("empsal"));
		}
		
		request.setAttribute("result", result);
		
		rs.close();
		stat.close();
		conn.close();
	%>
	<%
		if(result == 1){
	%>
		<form action="updateEmpResult.jsp">
			<table border="1">
				<tr><td>사번</td><td><input type="text" name="updateno"></td></tr>
				<tr><td>이름</td><td><input type="text" name="updatename"></td></tr>
				<tr><td>부서코드</td><td><input type="text" name="updatecode"></td></tr>
				<tr><td>업무</td><td><input type="text" name="updatejob"></td></tr>
				<tr><td>급여</td><td><input type="text" name="updatesal"></td></tr>
				<tr><td colspan="2"><input type="submit" value="수정"></td></tr>
			</table>
		</form>
	<%
		}
	%>
</body>
</html>