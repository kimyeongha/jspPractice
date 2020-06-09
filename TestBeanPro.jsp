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
   
   
   
   %>
   
   <jsp:useBean id="testbean" class="ch09.bean.TestJavaBean" >  <!-- 여기서 id는 bean의 이름을 내가 정하는거  -->
      <jsp:setProperty name="testbean"  property="name" />
      
   </jsp:useBean>
   <h2>자바빈을 사용하는jsp페이지</h2>
   입력된 이름은 <jsp:getProperty property= "name" name= "testbean"/>
</body>
</html>