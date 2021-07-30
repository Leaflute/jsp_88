<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>            
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl core태그 - forEach</title>
</head>
<body>
<h3>jstl core태그 - forEach</h3>


<%
	String[] food = {"스테이크", "파스타", "치킨", "떡볶이", "라면", "튀김", "냉면"};

	request.setAttribute("menu", food);
	String viewPage = "6_next.jsp";
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	dispatcher.forward(request, response);
%>
</body>
</html>