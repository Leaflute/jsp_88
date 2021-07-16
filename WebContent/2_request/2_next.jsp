<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 출력</title>
</head>
<body>
<%
	// 한글 안깨지게 처리
	request.setCharacterEncoding("UTF-8");

	//String 변수명 = request.getParameter(input 태그명);
	// String[] 변수명 = request.getParameterValues(input 태그명)
	String strID = request.getParameter("userID");
	String strPWD = request.getParameter("userPWD");
	String strName = request.getParameter("userName");
	String strEmail = request.getParameter("userEmail");
	String strMajor = request.getParameter("userMajor");
	String strJob = request.getParameter("userJob");
	String[] strHobby = request.getParameterValues("userHobby");
	
	String hobby = "";
	if(strHobby != null) {
		for(int i=0; i<strHobby.length; i++) {
			if(hobby == "") {
				hobby += strHobby[i];
			} else {
				hobby += ", " + strHobby[i];
			}
		}
	}
	
	out.print(strID + "<br>");
	out.print(strPWD + "<br>");
	out.print(strName + "<br>");
	out.print(strEmail + "<br>");
	out.print(strMajor + "<br>");
	out.print(strJob + "<br>");
	out.print(hobby + "<br>");
	out.print(Arrays.toString(strHobby) + "<br>");
%>
	<br><br>
	====== 표현식 활용 =====
	<br><br>
	아이디 : <%= strID %> <br>
	비밀번호 : <%= strPWD %> <br>
	이름 : <%= strName %> <br>
	이메일 : <%= strEmail %> <br>
	전공 : <%= strMajor %> <br>
	직업 : <%= strJob %> <br>
	취미 : <%= hobby %> <br>
	취미 : <%= Arrays.toString(strHobby) %> <br>

</body>
</html>