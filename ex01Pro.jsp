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
                      String id = request.getParameter("account");
           	String password = request.getParameter("password2");
           	if (id.equals("abcd") && password.equals("z1234")) {
           		out.println("로그인에성공하셨습니다");

           	} else {
           		out.println("로그인에실패하셨습니다.");
           	}
           %>
</body>
</html>