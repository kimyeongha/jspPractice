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
   String cookieName= "id";
   Cookie cookie= new Cookie("id","abcd");  //1.cookie 영역에 abcd라는 값을 id변수에 저장 
   cookie.setMaxAge(60*2);  //2.2분동안 쿠키 저장
   response.addCookie(cookie);  //3.1에서 생성된 쿠키를 reponse 객체에 추가 . 반드시 !

   
   %>
<h2>쿠키를 생성하는 페이지</h2>
<%= cookieName %>  쿠키가 생성되었습니다 <br>
<form action="useCookie.jsp" method="post">
    <input type="submit" value="생성된 쿠키확인">
    


</form>
</body>
</html>