<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p155 액션태그 - include</title>
</head>
<body>
	<h3>액션태그 - include</h3>
	action 태그란 jsp페이지에서 어떤 동작을 하도록 지시하는 태그.
	문법: <%-- <jsp:액션태그 /> --%>
	<%-- <jsp:include page="포함할 페이지" /> --%>
	종류: include, foward, param, ... <br><br>
	
	<table width="400" border="1">
		<tr>
			<!-- top -->
			<td colspan="2">
				<jsp:include page="1_top.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<!-- left -->
			<td width="100" valign="top">
				<jsp:include page="1_left.jsp"></jsp:include>
			</td>
			<!-- main -->
			<td width="200" height="300" valign="middle">
				메인 레이아웃<br><br>
				로그인<br><br>
				
			</td>
		</tr>
		<tr>
			<!-- bottom -->
			<td colspan="2">
				<jsp:include page="1_bottom.jsp"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>