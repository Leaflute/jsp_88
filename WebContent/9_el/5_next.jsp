<%@page import="useBean.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 방법1. 표현식</h3>
<%
	MemberInfo info = (MemberInfo) request.getAttribute("memberInfo");
%>
아이디: <%=info.getId()%><br>
비밀번호: <%=info.getPassword() %><br>
이름: <%=info.getName() %><br>
주소: <%=info.getAddress() %><br>
이메일: <%=info.getEmail() %><br>
<br>

<h3> 방법2. EL의 멤버 변수 이용</h3>
아이디: ${memberInfo.id}<br>
비밀번호: ${memberInfo.password}<br>
이름: ${memberInfo.name}<br>
주소: ${memberInfo.address}<br>
이메일: ${memberInfo.email}<br>
<br>

<h3> 방법3. EL의 멤버 메서드 이용</h3>
아이디: ${memberInfo.getId()}<br>
비밀번호: ${memberInfo.getPassword()}<br>
이름: ${memberInfo.getName()}<br>
주소: ${memberInfo.getAddress()}<br>
이메일: ${memberInfo.getEmail()}<br>
<br>

</body>
</html>