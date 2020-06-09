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
<h2>memeber1 테이블 레코드 표시</h2>
<table>
  <tr>
     <td>아이디</td><td>패스워드</td><td>이름</td><td>생년월일</td><td>주소</td><td>성별</td>
  </tr>
 <%
	request.setCharacterEncoding("utf-8");
     Connection conn= null;
     PreparedStatement pstmt = null; 
     String str = "";
     ResultSet rs= null;
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
			String sql = "select * from memeber1";
			pstmt = conn.prepareStatement(sql);
		
			rs=pstmt.executeQuery();//select 된 결과  리턴타입이 resultset이니까 결과를 담는다.
			while(rs.next()){
			String id  =  rs.getString("id");
			String pw= rs.getString("password");
			String name=rs.getString("name");
			
			
			}
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
</table>
</body>
</html>