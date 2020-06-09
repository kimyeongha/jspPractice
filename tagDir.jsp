<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <c:set var="a" value= "20"></c:set>
 <c:forEach begin="1" end="10" step= "1">
 <c:choose>
 <c:when test=" ${ a>10}">
       <p><c:out value="10보다크다"></c:out> </p>
</c:when>
 <c:otherwise>
           <p><c:out value="10보다 작다"></c:out></p>
 </c:otherwise> 
</c:choose>
</c:forEach>
</body>
</html>