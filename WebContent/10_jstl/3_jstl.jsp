<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL coretag - if</title>
</head>
<body>
<h3>JSTL coretag - if</h3>
<%--
	<c:if test="조건" var="변수명" [scope="범위]
	..
	</c:if>
	
 --%>
<c:if test="true">
	무조건 실행
</c:if>
<c:if test="false">
	수행하지 않음
</c:if>

<!-- 웹브라우저에서 http://localhost/jsp_88/10_jstl/3_jstl.jsp?name=hong -->

<c:if test="${param.name == 'hong'}">
<%-- ${param.name} = request.getParameter("name") --%>
	name 파라미터 값은 ${param.name}입니다
</c:if>

<!-- 웹브라우저에서 http://localhost/jsp_88/10_jstl/3_jstl.jsp?name=hong&age=20&kind=막걸리 -->
<c:if test="${param.age > '19' }">
	${param.name}은 ${param.age}이므로 ${param.kind}를 살 수 있다.
</c:if>

<!-- 웹브라우저에서 http://localhost/jsp_88/10_jstl/3_jstl.jsp?name=hong&age=17&kind=막걸리 -->
<c:if test="${param.age <= '19' }">
	${param.name}은 ${param.age}이므로 ${param.kind}를 살 수 없다.
</c:if>
<br><br>
</body>
</html>