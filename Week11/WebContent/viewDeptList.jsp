<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>부서 목록 리스트</h3>
	<table border="1">
<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;
	Statement stat = null;
	ResultSet rs = null;
	
	String jdbcDriver = "jdbc:mysql://localhost:3306/dept?";
	String dbUser = "root";
	String dbPass = "????";
	String sql = "select * from dept";
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stat = conn.createStatement();
	rs = stat.executeQuery(sql);
	
	while(rs.next()){
		out.println("<tr><td>");
		out.println(rs.getString("deptNO") + "</td><td>");
		out.println(rs.getString("deptName") + "</td><td>");
		out.println(rs.getString("deptLoc") + "</td></tr>");
	}
	rs.close();
	conn.close();
%> 
	</table>
</body>
</html>