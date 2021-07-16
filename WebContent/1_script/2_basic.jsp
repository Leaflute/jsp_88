<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p65 스크립트 요소 (중요)</title>
</head>
<body>
	<h3>스크립트 요소</h3>
	<b> 1. 스크립트립(Scriptlet)</b>
	- HTML 태그 안에 java 코드 삽입<br><br>
	
	<%-- 
		<% 
			자바코드1;
			자바코드2;
			..
			자바코드n;	
		%>
	--%>

<%
	String name="나도웅";
	int age = 35;
	String email="ebolvoid@gmail.com";
	String address="서울시 은평구 응암동";
	
	// out : 내장객체, 서블릿으로 변환시 컴파일시점에 자동으로 객체 생성
	out.print("===== 실행결과 ===== <br>" );
	out.print("이름: " + name + "<br>");
	out.print("나이: " + age + "<br>");
	out.print("이메일: " + email + "<br>");
	out.print("주소: " + address + "<br>");
%>
	
	<br><br>
	<b>2. 표현식(Expression)</b>
	- 값을 출력한다.<br>
	- 문장의 끝에 ';'을 붙이면 안됨.<br>
	- 스크립트릿 안에서는 'out.print();' 사용가능<br><br>
	
	<%--
		<%= 값%>
		값은 변수나 메서드가 올 수 있음
	 --%>
	 ===== 실행결과 =====<br>
	 이름: <%=name%><br>
	 나이: <%=age%><br>
	 이메일: <%=email%><br>
	 주소: <%=address%><br>
	 
	 <br>
	 <b>3. 선언부(Declaration)</b><br>
	 - 변수, 메서드를 생성<br>
	 - 형식<br><br>
	 <%-- 
	 	<%!
			 public 리턴타입 메서드명(매개변수) {
			 	자바코드1;
			 	자바코드2;
			 	...
			 	자바코드n;
			 }
		%>
 	 --%>
 	 
 	 <%!
 	 	public int divide(int a, int b) {
 		 	return a / b;
 	 	}
 	 %>
 	 
 	 ===== 실행결과 =====<br>
 	 4/2 = <%=divide(4, 2)%><br>
</body>
</html>