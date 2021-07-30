<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>            
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	forEach 태그는 배열, Collection 또는 Map에 저장되어 있는 값들을 순차적으로 처리할 때 사용
	자바의 for, do-while문을 대신해 사용할 수 있음

	<c:forEach var="변수명(주로 vo)" items="${객체명(=key)(주로 ArraList의 참조변수)}" begin="시작인덱스" end="끝인덱스" step="증감식" [varStatus="상태변수"]>
		${변수명} 또는 ${참조변수.멤버변수(멤버메서드)}
	</c:forEach>
	
	step="1"인 경우에는 생략 가능
 --%>
<% request.setCharacterEncoding("UTF-8"); %>
메뉴 전체:
<c:forEach var="i" items="${menu}">
	${i}
</c:forEach>
<br><br>
일부 메뉴만 출력:

<c:forEach var="i" items="${menu}" begin="2" end="3">
	${i}
</c:forEach>	

</body>
</html>