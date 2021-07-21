<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미성년자인 경우</title>
</head>
<body>
<!-- 나이를 받아온 후에 메세지를 뿌린다.
	당신은 ~세이므로 미성년자입니다. 주류 구매가 불가능합니다.
 -->
 <%
 	int iAge = Integer.parseInt(request.getParameter("age"));
	
 %>
 	당신은 <%= iAge %>세이므로 미성년자입니다. 주류 구매가 가능합니다. <br>
 	<a href="3_request.jsp">처음으로 이동</a>
</body>
</html>