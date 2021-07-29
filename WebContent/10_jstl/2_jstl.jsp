<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h2> JSTL(JSP Standard Tag Library) - core 태그 : 변수지원 태그  set</h2>
<c:set var="p_code" value="lg" scope="request"/>
<c:set var="p_name" value="gram" scope="request"/>
<c:set var="p_price" value="200000" scope="request"/>

<!-- 지정한 페이지의 결과는 출력하되, URL은 유지 -->
<jsp:forward page="2_next.jsp"/>
</body> 
</html>