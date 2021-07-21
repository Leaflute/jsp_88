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
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbID = "scott_88";
	String dbPassword = "tiger";
%>

<h3> 회원목록</h3>

<%
	//한글 깨지지 않도록 처리
	request.setCharacterEncoding("UTF-8");
	
	//이전 화면에서 넘어온 값들을 변수에 대입
	String iID = request.getParameter("member_id");
	String iPwd = request.getParameter("member_password");
	String iName = request.getParameter("member_name");
	String iAddress = request.getParameter("member_address");
%>

<%
	try {
		// 1. jdbc 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. DB커넥션 생성
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		
		// 3. PreparedStatement 생성 (SQL문)
		String sql = "INSERT INTO member_tbl VALUES(?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, iID);
		pstmt.setString(2, iPwd);
		pstmt.setString(3, iName);
		pstmt.setString(4, iAddress);
		
		// 4. 쿼리 실행
		int insertCnt = pstmt.executeUpdate();
		
		if (insertCnt==1) {
			out.print("삽입 성공: " + insertCnt + "<br><br>");
		} else {
			out.print("삽입 실패: " + insertCnt + "<br><br>");
		}
		
		// 쿼리 실행 결과 출력
		pstmt.close();
		
		String sql2 = "SELECT * FROM member_tbl ORDER BY member_id";
		pstmt = conn.prepareStatement(sql2);
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

<!-- DROP TABLE member_tbl;
CREATE TABLE member_tbl (
    member_id VARCHAR2(20) PRIMARY KEY,
    member_password VARCHAR2(20),
    member_name VARCHAR2(20),
    member_address VARCHAR2(100)
);


INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('hong', '1234', '홍길동', '서울');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('go', '1234', '고길동', '대전');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('duli', '1234', '둘리', '대구');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('downer', '1234', '도우너', '인천');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('toti', '1234', '또치', '부산');

SELECT * FROM member_tbl;

COMMIT; -->