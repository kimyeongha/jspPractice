<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
td{width:50 ; height:50; text-align:center;
}</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
          String id=(String)session.getAttribute("id");
     String password= (String)session.getAttribute("password");
     String log_id = request.getParameter("log_id");
     String log_password = request.getParameter("log_password");
   String  bullid = " ";
     if(id.equals(log_id)&&password.equals(log_password)){
    	 out.println("로그인되었습니다");
    	  bullid=id;
     }else{
    	 out.println("로그인에 실패 하였습니다");
    	 response.sendRedirect("ex03_login.jsp");
     }
    		 
  %>
     <table border="1" width=300 height =300>
        <tr>
        <td colspan="4">게시판</td>
        </tr>
           <tr>
        <td >게시판번호</td>    <td >제목</td>    <td >작성자</td>    <td >작성자id</td>
        </tr>
           <tr>
        <td ></td>    <td >   </td>    <td ></td>    <td ><%= bullid %></td>
        </tr>
           <tr>
        <td ></td>    <td >    </td>    <td >    </td>    <td >     </td>
        </tr>
     
     
     </table>
  
</body>
</html>