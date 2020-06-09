<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>odbc 드라이브 테스트</h2>
  <%
    Connection conn=null; // db연결을 담당하는 클래스 Connection
      try{
    	 //url 정보 
    	  String url= "jdbc:mysql://localhost:3306/example?serverTimezone=Asia/Seoul"; 
    	  // id 
    	   String id= "root";
    	  // password
    	  String password = "1234";
    	  // Drive Load
    	  Class.forName("com.mysql.jdbc.Driver"); //이제 필수가 아니라네 18년 기준으로 자동으로 됨
    	  //연결
    	  conn=DriverManager.getConnection(url,id,password);
    	  out.println("제대로 연결 되었습니다.");
      }catch(Exception e){
    	  e.printStackTrace();
      }
    
  %>
</body>
</html>