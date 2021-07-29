<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL태그</title>
</head>
<body>
<h2> 방법1. 표현식(기존 방식)으로 출력</h2>
<%
	String strID = request.getParameter("id");
	String strPassword = request.getParameter("password");
%>
아이디: <%=strID%><br>
비밀번호: <%=strPassword%><br>

<h2> 방법2. EL로 출력</h2>
아이디: ${param.id}
비밀번호: ${param.password}

<h2> 방법3. EL 대괄호 이용 </h2>
아이디: ${param["id"]}
비밀번호: ${param["password"]}

</body>
</html>