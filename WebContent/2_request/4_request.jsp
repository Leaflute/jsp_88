<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3> p134 - Attribute 예제</h3>
	<!--  
	- 속성 설정
	request.setAttribute("속성명","속성값");
	request.setAttribute(String name,Object value);
	
	- 속성값 가져오기
	Object value = request.getAttribute("속성명"); //리턴타입은 Object형
	
	- 속성 삭제
	request.removeAttribute("속성명");
	
	-->
	
<% 
	Calendar cal = Calendar.getInstance();
	request.setAttribute("time", cal);
%>
	<%-- 	
	<jsp:foward> 액션태그
	<jsp:forward page="이동할 페이지"/>
	 --%>
	<jsp:forward page="4_next.jsp"></jsp:forward>
</body>
</html>