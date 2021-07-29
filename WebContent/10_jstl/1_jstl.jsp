<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h2> JSTL(JSP Standard Tag Library) - core 태그 : 변수지원 태그  set</h2>
<pre>
JSP의 경우 HTML태그와 같이 사용하므로 전체 코드의 가독성이 떨어지는 단점을 보완하기 위해
표준화된 커스텀 태그 라이브러리인 JSTL을 사용
jstl.jar, standard.jar를 WEB-INF/lib 폴더에 추가해야 함
</pre>
<br><br>
<%--
	변수지원 태그 - <c:set> 태그
		var : 값을 지정할 EL 변수의 이름을 지정
		value : 변수의 값을 지정, 표현식(<%=value%>), EL(${key.value}), 정적 텍스트("문자열")
 --%>
<c:set var="num1" value="8"/> <!-- int num1 = 8; -->
<c:set var="num2" value="4"/> <!-- int num2 = 4; -->
<c:set var="sum" value="${num1+num2}"/>
${num1} + ${num2} = ${sum} <br>

<c:set var="sub" value="${num1-num2}"/>
${num1} - ${num2} = ${sub} <br>

<c:set var="mul" value="${num1*num2}"/>
${num1} * ${num2} = ${mul} <br>

<c:set var="divide" value="${num1/num2}"/>
${num1} / ${num2} = ${divide} <br>
</body>
</html>