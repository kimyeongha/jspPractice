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
		String id = request.getParameter("id");
		String hobby = request.getParameter("hobby");
		// 던진 데이터를 들고 이동시킨다.
	%>
	포워딩하는 페이지 forwardTest.jsp로 절대 표시되지 않습니다.
	<jsp:forward page="forwardToTest.jsp">
		<jsp:param value="<%=id%>" name="id" />
		<jsp:param value="<%=hobby%>" name="hobby" />
	</jsp:forward>
	표시 되지 않습니다.
</body>
</html>