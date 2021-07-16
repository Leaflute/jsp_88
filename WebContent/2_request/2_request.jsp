<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 - request 개체 - parameter 메서드</title>
</head>
<body>
	<h3>내장객체 - request 개체 - parameter 메서드</h3>
	<form action="2_next.jsp" method="get">
	
	<!-- 면접 : get 방식 전송과 post 방식 전송
		  차이점 : 전송방식에 있다. GET 방식은 요청URL에 파라미터를 붙여서 전송한다.
		  쿼리문자열 => URL?이름1=값1&이름2=값2&이름3=값3&이름4=값4&이름n=값n
	-->
	
	<!-- http://localhost/jsp_88_abh/2_request/2_next.jsp?userID=asdf&userPWD=1243&userName=%EA%B9%80%ED%83%9C%ED%9D%AC&userEmail=abc%40abc.com&userMajor=%EA%B5%AD%EB%AC%B8%EA%B3%BC&userJob=%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8&userHobby=cook&userHobby=reading -->
	<!-- 쿼리문자열 => http://localhost/jsp_88_abh/2_request/2_next.jsp?이름1=값1&이름2=값2&이름3=값3&이름4=값4&이름5=값5&이름6=값6&이름7=값7 -->
		<table border="1">
			<tr>
				<td>아이디 : </td>
				<td><input type="text" name="userID" size="20"></td>
			</tr>
			
			<tr>
				<td>비밀번호 : </td>
				<td><input type="password" name="userPWD" size="20"></td>
			</tr>
			<tr>
				<td> 이름 : </td>
				<td><input type="text" name="userName" size="20"></td>
			</tr>
			<tr>
				<td> 이메일 : </td>
				<td><input type="email" name="userEmail" size="20"></td>
			</tr>
			<tr>
				<td> 전공 : </td>
				<td>
					<input type="radio" name="userMajor" value="국문과">국문과
					<input type="radio" name="userMajor" value="영문과">영문과
					<input type="radio" name="userMajor" value="컴공과">컴공과
				</td>
			</tr>
			<tr>
				<td> 직업 : </td>
				<td>
					<select name="userJob">
						<option value="프로그래머">프로그래머</option>
						<option value="요리사">요리사</option>
						<option value="CEO">CEO</option>
						<option value="바리스타">바리스타</option>
					</select>
				</td>
			</tr>
			<tr>
				<td> 취미 : </td>
				<td>
					<input type="checkbox" name="userHobby" value="cook">요리
					<input type="checkbox" name="userHobby" value="swimming">수영	
					<input type="checkbox" name="userHobby" value="reading">독서
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송">
					<input type="reset" value="취소">
				</td>	
			</tr>
		</table>
	</form>
</body>
</html>