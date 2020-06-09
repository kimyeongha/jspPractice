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
          String[ ] hobby=new String [2];
        		  hobby=request.getParameterValues("hobby");
        
         /*  for(int i= 0; i<hobby.length;i++){
             out.println(hobby[i]+"<br>");
           }
        */
       int i= 0;
        while(i<hobby.length){
    	   out.println(hobby[i]+"<br>");
    	   
       }
        
        %>
</body>
</html>