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
	<form action=>
		<%
			request.setCharacterEncoding("utf-8");
			Connection conn = null;
			PreparedStatement pstmt = null;
			String str = "";
			ResultSet rs = null;
			String id = request.getParameter("id");
			int pw = Integer.parseInt(request.getParameter("pw"));
			String name = request.getParameter("name");

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
				String sql = " select id,password from memeber1 where id= ? and password= ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id); //번째 물음표에 id값을 넣어라 
				pstmt.setInt(2, pw);

				rs = pstmt.executeQuery();//select 된 결과  리턴타입이 resultset이니까 결과를 담는다.  //ctrl enter 같은 느낌임 select는 excutequery
				if (rs.next()) {
					sql = " update memeber1 set name= ? where id= ? ";

					pstmt.setString(1, name); //번째 물음표에 id값을 넣어라 
					pstmt.setString(2, id);
					
					pstmt.executeQuery();

				} else {
					out.println("아이디또는 비밀번호가 틀렸습니다");
				}
				str = "회원님으 이름이 변경되었습니다. ";
			} catch (Exception e) {
				e.printStackTrace();
				str = "알수 없는 오류입니다.";
			} finally { //일단 한번 하고 나면 다음 사용자를 위해 접속을 끈는다 그렇지않으면 계속 연결된체로 누적~ 메모리 과부하 걸림
				if (pstmt != null) {
					pstmt.close();

				}
				if (conn != null) {
					conn.close();
				}
			}
		%>



	</form>
</body>
</html>