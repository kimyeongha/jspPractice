<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
	
		PreparedStatement pstmt = null; //sql문장 실행  select를 하는 delete를 하든 그것을 싱행하는 클래스.
		String str = "";// 메세지 출력 성공여부 알려주려고
		 
		Connection conn = null; // db연결을 담당하는 인터페이스 Connection
		try {
			
		
		
			Context init = new InitialContext();
			   DataSource ds =(DataSource)init.lookup("java:comp/env/jdbc/mysql");
			    conn=ds.getConnection();
			
			//out.println("제대로 연결 되었습니다.");
			//sql 문장을 여기서 입력 
			String sql = "update board set title=? contents=? where no=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title); //번째 물음표에 id값을 넣어라 
			pstmt.setString(2, contents);
			
			
			
			pstmt.executeUpdate();
			str = "memeber1테이블에 새로운 레코드를 추가했습니다 ";
		} catch (Exception e) {
			e.printStackTrace();
			str = "memeber1테이블에 새로운 레코드 추가를 실패했습니다";
		} finally { //일단 한번 하고 나면 다음 사용자를 위해 접속을 끈는다 그렇지않으면 계속 연결된체로 누적~ 메모리 과부하 걸림
			if (pstmt != null) {
				pstmt.close();

			}
			if (conn != null) {
				conn.close();
			}
		}
	%>

</body>
</html>