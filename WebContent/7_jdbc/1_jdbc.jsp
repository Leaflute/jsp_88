<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>    
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Connection conn = null; 	// 오라클 연결
	PreparedStatement pstmt = null; // sql문장
	ResultSet rs = null; // sql 실행결과
	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe"; // "jdbc:DBSC:@호스트:포트번호:SID"
	String dbID = "scott_88";
	String dbPassword = "tiger";
	
	/* 
		JDBC(Java Database Connectivity)
		- 자바에서 데이터베이스와 관련된
		- DBMS와 
		- ojdbc6
		C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6.jar
		=> 붙여넣기 D:\Dev88\workspace\jsp_88\WebContent\WEB-INF\lib
		=> 붙여넣기 C:\Program Files\Java\jre1.8.0_241\lib\ext
		
		- thin 드라이브는 자바 언어로만 구현된 JDBC 드라이버로서, JDK만 설치되어 있으면 어디서나 사용가능
	*/
	
%>
	<h3> 부서 목록 </h3>
<%
	try {
		// 1. jdbc 드라이버 로딩
		// Class.forName() => 지정한 클래스 정보를 담고 있는 Class 인스턴스를 구해주는 기능을 제공하는 메서드
		Class.forName("oracle.jdbc.driver.OracleDriver");	// WEB-INF/lib/ojdbc6.jar 경로에 존재해야함	
	
		// 2. DB커넥션 생성
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		
		// 3. PreparedStatement 생성 (SQL문)
	    /* 
	    	p401 
	    	- SQL 쿼리의 틀을 미리 생성해놓고, 값을 나중에 지정하는 방식
	    	- 값 변동을 자동으로 하기 위함
	    	- 간결한 코드를 위해 사용
	    	- set 계열의 메서드를 사용해 물음표를 대체할 값을 지정
	    	- 첫 번째 물음표의 인덱스는 1이며 이후 물음표의 인덱스는 순서대로 인덱스값이 1씩 증가
	    */
		
		String sql = "SELECT * FROM dept WHERE deptno IN(?,?,?,?) ORDER BY deptno ASC";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, 101);
		pstmt.setInt(2, 102);
		pstmt.setInt(3, 103);
		pstmt.setInt(4, 104);
		
		// 4. 쿼리 실행
		/*
			P388
			ResultSet excuteQuery()
			- SELECT문의 실행결과를 ResultSet 객체에 담아 리턴
			- 따라서 ResultSet이 제공하는 메서드를 사용해서 결과값을 읽어 올 수 있음
			- next() 메서드를 사용해 SELECT 결과의 존재여부를 확인할 수 있음
			
			int excueUpdate()
			- INSERT, UPDATE, DELETE 쿼리를 실행할 때 사용, 실행결과로 변경된 레코드의 건수를 리턴
			- SQL문 실행 후 테이블의 내용만 변경되는 경우 사용
		*/

		rs = pstmt.executeQuery();
		
		// 5. 쿼리 실행 결과 출력(Transaction 과정 반드시 필요!)
		/* 
			rs.next() 메서드를 사용해서 SELECT결과의 존재여부를 확인 가능
			rs.getType(컬럼명);
			반복문 한번 반복시 한 건의 해당 행(레코드)을 컬럼별로 가져옴
		*/
		while(rs.next()) {
			int deptNo = rs.getInt("deptno");
			String deptName = rs.getString("deptname");
			String loc = rs.getString("loc");
			
			out.print("부서번호: " + deptNo + "<br>" + "부서이름: " + deptName + "<br>" + "위치: " + loc + "<br><br>");
		}
	} catch(SQLException e) {
		e.printStackTrace();
		out.print(e.getMessage());
	} finally {
		// 6. 사용한 자원 해제
		// finally는 try catch문에서 반드시 실행하는 부분으로, 생성한 객체의 반대 순서로 close()할 것
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(rs != null) conn.close();
	}


%>	
</body>
</html>