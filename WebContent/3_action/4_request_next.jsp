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
	// 한글 안 깨지게 처리
	request.setCharacterEncoding("UTF-8");
	// 이전 페이지로부터 값을 받아와서 변수에 담는다.
	String strUserName = request.getParameter("userName");
	String strUserBackColor = request.getParameter("userBackColor");
	String strUserFontColor = request.getParameter("userFontColor");
	String strUserShadowColor = request.getParameter("userShadowColor");
%>

<!-- forward: url은 그대로, 결과는 이동페이지 -->
<jsp:forward page="4_request_result.jsp">
	<jsp:param value="<%=strUserName%>" name="u_name"/>
	<jsp:param value="<%=strUserBackColor%>" name="u_backColor"/>
	<jsp:param value="<%=strUserFontColor%>" name="u_fontColor"/>
	<jsp:param value="<%=strUserShadowColor%>" name="u_shadowColor"/>
</jsp:forward>
</html>