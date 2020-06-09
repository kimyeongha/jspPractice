<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자를 입력하는 폼</title>
</head>
<body>
    <h1>숫자를 입력하세요</h1>
    <form action= "ifTestPro.jsp"  method="post">  <!-- method get/post 가 있는데 post같은 경우 url주소에 name 값을 표시하지 않음 -->
            <input type="text" name= "number" >  <!-- 변수명을 name 으로 준다 . 그 값을 변수의 값으로  -->
              <input type="text" name= "id">
                <input type="text" name= "password">
            <input type="submit" value="입력완료">
    
    
    </form>
</body>
</html>