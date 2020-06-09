<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>memeber1테이블에 레코드 추가</h2>
  
  <form action="InsertTestPro.jsp" method="post">
  id:  <input type="text" name="id"><br>
  password:<input type="password" name="pw"><br>
  name: <input type="text" name="name"><br>
  address: <input type="text" name="address"><br>
  age:<input type="text" name="age"><br>
  gender:<input type="text" name="gender"><br>
   <input type="submit" value="전송하기">
   </form>
</body>
</html>