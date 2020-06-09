<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <p>스크립트요소 예제 </p>  
   <!-- html 주석 --> 
  <%!
  //전역변수 선언
  String str = "나는전역변수야";
  // 메소드 선언
  String getstr(){
	   return  str;
  }
          
  %>

  <%
  //자바  지역변수 선언
  String str2= " 나는 지역변수야 ";
  
  %>
  
   스크립트릿에서 선언한 변수는 str2  <%= str2 %>  <br>
   선언문에서 선언한 변수 str1 <%= getstr() %>
</body>
</html>