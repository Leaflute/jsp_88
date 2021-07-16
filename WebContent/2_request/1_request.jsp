<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p72 내장객체 - request </title>
</head>
<body>
	<h3>내장객체 - request객체 </h3>
	request란 내장객체로서, 브라우저를 통해 서버에 어떤 정보를 요청하는 것을 말하며 이러한 정보를 request객체가 관리
	
	<br><br>
<%
	out.print("서버: " + request.getServerName() + "<br>");
	out.print("서버포트: " + request.getServerPort() + "<br>");
	out.print("요청방식: " + request.getMethod()+ "<br>");	/* 디폴트 - get방식  */
	out.print("프로토콜: " + request.getProtocol() + "<br>");


	/* 
		URL: 전체경로
		URL: http://localhost/jsp_88_psn/2_request/1_request.jsp
		
	*/
	out.print("URL: " + request.getRequestURL() + "<br>");
	
	/*
		컨텍스트 패스: 프로젝트명
		컨텍스트 패스: jsp_88
	*/
	out.print("컨텍스트 경로: " + request.getContextPath() + "<br>"); 
	
	/* 
		URI: 컨텍스트 패스 포함한 이하의 값, 도메인 주소를 제외한 나머지
		jsp_88/2_request/1_request.jsp
	*/
	out.print("URI: " + request.getRequestURI() + "<br>"); 
%>	

</body>
</html>