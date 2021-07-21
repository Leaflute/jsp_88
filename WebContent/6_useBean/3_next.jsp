<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="useBean.MemberInfo" %>
<%@ page import="java.util.Date" %>    
<!-- useBean을 이용해서 값 출력
	1) 객체생성 -> 2)setProperty -> 3)getProperty
 -->
<!-- 1) 객체 생성 -->
<jsp:useBean id="info" class="useBean.MemberInfo"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	// 코딩변환	
	request.setCharacterEncoding("UTF-8");
	
	// 1)이전 화면에서 넘어온 값들을 변수에 담는다.
	String gID = request.getParameter("id");
	String gPwd = request.getParameter("password");
	String gName = request.getParameter("name");
	String gAddress = request.getParameter("address");
	String gEmail = request.getParameter("email");
	
%>
<!-- 2)setProperty를 이용해서 위 변수의 값을 설정 -->
<!-- 방법1 -->
<%-- <jsp:setProperty property="id" name="info" value="<%=gID %>"/>
<jsp:setProperty property="password" name="info" value="<%=gPwd %>"/>
<jsp:setProperty property="name" name="info" value="<%=gName %>"/>
<jsp:setProperty property="address" name="info" value="<%=gAddress %>"/>
<jsp:setProperty property="registerDate" name="info" value="<%=gIndate%>"/>
<jsp:setProperty property="email" name="info" value="<%=gEmail%>"/> --%>

<!-- 방법2 -->
<jsp:setProperty property="*" name="info"/>

<!-- 3)getProperty를 이용해서 setProperty의 결과 출력 -->
<table border="1">
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty property="id" name="info"/></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><jsp:getProperty property="password" name="info"/></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty property="name" name="info"/></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><jsp:getProperty property="address" name="info"/></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><jsp:getProperty property="email" name="info"/></td>
	</tr>		
</table>
</body>
</html>