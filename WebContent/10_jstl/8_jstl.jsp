<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl core태그 - forTokens</title>
</head>
<body>
<h3>jstl core태그 - forTokens</h3>
<%-- 
<c:forTokens var="변수명" items="변수명" delims="문자열" delims="구분자">
	${변수명}
</c:forTokens>
<c:forTokens>태그는 items로 전달받은 문자열을 구분자를 이용해 나누고,
구분한 문자열을 var 속성에 명시한 변수에 전달
items는 String형
--%>

콤마를 구분하는 예제 <br>

무지개색:
<c:forTokens var="color" items="red, orange, yellow, green, blue, navy, purple" delims=",">
	${color}
</c:forTokens>
</body>
</html>