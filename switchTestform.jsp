<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>switch문</title>
</head>
<body>
<h2>구를 입력하세요</h2>
<form action="switchTestPro.jsp"  method="post">
   <input type="radio" name="dong" value="0" checked>중구
   <input type="radio" name="dong" value="1" >남구 
   <input type="radio" name="dong" value="2" >동구 
   <input type="radio" name="dong" value="3" >북구
   <input type="radio" name="dong" value="4" >울주군
<input type="submit" value="전송" checked>   

</form>
</body>
</html>