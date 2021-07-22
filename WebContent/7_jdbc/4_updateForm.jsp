<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
<!-- 
CREATE TABLE member_tbl (
    member_id VARCHAR2(20) PRIMARY KEY,
    member_password VARCHAR2(20),
    member_name VARCHAR2(20),
    member_address VARCHAR2(100)
); -->
<h3>회원정보 수정</h3>
<form action="4_next.jsp" method="post">
	<table border="1">
		<tr>
			<td> 아이디 </td>
			<td> <input type="text" name="member_id" size="20"></td>
		</tr>
		<tr>
			<td> 비밀번호 </td>
			<td> <input type="password" name="member_password" size="20"></td>
		</tr>
		
		<tr>
			<td> 이름 </td>
			<td> <input type="text" name="member_name" size="20"></td>
		</tr>
		
		<tr>
			<td> 주소 </td>
			<td> <input type="text" name="member_address" size="100"></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="전송"><input type="reset" value="취소">
			</td>
		</tr>				
	</table>
	
</form>
</body>
</html>