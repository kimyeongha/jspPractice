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
      String name = request.getParameter("pageName");
      String pageName= request.getParameter("pageName");
      pageName += ".jsp";
   
   %>
   includeTestForm에 
   <jsp:include page="<%= pageName %>" flush ="false"></jsp:include>
   포함 시켜라 
</body>
</html>