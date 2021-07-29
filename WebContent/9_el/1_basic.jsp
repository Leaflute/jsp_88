<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p250 표현언어(Expression Language)</title>

</head>
<body>
	<h2>표현 언어(Expression Language)</h2>
	
<%-- 	
	1. jstl.jar, standard.jar를 WEB_INF/lib 폴더에 추가 <br>
	2. EL이란란 jsp의 표현식이나 액션 태그를 대신해, 값을 간결하고 편리하게 표현하는 스크립트 <br>
		
		1) 표현식
		<%=변수명 %> <%=value %> <%=메서드 %> 
		산술연산 및 관계연산 : +, - , *, /, ==, !=, <, >, <=, >=
		조건: a > b ? a : b;(삼항연산)
		논리: &&, ||
		
		2) EL 언어의 내장객체 => ${expr}
		a. param : 웹브라우저의 <form>태그를 통해 입력된 데이터를 가져올 때 사용
			
			
			2-1) ${param.name} = request.getParameter("name");
			[예]
			<% String strEmail = request.getParameter("email"); %>
			<%=strEmail%> 
			EL ===> ${param.email}
			
			
			2-2) ${param["name"]} = request.getParameter("name");
			
			
			2-3) ${paramValues.name} = request.getParameterValues("name");
			[예]
			<% String[] hobby = request.getParameterValues("hobby"); %>
			<%=hobby[index]%>
			EL ===> ${paramValues.hobby[index]}
			
			
			2-4) ${key.getter()} = ((형변환클래스)request.getAttribute("key")).getter();
			[예] 
			- 컨트롤러에서 넘김
				request.setAttribute("CustomerVO", vo);
			- jsp에서 받음
				<% CustomerVO vo = (CustomerVO)request.getAttribute("CustomerVO"); %>
				<%=vo.getID()%> or <%=vo.id%>	// 멤버변수가 private라도 접근 가능
				
			EL ===> ${vo.getId()} or ${vo.id}
				
			[예]	
			<%  String id = (String)request.getAttribute("id"); %>
			<%=id>
			EL ===> $<%=id%>
			
			
			2-5) pageScope, requestScope, sessionScope, applicationScope, 
			requestScope = request.
			sessionScope = request.getSession().
			[예]
			${fruit[0]} = ${requestScope.fruit[0]}
--%>
</body>
</html>