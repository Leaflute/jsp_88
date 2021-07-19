<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- param 액션태그로 넘긴 값을 받아온다. -->
	<%
		String strName= request.getParameter("p_name");
		String strAge= request.getParameter("p_age");
		String strPhone= request.getParameter("p_phone");
	%>
	
	이름 : <%=strName%><br>
	나이 : <%=strAge%><br>
	전화번호 : <%=strPhone%><br>
</body>
</html>