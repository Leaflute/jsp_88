<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

아이디: ${param.id} <br>
애완동물: ${paramValues.pet[0]}, ${paramValues.pet[1]}, ${paramValues.pet[2]}
</body>
</html>