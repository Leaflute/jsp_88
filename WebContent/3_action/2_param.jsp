<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화</title>
</head>
<body>
<table border="1">
	<tr>
		<td>영화제목</td>
		<td>겨울왕국</td>
	</tr>
	<tr>
		<td>상영관</td>
		<td>롯데시네마</td>
	</tr>
	<!-- get방식 표현 2_param_next.jsp?jenre=animation&star=5 -->
	<jsp:include page="2_param_next.jsp">
		<jsp:param value="A" name="jenre"/>
		<jsp:param value="5" name="star"/>
	</jsp:include>
	
	<%-- <jsp:param name="jenre" value="?"> 
		value="R" : 로맨스
		value="M" : 뮤지컬
		value="A" : 액션
		value="C" : 코미디
		value="S" : 공상가확
		
		 <jsp:param="star" value=">
		value=1 : 싫어요
		value=2 : 별로
		value=3 : 그저그래요
		value=4 : 좋아요
		value=5 : 매우좋아요
	--%>
	
</table>
</body>
</html>