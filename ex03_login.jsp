<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td{width:50 ; height:50; text-align:center;
}</style>

</head>
<body>
  <%
       request.setCharacterEncoding("utf-8");
       String id = request.getParameter("id");
       String password = request.getParameter("password");
       if(id!=null&&password !=null){
       session.setAttribute("password", password);
        session.setAttribute("id",id);
       }
  %>
  <form action="ex03_bulletin.jsp">
    <table>
         <tr>
         <td colspan="2"> 로그인</td>
         </tr>
         <tr>
         <td > 아이디</td><td > <input type="text"  name="log_id"></td>
         </tr>
          <tr>
         <td > 비밀번호</td><td > <input type="text"  name="log_password"></td>
         </tr>
         <tr>
         <td colspan="2"> <input type="submit" value="가입하기"></td>
         </tr>
    </table>
  
  </form>
  

</body>
</html>