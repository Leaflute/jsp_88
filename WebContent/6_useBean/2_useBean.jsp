<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>    
<!-- useBean 액션태그를 이용해 객체 생성 -->
<jsp:useBean id="info" class="useBean.MemberInfo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 액션태그를 이용해서 객체 생성</title>
</head>
<body>
<%
	Date date = new Date();
%>

<!-- setter -->
<%-- <jsp:setProperty property="자바빈이름(=참조변수=userBean의 id)" name="속성명(=멤버변수)" value="값"/> --%>
<jsp:setProperty property="id" name="info" value="hong"/>
<jsp:setProperty property="password" name="info" value="hong1234"/>
<jsp:setProperty property="name" name="info" value="홍길동"/>
<jsp:setProperty property="address" name="info" value="서울 강남 대치"/>
<jsp:setProperty property="registerDate" name="info" value="<%=date%>"/>
<jsp:setProperty property="email" name="info" value="asdf@asdf.com"/>

<!-- getter -->
아이디: <jsp:getProperty property="id" name="info"/><br>
비밀번호: <jsp:getProperty property="password" name="info"/><br>
이름: <jsp:getProperty property="name" name="info"/><br>
주소: <jsp:getProperty property="address" name="info"/><br>
가입일: <jsp:getProperty property="registerDate" name="info"/><br>
이메일: <jsp:getProperty property="email" name="info"/><br>
</body>
</html>