<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 -request 객체, parameter 메서드</title>
</head>
<body>
	<h3>내장객체 -request 객체, parameter 메서드</h3>
	request란 내장객체로 브라우저를 통해 서버에 어떤 정보를 요청하는 것을 말하며
	이러한 정보를 request객체가 관리<br>
	
	parameter 메서드는 jsp 페이지의 데이터값을 전송하기 위해 사용<br><br>
	
	<form action="3_include.jsp" method="get">
		<table border="1">
			<tr>
				<td> 이름 : </td>
				<td><input type="text" name="userName" size="20"></td>
			</tr>
			<tr>
				<td> 나이 : </td>
				<td><input type="text" name="userAge" size="10"></td>
			</tr>
			<tr>
				<td> 폰번호 : </td>
				<td><input type="text" name="userPhone" size="15"></td>
			</tr>
			<tr>'
				<td colspan="2" align="center"> 
					<input type="submit" value="전송">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>