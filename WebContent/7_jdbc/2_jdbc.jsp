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
<title>JDBC - 멤버정보 출력</title>
</head>
<body>
 
<!-- id가 홀수번째인 정보를 출력 -->
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe"; // "jdbc:DBSC:@호스트:포트번호:SID"
	String dbID = "scott_88";
	String dbPassword = "tiger";
	
%>

<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		
		String sql = "SELECT * FROM member_tbl WHERE member_id IN(?, ?, ?) ORDER BY member_id ASC";
		pstmt = conn.prepareStatement(sql);		
		pstmt.setString(1, "duli");
		pstmt.setString(2, "toti");
		pstmt.setString(3, "downer");
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String memberId = rs.getString("member_id");
			String memberPwd = rs.getString("member_password");
			String memberName = rs.getString("member_name");
			String memberAddress = rs.getString("member_address");
			
			out.print("아이디: " + memberId + "<br>" + "비밀번호: " + memberPwd + "<br>" + memberName + "<br>" + memberAddress + "<br><br>");
		}
	} catch (SQLException e) {
		e.printStackTrace();
		out.print(e.getMessage());
	} finally {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}
%>

</body>
</html>

<!-- 
scott_88계정에서 실행

CREATE TABLE member_tbl (
    member_id NUMBER(20) PRIMARY KEY,
    member_password VARCHAR2(20),
    member_name VARCHAR2(20),
    member_address VARCHAR2(100)
);

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES(1, '1234', '홍길동', '서울');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES(2, '1234', '고길동', '대전');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES(3, '1234', '둘리', '대구');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES(4, '1234', '도우너', '인천');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES(5, '1234', '또치', '부산');

COMMIT;

 -->