<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 예제</title>
</head>
<body>
<h2>표현언어 EL</h2>
<form action="2_next.jsp" method="post">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" maxlength="20"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="password" maxlength="20"></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="확인"><input type="reset" value="취소">
			</th>
		</tr>
	</table>
</form>

</body>
</html>