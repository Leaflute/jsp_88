<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	box-shadow: 5px 5px 5px;
}

</style>
</head>
<body>
<%
	// 한글 안 깨지게 처리
	request.setCharacterEncoding("UTF-8");
	//이전 페이지로부터 값을 받아와서 변수에 담는다.
	String userName = request.getParameter("u_name");
	String backColor = request.getParameter("u_backColor");
	String fontColor = request.getParameter("u_fontColor");
	String shadowColor = request.getParameter("u_shadowColor");
%>

<!-- 결과 출력 -->
이름:<div style="background-color:<%=backColor%>;color:<%=fontColor%>;box-shadow:<%=shadowColor%>;"><%=userName%></div><br>
배경색: <%=backColor%><br>
글자색: <%=fontColor%><br>
그림자색: <%=shadowColor%><br>
</body>
</html>