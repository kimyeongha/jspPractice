<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ifElseTestForm을 받는 서버</title>
</head>
<body>
 <%
       request.setCharacterEncoding("utf-8");
       String name= request.getParameter("name");     
      int age= Integer.parseInt(request.getParameter("age"));
      if(age>=18){
            out.println("<b>"+name+"</b>님의 나이는 성인입니다.");
      }else{
    	  out.println(name+"님의 나이는 미성년자입니다.");
      }
 
 
 
 
 
 %>
</body>
</html>