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
		String bno = request.getParameter("bno");
		PreparedStatement pstmt = null; //sql문장 실행  select를 하는 delete를 하든 그것을 싱행하는 클래스.
		String str = "";// 메세지 출력 성공여부 알려주려고

		Connection conn = null;
		ResultSet rs = null; //select 결과를 담는 변수 ;
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
			conn = ds.getConnection();
			// sql문장이 들어간다 .
			String sql = "select title,contents,writer from board where number=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bno); //번째 물음표에 id값을 넣어라 
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String title = rs.getString("title");
				String content = rs.getString("contents");
				String writer = rs.getString("writer");
	%>

	<form action="board_modify_pro.jsp" method="post">

		<table border="1">
			<tr>
				<td colspan="2">게시판 글수정</td>
			</tr>
			<tr>
				<td>글번호</td>
				<td ><%=bno%></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" value=<%= title %> name="title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content"><%= content %></textarea></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" value=<%= writer %> readonly name="writer"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="작성완료"></td>
			</tr>
		</table>
	</form>

	<%
		}
			out.println("<h3>추가 되었습니다. </h3>");
		} catch (Exception e) {
			out.println("<h3>추가 안됬습니다. </h3>");
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