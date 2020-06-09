<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Insert title here</title>
</head>
<body>
	<div id="all">
		<div id="top"><jsp:include page="main_top.jsp"/>
		
		</div>
		
		<div id="menu">
		<jsp:include page="main_menu.jsp"/>	
		</div>
		<div id="contents"><jsp:include page="main_contents.jsp" />
		
		
		</div>
		
		<div id ="bottom">
		<jsp:include page="main_bottom.jsp"/>
		</div>





	</div>
</body>
</html>