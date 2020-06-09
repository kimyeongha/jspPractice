<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
           %>
           
<!DOCTYPE html>
<html>
<head>
 <link rel= "stylesheet" type="text/css"  href=css/index.css>
 <script type="text/javascript" src="js/index.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
  <%
     String sid =(String)session.getAttribute("id");
     
  
  
  %>
    로그인되었습니다.
    어서오세요 <%= sid %>님
    <a href="sessionLogout.jsp">로그아웃</a>
</body>
</html>