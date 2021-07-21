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
	int star = Integer.parseInt(request.getParameter("star"));
	if (jenre == null || star == 0) return;
%>
</body>
<table width="200" border="1" cellpadding="0" cellspacing="0">
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
	</td>
	</tr>
	
	<tr>
		<td>별점</td>
		<td>
<%
	switch(star) {
		case 1 : out.print("내 아름다운 사랑아"); 			
			break;

		case 2 : out.print("여전히 나는"); 			
			break;

		case 3 : out.print("네 모습인데"); 			
			break;

		case 4 : out.print("또 다른 사랑 배워갈"); 			
			break;	

		case 5 : out.print("그대 가슴에"); 			
			break;	
	}
	
%>		
	</td>
	</tr>
</table>
</html>