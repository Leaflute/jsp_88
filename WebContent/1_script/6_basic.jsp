<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
<table border="1" align="center" width="120">
<% 	for(int dan=2; dan<=9; dan++) {
%>
	<tr>
		<td colspan="2" align="center"> *** <%=dan%>단***</td>
	</tr>		
<%
		for(int i=1; i<=9; i++) {
%>
	<tr>
		<td><%=dan%> * <%=i%></td><td><%=dan*i%></td>
	</tr>
<%
		}
	}
%>
</table>
</body>
</html>