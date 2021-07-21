<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="4_request_next.jsp" method="post">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="userName"></td>
			</tr>
			
			<tr>
				<td>배경색</td>
				<td><input type="color" name="userBackColor"></td>
			</tr>
			
			<tr>
				<td>글자색</td>
				<td><input type="color" name="userFontColor"></td>
			</tr>
			
			<tr>
				<td>그림자색</td>
				<td>
					<input type="radio" name="userShadowColor" value="antiquewhite">상아
					<input type="radio" name="userShadowColor" value="aqua">아쿠아
					<input type="radio" name="userShadowColor" value="lime">라임
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송">
					<input type="reset" value="취소">
				</td>
		</table>
	</form>
</body>
</html>