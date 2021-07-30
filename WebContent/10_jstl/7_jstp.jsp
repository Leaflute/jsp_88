<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="useBean.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl core태그 - forEach</title>
</head>
<body>
<h3>jstl core태그 - forEach</h3>

<%
	// 작은 바구니(VO) 생성
	MemberInfo hkd = new MemberInfo();
	MemberInfo lkj = new MemberInfo();

	// hkd바구니에 홍길동의 정보를 담는다
	hkd.setId("hong");
	hkd.setPassword("hong1234");
	hkd.setName("홍길동");
	hkd.setAddress("서울시 노원구");
	hkd.setEmail("hong@naver.com");
	
	// lkj바구니에 임꺽정의 정보를 담는다
	lkj.setId("lim");
	lkj.setPassword("lim1234");
	lkj.setName("임꺽정");
	lkj.setAddress("강원도 강릉시");
	lkj.setEmail("lim@naver.com");
	
	// 큰 바구니 생성
	List<MemberInfo> list = new ArrayList();
	list.add(hkd);
	list.add(lkj);
	
	request.setAttribute("memberList", list);
	
	String viewPage = "7_next.jsp";
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	dispatcher.forward(request, response);
%>
</body>
</html>