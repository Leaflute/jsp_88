<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품정보</h3>
<% request.setCharacterEncoding("UTF-8");%>

<!-- EL태그사용 결과출력 -->
회사: ${p_code}
이름: ${p_name}
가격: ${p_price}

<br><br>
<!-- scope 적용 -->
회사: ${requestScope.p_code}
이름: ${requestScope.p_name}
가격: ${requestScope.p_price}
</body>
</html>