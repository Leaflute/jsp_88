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
	/* 연결 정보 */
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbID = "scott_88";
	String dbPassword = "tiger";
	
%>
	<h3>회원 목록</h3>

<%
	//request.setCharacterEncoding
	request.setCharacterEncoding("UTF-8");
	//getParameter
	String iID = request.getParameter("member_id");
	String iPwd = request.getParameter("member_password");
	
%>

<%
	try {
		// 1. jdbc드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. DB커넥션 생성
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		
		// 3. PreparedStatment 생성(UPDATE) -> 아이디가 테이블에 존재해야 함
		String sql = "DELETE FROM member_tbl WHERE member_id = ? AND member_password = ?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, iID);
		pstmt.setString(2, iPwd);
		
		// 4. 쿼리 실행
		// deleteCnt = 1이면 성공 or deleteCnt = 0이면 실패
		int deleteCnt = pstmt.executeUpdate();
		
		// 5. 실행결과 출력
		if (deleteCnt==1) {
			out.print("삭제 성공: " + deleteCnt + "<br><br>");
		} else {
			out.print("삭제 실패: " + deleteCnt + "<br><br>");
		}
	
		// 6. preparedStatement 생성(SELECT)
		pstmt.close();
		
		String sql2 = "SELECT * FROM member_tbl ORDER BY member_id";
		pstmt = conn.prepareStatement(sql2);
		
		// 7. 쿼리 실행
		rs = pstmt.executeQuery();
		
		// 8. 쿼리 실행 결과 출력
		while(rs.next()) {
			String member_id = rs.getString("member_id");
			String member_password = rs.getString("member_password");
			String member_name = rs.getString("member_name");
			String member_address = rs.getString("member_address");
			out.print("아이디: " + member_id + "<br>" + "비밀번호: " + member_password + "<br>" + member_name + "<br>" + member_address + "<br><br>");
		}
	} catch(SQLException e) {
		e.printStackTrace();
		out.print(e.getMessage());
	} finally {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}
	// 9. 사용한 자원 해제
%>
</body>
</html>