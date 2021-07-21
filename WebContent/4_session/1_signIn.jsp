<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 한글 안 깨지게 처리
	request.setCharacterEncoding("UTF-8");

	String strAgree = request.getParameter("agree");
	out.println("strAgree: " + strAgree);
	
	String result;
	
	// 동의한 경우
	if (strAgree.equals("YES")) {
		// session에서 값을을 받아온다.
		// session.getAttribute("속성명"); return타입 Object
		String sId = (String)session.getAttribute("id");
		String sPwd = (String)session.getAttribute("pw");
		String sName = (String)session.getAttribute("name");
	
		PrintWriter writer = null;
		
		// 세션에 저장된 로그인정보를 서버에 저장
		/* 
			톰캣 기본 경로 => C:\apache-tpmcat-8.5.61\wtpwebapps\
			세션 저장 경로 => C:\apache-tpmcat-8.5.61\wtpwebapps\jsp_88\
			1) 톰캣 환경 설정 (톰캣 더블클릭) : Server Locations > 2번째 옵션 선택
										Server Locations > 2번째 옵션 선택
			기본경로: D:\Dev88\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
			나머지 경로: \wtpwebapps\jsp_88\WEB-INF\저장한이름.txt
		*/
		
		try {
			String filepath = application.getRealPath("/WEB-INF/" + sName + ".txt");
			writer = new PrintWriter(filepath);
			writer.println("아이디: " + sId);
			writer.println("비밀번호: " + sPwd);
			writer.println("이름: " + sName);
			result = "SUCCESS";
		} catch(IOException e) {
			result = "FAIL";
		} finally {
			try {
				writer.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	} else {
	// 동의하지 않은 경우
		result="FAIL";
	}
	
	out.print("result: " + result);
	
	// 세션을 종료 후, result 결과값을 가지고 1_result.jsp로 이동
	session.invalidate();
	response.sendRedirect("1_result.jsp?result=" + result);
%>

</body>
</html>