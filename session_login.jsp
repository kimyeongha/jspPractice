<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     
     <form action="sessionLogin_pro.jsp" method="post">
     <table border="1">
       <tr>
           <td colspan="2">session을 통한 로그인</td>
       </tr>
       <tr>
           <td>아이디</td><td><input type="text" name="id"></td>
       </tr>
        <tr>
           <td>password</td><td><input type="password" name="pw"></td>
       </tr>
         <tr>
           <td colspan="2"><input type="submit" value="로그인하기"></td>
       </tr>
       
     </table>
     </form>
</body>
</html>