<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String type = request.getParameter("type");
		if(type == null){
			return;
		}
	%>
	
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
		<tr><td>타입</td><td><b><%=type %></b></td></tr>
		<tr><td>특징</td><td>
			<%if(type.equals("iPhone")){%>
					수려한 디자인
			<%}else if(type.equals("Galaxy")){ %>
					뛰어난 활용성
			<%}%>	
			</td>
			</tr>
	</table>
</body>
</html>