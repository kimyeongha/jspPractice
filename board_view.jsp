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
 <form>
   <table border="1">
   
   
   
     <tr>
        <td>글번호</td><td>제목</td><td>작성자</td><td>작성일</td>
     </tr>
     <%
		request.setCharacterEncoding("utf-8");
		PreparedStatement pstmt = null; //sql문장 실행  select를 하는 delete를 하든 그것을 싱행하는 클래스.
		String str = "";// 메세지 출력 성공여부 알려주려고

		Connection conn = null;
            ResultSet rs= null; //select 결과를 담는 변수 ;
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
			conn = ds.getConnection();
			// sql문장이 들어간다 .
				String sql = "select number,title,writer,writedate from board ";
			pstmt = conn.prepareStatement(sql);
		
		rs	= pstmt.executeQuery();   
		while(rs.next()){  //결과가 다음에 있느냐 하는 메소드
		String no= 	rs.getString("number");
		String title= 	rs.getString("title");
		String writer= 	rs.getString("writer");
		String write_date= 	rs.getString("writedate");
		                                                          %>
		<tr>
        <td><%= no %></td>
     <td> <a href="board_modify.jsp?bno=<%= no %>"> <%=title %></a></td> <%-- ? 변수이름과보낼것을적으면 그걸 같이 보냄 --%>
        <td><%= writer %></td>
        <td><%= write_date %></td>
     </tr>
		<%
		
		}
		
	
			out.println("<h3>추가 되었습니다. </h3>");
		} catch (Exception e) {
			out.println("<h3>추가 안됬습니다. </h3>");
			e.printStackTrace();
		}
	
	
	
	%>
	
	 
      
	 
   </table>
     
 </form> 

</body>
</html>