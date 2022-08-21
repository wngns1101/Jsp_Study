<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Week12.Emp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
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
	<%@ include file="connectDB.jsp" %> <!-- 데이터베이스 커넥션 생성 -->
	
	<%
		Statement stat = null;
		ResultSet rs = null;
		
		ArrayList<Emp> list = new ArrayList<>(); /* Emp 객체형태로 ArrayList에 저장 */
		
		String sql = "select * from emp";
		
		stat = conn.createStatement(); /* Statement 객체 생성 */
		rs = stat.executeQuery(sql); /* 쿼리 생성 */
		
		while(rs.next()){
			Emp emp = new Emp();
			emp.setEmpno(rs.getString(1));
			emp.setEmpname(rs.getString(2));
			emp.setEmpdept(rs.getString(3));
			emp.setEmpjob(rs.getString(4));
			emp.setEmpsal(rs.getInt(5));
			list.add(emp);
		}
		
		request.setAttribute("list", list);
		
		rs.close();
		stat.close();
		conn.close();
		
		RequestDispatcher rd = request.getRequestDispatcher("queryEmpResult.jsp");
		rd.forward(request, response);
	%>
</body>
</html>