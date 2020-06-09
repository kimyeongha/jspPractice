<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <table>
           <tr>
             <td colspan="2">Application영역에 </td>
           </tr>
           <tr>
             <td>이름</td><td><%= application.getAttribute("name") %></td>
           </tr>
           <tr>
             <td>id</td><td><%= application.getAttribute("id") %></td>
           </tr>
      </table>
      
      <table>
           <tr>
             <td colspan="2">session영역에 </td>
           </tr>
           <tr>
             <td>email</td><td><%= session.getAttribute("email") %></td>
           </tr>
           <tr>
             <td>주소</td><td><%= session.getAttribute("address") %></td>
           </tr>
           <tr>
             <td>전화번호</td><td><%= session.getAttribute("tel") %></td>
           </tr>
      </table>
</body>
</html>