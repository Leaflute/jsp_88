<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> JSP(Java Server Pages) </h3>
	JSP는 HTML 코드에 JAVA언어를 삽입하여 동적 문서를 만든다.<br>
	웹페이지를 보다 쉽게 구축할 수 있도록 만들어주는 서버사이드 스크립트 언어이다. <br>
	java언어를 기반으로 하는 스크립트 언어<br>
	자바에서 제공하는 API나 데이터베이스 연동이 가능하도록 만들어주는 JDBC를 이용할 수 있음.<br>
	
	- WebContent/WEB-INF/lib 폴더에 jsp.api.jar, servlet-api.jar 파일 추가 <br><br>
	
	<h3> WAS(Web Application Server) => 면접</h3>
	웹 어플리케이션을 수행하는 미들웨어로서, 웹 서버와 JSP/Servlet 어플리케이션 수행을 위한 엔진으로 구성<br>
	클라이언트(웹브라우저) -> WAS -> JSP<br>
	WAS의 예시: Apache Tomcat, WebLogic, JEUS, Websphere 등<br><br>
	
	<h3> 서블릿 </h3>
	Servlet은 java를 이용해 문서를 작성하고, 출력 객체를 이용해 HTML코드를 삽입한다.
</body>
</html>