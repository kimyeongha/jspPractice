<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ex01Pro.jsp" method="post">
		<h1>아이디와 비밀번호를 입력하시오</h1>
		<table border="1">
			<tr>
				<td>id</td>
				<td><input type="text" name="account"></td>
				<br>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password2"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="제출하기"></td>
			</tr>

		</table>

	</form>
</body>
</html>