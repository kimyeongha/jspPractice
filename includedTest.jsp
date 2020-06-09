<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
     request.setCharacterEncoding("utf-8");
     String name= request.getParameter("name");  // 이게 include direc 에서는 안됨 

%>

  includedTest.jsp의 내용입니다.
  <%= name // 이게 include direc 에서는 안됨 
  %>님 안녕하세요  
</body>
</html>