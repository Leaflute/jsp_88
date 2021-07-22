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
<form action="../PostEx2" method="post">
	<table>
		<tr>
			<td align="right"> 사번 </td>
			<td><input type="text" name="userSabun" size="20"></td>
		</tr>

		<tr>
			<td align="right"> 이름 </td>
			<td><input type="text" name="userName" size="20"></td>
		</tr>

		<tr>
			<td align="right"> 나이 </td>
			<td><input type="text" name="userAge" size="3"></td>
		</tr>
		
		<tr>
			<td align="right"> 성별 </td>
			<td>
				<input type="radio" name="userGender" value="1">여자
				<input type="radio" name="userGender" value="2">남자
			</td>
		</tr>
		
		<tr>
			<td align="right"> 취미 </td>
			<td>
				<input type="checkbox" name="userHobby" value="1">독서
				<input type="checkbox" name="userHobby" value="2">음악감상
				<input type="checkbox" name="userHobby" value="3">트래킹
				<input type="checkbox" name="userHobby" value="4">영화감상
				<input type="checkbox" name="userHobby" value="5">낚시
			</td>
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