<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>학번,이름, 학년 선택과목을 입력하는 폼</h1>
<form action="requestInsidePro.jsp" method="post">
학번:<input type="text" name="studentNumber"><br>
이름:<input type="text" name="studentName"><br>
학년:1학년<input type="radio" name="studentGrade" value="1">
      2학년<input type="radio" name="studentGrade" value="2">
      3학년<input type="radio" name="studentGrade" value="3">
      4학년<input type="radio" name="studentGrade" value="4"><br>
선택과목:
   <select name="subject">
     <option value="java">java</option>
     <option value="jsp">jsp</option>
     <option value="html">html</option> 
   

   
   </select> <br>
      <input type="submit" value="제출하기">
</form>

</body>
</html>