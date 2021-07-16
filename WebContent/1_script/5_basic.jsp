<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식을 활용(배열)</title>
<script type="text/javascript">
</script>
</head>
<body>
<%!
	String dream[] = {"취침", "낚시", "피아노", "축구", "우주여행"};
	
%>

<table border="1">
	<tr>
		<th>번호</th><th>꿈</th>
	</tr>
<%
	for (int i=0; i<dream.length; i++){
%>	
	<tr>
		<th><%=i+1%></th><td><%=dream[i]%></td>
	</tr>
<%
	}
%>	
</table>
</body>
</html>