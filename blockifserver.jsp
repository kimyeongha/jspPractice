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
       request.setCharacterEncoding("utf-8");   //글자 깨지니까 tomcat .sever.xml 에서 안꺠지는 uff-18설정한것을 가저옴
      String name =request.getParameter("name");  // 
      String local=request.getParameter("Local");
      String tel = request.getParameter("tel");
      String localNum=" " ;
      if(local.equals("서울")){
    	  localNum="02";
      }else if(local.equals("경기")){
    	  localNum="031";
      }else{
    	  localNum="033";
      }
      out.println(name+"님의 전화번호는"+localNum+")"+tel+"입니다");
  %>

</body>
</html>