<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h3>useBean - 회원가입</h3>
	<form action="3_next.jsp" method="post">
		<table border="1">
			<tr>
				<td align="right"> 아이디 </td>
				<td><input type="text" name="id" size="20"></td>
			</tr>
			<tr>
				<td align="right"> 비밀번호</td>
				<td><input type="password" name="password" size="20"></td>
			</tr>
			<tr>
				<td align="right"> 이름 </td>
				<td><input type="text" name="name" size="20"></td>
			</tr>
			
			<tr>
				<td align="right"> 주소 </td>
				<td><input type="text" name="address" size="50"></td>
			</tr>
			<tr>
				<td align="right"> 이메일 </td>
				<td><input type="email" name="email" size="20"></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" value="전송">
				<input type="reset" value="리셋"> 
				</td>
			</tr>			
		</table>
	</form>
</body>
</html>