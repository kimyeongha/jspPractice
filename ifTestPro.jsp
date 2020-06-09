<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ifTestForm.jsp에서 넘어온 숫자를 처리하기 위한 서버</title>
</head>
<body>
    <h1>ifTestForm.jsp에서 넘어온 숫자를 처리하기 위한 서버</h1>
    <%
    String strnumber=request.getParameter("number");
     int number=Integer.parseInt(strnumber);
    if(number<=10){
   %> 
     입력받은숫자는 <%=number %>입니다
    <%} %>
    
   
    
</body>
</html>