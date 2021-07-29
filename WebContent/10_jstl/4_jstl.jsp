<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl core태그 - choose</title>
</head>
<body>
<h3>jstl core태그 - choose</h3>
<%--
	<c:choose>
		<c:when test="${조건식}">
		..
		</c:when>
		<c:when test="${조건식}">
		..
		</c:when>
		<c:when test="${조건식}">
		..
		</c:when>
		<c:otherwise>
		..	
		</c:otherwise>
	</c:choose>	
 --%>
<!-- 웹브라우저  주소창에 직접 get 방식으로 입력 => url?name1=value1&name2=value2&...-->
<!-- num1이 1이면 처음뵙겠습니다. num1이 2이면 만나서 반갑습니다. num1이 3이면 또 뵙네요. 그 이상이면 이젠 그만 -->
<c:choose>
	<c:when test="${param.num1=='1'}">
		처음뵙겠습니다.
	</c:when>
	<c:when test="${param.num1=='2'}">
		만나서 반갑습니다.
	</c:when>
	<c:when test="${param.num1=='3'}">
		또 뵙네요.
	</c:when>
	<c:otherwise>
		그만 봅시다.
	</c:otherwise>
</c:choose> 
</body>
</html>