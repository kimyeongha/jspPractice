<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String age =(request.getParameter("age"));
		String gender = request.getParameter("gender");
		PreparedStatement pstmt = null; //sql문장 실행  select를 하는 delete를 하든 그것을 싱행하는 클래스.
		String str = "";// 메세지 출력 성공여부 알려주려고

		Connection conn = null; // db연결을 담당하는 인터페이스 Connection
		try {
			//url 정보 
			String url = "jdbc:mysql://localhost:3306/example?serverTimezone=Asia/Seoul";
			// id 
			String id2 = "root";
			// password
			String password = "1234";
			// Drive Load
			Class.forName("com.mysql.jdbc.Driver"); //이제 필수가 아니라네 18년 기준으로 자동으로 됨
			//연결
			conn = DriverManager.getConnection(url, id2, password);
			//out.println("제대로 연결 되었습니다.");
			//sql 문장을 여기서 입력 
			String sql = "insert memeber1(id,name,address,gender,age)values(?,?,?,?,?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id); //번째 물음표에 id값을 넣어라 
			pstmt.setString(2, name);
			pstmt.setString(3, address);
			pstmt.setString(4, gender);
			pstmt.setString(5, age);
			
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
	<%=str%>
</body>
</html>