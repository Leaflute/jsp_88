<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 연동</title>
</head>
<body>

<h3>서블릿 연동</h3>
<!-- D:\Dev88\workspace\jsp_88\WebContent\8_servlet -->
<form action="../PostEx1" method="post">
	<table>
		<tr>
			<td align="right"> id</td>
			<td><input type="text" name="userID" size="20"></td>
		</tr>

		<tr>
			<td align="right"> 이름</td>
			<td><input type="text" name="userName" size="20"></td>
		</tr>

		<tr>
			<td align="right"> 이메일</td>
			<td><input type="email" name="userEmail" size="20"></td>
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