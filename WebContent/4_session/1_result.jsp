<%@page import="com.sun.org.glassfish.gmbal.IncludeSubclass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입 결과</h3>
<%
	// 결과를 읽어온다.
	String strResult = request.getParameter("result");
	out.println("strResult: " + strResult);
	
	// 가입 성공, 가입실패
	if(strResult.equals("SUCCESS")) {
		out.print("가입성공");
	} else {
		out.print("가입실패");
	}
%>	
</body>
</html>