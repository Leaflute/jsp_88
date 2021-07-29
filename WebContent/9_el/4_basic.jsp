<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>좋아하는 과일</h3>
<%
	// 서비스
	List<String> items = new ArrayList<String>();
	items.add("딸기");
	items.add("수박");
	items.add("포도");
	items.add("사과");
	
	request.setAttribute("fruit", items);
	
	// 컨트롤러
	String viewPage = "4_next.jsp";
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	dispatcher.forward(request, response);
%>
</body>
</html>