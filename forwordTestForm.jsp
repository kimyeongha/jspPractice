<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forward 액션태그</h2>
	<form action="forwardTest.jsp" method="post">
		아이디:<input type="text" name="id"> <br>
		 취미 :<select name="hobby">
			<option value="football">축구</option>
			<option value="baseball">야구</option>
			<option value="basketball">농구</option>


		</select><br>
		 <input type="submit" value="입력완료 ">
	</form>
</body>
</html>