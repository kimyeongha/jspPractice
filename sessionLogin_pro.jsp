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
   String id= request.getParameter("id");
   String pw= request.getParameter("pw");
   PreparedStatement pstmt = null; //sql문장 실행  select를 하는 delete를 하든 그것을 싱행하는 클래스.
	String str = "";// 메세지 출력 성공여부 알려주려고
	Connection conn = null;
       ResultSet rs= null; //select 결과를 담는 변수 ;
       try{
    	   Context init = new InitialContext();
    	   DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
			conn = ds.getConnection();
			String sql = "select id password  from memeber1 where password=? and id=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, id);//번째 물음표에 id값을 넣어라 
			rs = pstmt.executeQuery();
			if (rs.next()) {               // 받은결과를 select 했는데 있네? 그럼 세션에 저장
			session.setAttribute("id",id);
			session.setAttribute("pw",pw);
				response.sendRedirect("index.jsp");
				out.println("<h3>로그인에 성공하였습니다 . </h3>");
       }else{
    	   out.println("로그인에 실패했습니다 ");
    		response.sendRedirect("session_login.jsp");
    	   
       }
			
       }
			catch (Exception e) {
				out.println("<h3>로그인에 실패하였습니다. </h3>");
				e.printStackTrace();
			} finally {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
				if (rs != null) {
					rs.close();
				}
			}
   

%>
</body>
</html>