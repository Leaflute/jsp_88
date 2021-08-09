<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 에러 페이지</title>
</head>
<body>
<h3> 회원가입 - 500에러 - web.xml에서 처리 </h3>
<!-- 
	에러코드 400 : 클라이언트의 요청이 잘못된 경우
	에러코드 404 : 요청한 URL을 처리하기 위한 자원이 존재하지 않음
	에러코드 500 : 서버 내부 에러 발생한(문법 오류)
 -->
<% 
	String userId = request.getParameter("id").toUpperCase(); 
	out.print("id: " + userId);
%>
<form action="1_request_next.jsp" method="post">
	<table border="1">
		<tr>
			<td> 아이디 </td>
 			<td><input type="text" name="id" size="10"></td>		
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="전송">
			</td>	
		</tr>
	</table>
</form>

</body>
</html>