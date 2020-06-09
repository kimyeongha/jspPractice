<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역번호를 알아보자</title>
</head>
<body>
	<h2>이름과 전화번호를 입력하세요</h2>
	<form action="blockifserver.jsp" method="post">
		이름:<input type="text" name="name"><br> 전화번호: <select
			name="Local">
			<option value="서울">서울</option>
			<option value="경기">경기</option>
			<option value="강원">강원</option>

		</select> - <input type="text" name="tel"> <br>
		 <input	type="submit" value="입력완료"> <br>

	</form>
</body>
</html>