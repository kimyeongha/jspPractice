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
		String contents = request.getParameter("content");
		String writer = request.getParameter("writer");

		PreparedStatement pstmt = null; //sql문장 실행  select를 하는 delete를 하든 그것을 싱행하는 클래스.
		String str = "";// 메세지 출력 성공여부 알려주려고

		Connection conn = null;

		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
			conn = ds.getConnection();
			// sql문장이 들어간다 .
				String sql = "insert board(title,contents,writer)values(?,?,?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title); //번째 물음표에 id값을 넣어라 
			pstmt.setString(2,contents);
			pstmt.setString(3, writer);
			pstmt.executeUpdate();
		
			
			out.println("<h3>추가 되었습니다. </h3>");
		} catch (Exception e) {
			out.println("<h3>추가 안됬습니다. </h3>");
			e.printStackTrace();
		}
	%>
</body>
</html>