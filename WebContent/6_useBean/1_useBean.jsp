<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="useBean.MemberInfo" %>    
<%@ page import="java.util.Date" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 자바빈을 이용한 객체 생성 </h3>
<%
	// MemberInfo 클래스를 가져와서 인스턴스 생성
	MemberInfo member = new MemberInfo();

	// setter로 값 설정 (멤버변수로 값 전달)
	member.setId("hong1234");
	member.setPassword("12341234");
	member.setName("홍길동");
	member.setAddress("서울 서초 반포");
	Date date = new Date();
	/* member.setRegisterDate(date); */
	member.setEmail("email@email.com");
	
	// getter로 값 가져와서 출력 (전달받은 멤버변수의 값을 가져움)
	out.print(member.getId()+"<br>");
	out.print(member.getPassword()+"<br>");
	out.print(member.getName()+"<br>");
	out.print(member.getAddress()+"<br>");
	/* out.print(member.getRegisterDate()+"<br>"); */
	out.print(member.getEmail()+"<br>");
%>	
	<!-- 표현식을 이용해 값 출력 -->
	아이디: <%=member.getId() %><br>
	비밀번호: <%=member.getPassword() %><br>
	이름: <%=member.getName() %><br>
	주소: <%=member.getAddress() %><br>
	<%-- 가입일: <%=member.getRegisterDate() %><br> --%>
	이메일: <%=member.getEmail() %>
</body>
</html>