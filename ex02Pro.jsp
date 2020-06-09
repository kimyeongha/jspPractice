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
          int  kai=Integer.parseInt(request.getParameter("number"));
          out.println("<table border='1'><tr><td>글번호</td><td>글제목</td><td>글내용</td><tr>");
          for(int i =kai; 0<i; i--){
        	  out.println("<tr><td>"+(i+1)+"</td><td>"+"제목"+(i+1)+"</td><td>"+"내용"+(i+1)+"</td></tr>");
          }
   
       
          out.println("</table>");
       
       %>
</body>
</html>