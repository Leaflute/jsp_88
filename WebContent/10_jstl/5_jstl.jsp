<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl core태그 - forEach *매우중요*</title>
</head>
<body>
<h3>jstl core태그 - forEach</h3>
<%--
	forEach 태그는 배열, Collection 또는 Map에 저장되어 있는 값들을 순차적으로 처리할 때 사용
	자바의 for, do-while문을 대신해 사용할 수 있음

	<c:forEach var="변수명(주로 vo)" items="${객체명(=key)(주로 ArraList의 참조변수)}" begin="시작인덱스" end="끝인덱스" step="증감식" [varStatus="상태변수"]>
		${변수명} 또는 ${참조변수.멤버변수(멤버메서드)}
	</c:forEach>
	
	step="1"인 경우에는 생략 가능
 --%>
<!-- c:forEach를 이용해 1~10 출력 -->
<c:forEach var="i" begin="1" end="10" step="1">
	${i} 
</c:forEach>

<br><br>

<!-- c:forEach를 이용해 1~10 짝수 출력 -->
<c:forEach var="i" begin="2" end="10" step="2">
	${i} 
</c:forEach>
</body>
</html>