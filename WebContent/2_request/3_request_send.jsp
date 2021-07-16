<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증 페이지</title>
</head>
<body>
<!-- p93 response.sendRedirect("이동할 페이지")
	1. 이전 페이지에서 입력받은 나이를 넘겨받는다.
	2. 나이가 20살 이상이면 3_request_pass.jsp로 이동(age도 같이)
	3. 나이가 20살 미만이면 3_request_ng.jsp로 이동(age도 같이)
	4. response.sendRedirect("이동할 페이지"); get 방식으로 이동
	5. 이동할 주소에 get 방식으로 값 전달 => url?이름1=값1&이름2=값2...
 -->
 
<%
	int iAge = Integer.parseInt(request.getParameter("age"));
	
	if(iAge >= 20) {
		response.sendRedirect("3_request_pass.jsp?age=" + iAge);
	} else {
		response.sendRedirect("3_request_ng.jsp?age=" + iAge);
	}
	
%>
</body>
</html>