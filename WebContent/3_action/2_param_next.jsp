<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화</title>
</head>
<body>
<%
	String jenre = request.getParameter("jenre");
	String star = request.getParameter("star");
	if (jenre == null || star == null) return;
%>
</body>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>장르</td>
		<td>
<%
	switch(jenre) {
		case "R" : out.print("로맨스"); 			
			break;

		case "A" : out.print("액션"); 			
			break;

		case "C" : out.print("코미디"); 			
			break;

		case "S" : out.print("공상과학"); 			
			break;	

		case "M" : out.print("뮤지컬"); 			
			break;	
	}
	
%>
	</tr>
	
	<tr>
		<td>별점</td>
	</tr>
</table>
</html>