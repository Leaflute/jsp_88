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
<title>JDBC - 멤버 정보 출력</title>
</head>
<body>

<!--  JDBC를 활용해 id가 'hong', 'kim', 'park2'인 멤버들의 정보 출력 -->

<%
   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
   String dbID = "scott_88";
   String dbPassword = "tiger";
   
   try {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
      String sql = "SELECT * FROM member_tbl WHERE member_id IN(?, ?, ?) ORDER BY member_id ASC";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, "hong");
      pstmt.setString(2, "kim");
      pstmt.setString(3, "park2");
      
      rs = pstmt.executeQuery();
      
      while(rs.next()) {
         String member_id = rs.getString("member_id");
         String member_password = rs.getString("member_password");
         String member_name = rs.getString("member_name");
         String member_address = rs.getString("member_address");
         
         out.print("아이디 : " + member_id + "<br>");
         out.print("비밀번호 : " + member_password + "<br>");
         out.print("이름 : " + member_name + "<br>");
         out.print("주소 : " + member_address + "<br><br>");
      }
   } catch(SQLException e) {
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

<!-- scott_88 / tiger


CREATE TABLE member_tbl(
    member_id   VARCHAR2(20) PRIMARY KEY,
    member_password VARCHAR2(20),
    member_name VARCHAR2(20),
    member_address  VARCHAR2(100)
);

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('hong', '1234', '홍길동', '서울');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('kim', '1234', '김정수', '인천');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('park1', '1234', '박지훈', '제주도');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('park2', '1234', '박나래', '안양');

INSERT INTO member_tbl(member_id, member_password, member_name, member_address)
VALUES('park3', '1234', '박명수', '부천');

COMMIT;

-->