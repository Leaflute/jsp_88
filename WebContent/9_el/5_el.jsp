<%@page import="useBean.MemberInfo"%>
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
	MemberInfo member = new MemberInfo();
	member.setId("hong");
	member.setName("홍길동");
	member.setPassword("hong1234");
	member.setAddress("서울시");
	member.setEmail("hong@naver.com");
	
	// 	request.setAttribute("key", value);
	request.setAttribute("memberInfo", member);
	String viewPage = "5_next.jsp";
	RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);

	dispatcher.forward(request, response);
%>
</body>
</html>