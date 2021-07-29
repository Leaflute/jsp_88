<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>request의 items속성</h2>
<!-- el태그로 출력 -->
<!-- key 활용 -->
${fruit} <br><br>

<!-- 배열 -->
${requestScope.fruit[0]}, 
${requestScope.fruit[1]},
${fruit[2]},
${fruit[3]}
<br><br>

요청 URI : ${pageContext.request.requestURI}
<!-- 요청 URI : ${pageContext.request.requestURI} -->

<br><br>
</body>
</html>