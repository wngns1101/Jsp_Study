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
	<h3>사원 목록 보기</h3>
	<%
		/* 드라이버 로딩 */
		Class.forName("com.mysql.jdbc.Driver");
		
		/* 데이터베이스 커넥션  */
		Connection conn = null;
		/* Statement 생성  */
		Statement stat = null;
		/* 쿼리 실행  */
		ResultSet rs = null;
		
		String jdbcDriver = "jdbc:mysql://localhost:3306/jspDB?" + "useSSL=false&serverTimezone=UTC";
		String dbUser = "root";
		String dbPass = "????";
		String sql = "select * from emp";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stat = conn.createStatement();
		rs = stat.executeQuery(sql);
		
		if(rs != null){
			out.println("db연결 성공" + "<br>");
		}else{
			out.println("db연결 실패");
		}
%>

		<table border="1" width="100%" style="text-align: center;">
			<tr>
				<td>번호</td><td>이름</td><td>근무부서</td><td>업무</td><td>급여</td>
			</tr>	
		

<%
	while(rs.next()){
			out.println("<tr><td>");
			out.println(rs.getString("empno") + "</td><td>");
			out.println(rs.getString("empname") + "</td><td>");
			out.println(rs.getString("empdept") + "</td><td>");
			out.println(rs.getString("empjob") + "</td><td>");
			out.println(rs.getString("empsal") + "</td></tr>");
		}
		
		/* 사용한 Statement 종료 */
		rs.close();
		
		/* 커넥션 종료 */
		conn.close();
	%>
	</table>
</body>
</html>