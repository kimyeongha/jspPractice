<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
프로토콜:  <%=  request.getProtocol() %> <br>
서버명 : <%= request.getServerName() %><br>
요청방식 <%= request.getMethod() %><br>
</body>
</html>