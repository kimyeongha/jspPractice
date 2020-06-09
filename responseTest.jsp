<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   현재 페이지의 페이지명은 reponseTest.jsp 입니다
 <%
   response.sendRedirect("responseTest2.jsp");  // 어라 responseTest2가 실행 되네? 사용하는 예 일단 회원가입 양식 다 써서 보내주면 다음 페이지로 이동시킬떄 .
		
 
 %>  
 
</body>
</html>