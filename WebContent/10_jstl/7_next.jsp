<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<table border="1" cellspacing="0" cellpadding="0">
<%-- items="${setAttribute의 key} --%>
<%-- <c:forEach var="작은바구니 참조변수" items="${큰바구니 key} --%>
<c:forEach var="vo" items="${memberList}">
	<tr>
		<th>아이디</th><td>${vo.getId()}</td>
		<th>비밀번호</th><td>${vo.getPassword()}</td>
		<th>이름</th><td>${vo.getName()}</td>
		<th>주소</th><td>${vo.getAddress()}</td>
		<th>이메일</th><td>${vo.getEmail()}</td>
	</tr>
</c:forEach>	
</table>
</body>
</html>