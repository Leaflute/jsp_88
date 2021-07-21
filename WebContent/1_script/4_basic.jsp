<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식 활용</title>
</head>
<body>
<%
	//현재시간
	Date date = new Date();
	int hour = date.getHours(); 
	if (hour>12){
		out.print("오후" + "<br>");
	} else {
		out.print("오전 " + "<br>");
	}
%>
1) 지금은 오전? 오후?	(3항연산자) <br>
지금은 <%=(hour>12) ? "오후" : "오전" %> 입니다. <br><br>

<%!
	public int getBigNumber(int a, int b){
		return (a>b) ? a : b;
	}	
%>

2) 두 개의 숫자 중 큰 숫자는?	
<%= getBigNumber(2, 4)%>
</body>
</html>