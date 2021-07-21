<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관 동의 화면을 제공하는 JSP</title>
</head>
<body>

<%
	// 한글 안 깨지게 처리
	request.setCharacterEncoding("UTF-8");
	
	// 입력받은 값을 받아온다
	String strID = request.getParameter("userID");
	String strPW = request.getParameter("userPW");
	String strName = request.getParameter("userName");

	/* 
		세션에 값 저장: session.setAttribute("속성명","값");
		=> 로그인 상태의 정보를 저장하기 위함
	*/
	session.setAttribute("id", strID);
	session.setAttribute("pw", strPW);
	session.setAttribute("name", strName);	
%>

<form action="1_signIn.jsp" method="post">
	<fieldset>
		<legend> 회원약관 </legend>
		=========================================<br>
		1. 회원정보는 당 사이트의 운영정보를 위해서만 사용됩니다.<br>
		2. 당 사이트는 정상운영을 방해하는 회원을 탈퇴처리합니다.<br>
		=========================================<br>
		위의 약관에 동의하시겠습니까?
		<input type="radio" name="agree" value="YES" checked> 동의함
		<input type="radio" name="agree" value="NO"> 동의하지 않음 <br><br>
		<input type="submit" value="전송">
	</fieldset>
</form>
</body>
</html>