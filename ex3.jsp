<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td{width:50 ; height:50; text-align:center;

}
#login{
   background-color:blue; color :white;
   
}
</style>

</head>
<body>
  <form action="ex03_login.jsp" method="post">
     <table border="1">
     <tr>
       <td colspan="2" >회원가입</td>
     </tr>
      <tr>
       <td >아이디</td><td ><input type="text" name="id"></td>
     </tr>
     <tr>
       <td >비밀번호</td><td ><input type="password" name="password"></td>
     </tr>
     <tr>
       <td >비밀번호확인</td><td ><input type="password" name="repassword"></td>
     </tr>
      <tr>
       <td >이름</td><td ><input type="text" name="name"></td>
     </tr>
      <tr>
       <td >생년월일</td><td ><input type="text" name="birth"></td>
     </tr>
     <tr>
       <td >성별</td><td >남<input type="radio" name="gender" value="male">여<input type="radio" name="gender" value="female"></td>
     </tr>
      <tr>
       <td >휴대전화번호</td><td ><input type="text" name="tel"></td>
     </tr>
     <tr>
       <td colspan="2"><input type="submit" value="가입하기" id="login"></td>
     </tr>
  
  </table>
  </form>

</body>
</html>