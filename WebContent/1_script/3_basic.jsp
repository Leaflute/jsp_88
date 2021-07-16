<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1부터 10까지의 합을 Scriptlet으로 출력</title>
</head>
<body>
<!-- 1부터 10까지의 합 -->
<%
	int sum = 0;
	for(int i = 1; i<=10; i++){
		sum += i;
	}
	out.print("1부터 10까지의 합: " + sum + "<br><b>");
%>

1부터 10까지의 합 : <%=sum%>
</body>
</html>