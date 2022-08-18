<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사원 정보 조회 결과</h3>
	<table border="1">
<%
	int empno = Integer.parseInt(request.getParameter("id"));

	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	Statement stat = null;
	ResultSet rs = null;
	
	String jdbcDriver = "jdbc:mysql://localhost:3306/jspDB?";
	String dbUser = "root";
	String dbPassword = "????";
	String sql = "select * from emp where empno =" + empno;
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPassword);
	stat = conn.createStatement();
	rs = stat.executeQuery(sql);
	
	while(rs.next()){
		//empno
		out.println("<tr><td>");
		out.println("id");
		out.println("</td><td>");
		out.println(rs.getString("empno"));
		out.println("</td></tr>");
		//empname
		out.println("<tr><td>");
		out.println("name");
		out.println("</td><td>");
		out.println(rs.getString("empname"));
		out.println("</td></tr>");
		//empdept
		out.println("<tr><td>");
		out.println("dept");
		out.println("</td><td>");
		out.println(rs.getString("empdept"));
		out.println("</td></tr>");
		//empjob
		out.println("<tr><td>");
		out.println("job");
		out.println("</td><td>");
		out.println(rs.getString("empjob"));
		out.println("</td></tr>");
		//empsal
		out.println("<tr><td>");
		out.println("sal");
		out.println("</td><td>");
		out.println(rs.getString("empsal"));
		out.println("</td></tr>");
	}
	
	rs.close();
	conn.close();
%>
	</table>
</body>
</html>