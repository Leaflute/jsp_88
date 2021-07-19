<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p168 Include directive </title>
</head>
<body>

<%
	// 한글 안 깨지게 처리
	request.setCharacterEncoding("UTF-8");
%>
	<%@ include file="3_variable.jsp" %>
	날짜 : <%=date%>
	
	<fieldset>
		<legend> include 디렉티브 </legend>
		<!-- get URL -> 3_include.jsp?userName=홍길동&userAge=20&userPhone=0101111222 -->
		<%
			String s_name= request.getParameter("userName");
			String s_age= request.getParameter("userAge");
			String s_phone = request.getParameter("userPhone");
		%>
		
		<!-- 3_sub.jsp?p_name=s_name&p_age=s_age&p_phone=s_phone -->
		<jsp:include page="3_sub.jsp">
			<jsp:param value="<%=s_name%>" name="p_name"/>
			<jsp:param value="<%=s_age%>" name="p_age"/>
			<jsp:param value="<%=s_phone%>" name="p_phone"/>
		</jsp:include>
		
		<%@ include file="3_footer.jsp" %>
	</fieldset>
</body>
</html>