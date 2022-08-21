<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Week12.Emp" %>
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
	<table border="1" style="text-align: center;">
		<tr><th colspan="5">사원 목록 조회</th></tr>
		<%
			response.setContentType("text/html;charset=utf-8");
			request.setCharacterEncoding("utf-8");
			
			ArrayList<Emp> list = (ArrayList<Emp>)request.getAttribute("list");
			
			for(Emp i : list){
		%>
			<tr>
				<td><%=i.getEmpno() %></td>
				<td><%=i.getEmpname() %></td>
				<td><%=i.getEmpdept() %></td>
				<td><%=i.getEmpjob() %></td>
				<td><%=i.getEmpsal() %></td>
			</tr>
		<%
			}
		%>
			<tr>
				<td colspan="5"><input type="button" value="메뉴화면" onclick="location.href='menu.jsp'"></td>
			</tr>
	</table>
</body>
</html>