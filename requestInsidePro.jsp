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
     String num = request.getParameter("studentNumber");
     String name= request.getParameter("studentName");
        int grade = Integer.parseInt(request.getParameter("studentGrade"));
       String subject= request.getParameter("subject");
     
     
     
     
     
     
     %>
     
     <table>
       <tr>
        <td>학번</td> <td><%= num  %></td> 
       </tr>
       <tr>
        <td>이름</td> <td><%= name  %></td> 
       </tr>
       <tr>
        <td>학년</td> <td><%= grade  %> 학년</td> 
       </tr>
       <tr>
        <td>선택과목</td> <td><%= subject  %></td> 
       </tr>
     
     
     
     
     
     
     
     </table>
</body>
</html>