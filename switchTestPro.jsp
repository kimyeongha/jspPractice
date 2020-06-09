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
 int dong =Integer.parseInt(request.getParameter("dong"));
 String localName= " ";    
  //중구를 선택하면 학성동, 복산동,성남동
 // 남구를 선택하면 무거동.달동,신정동
 // 동구를 선택하면 방어동,화정동,일산동
 //북구를 선택하면 호계동,매곡동,염포동
 //울주군을 선택하면  언양읍,범서읍.온산읍
switch(dong){
case 0 :
	    localName = "무거동, 복산동, 성남동";
	
case 1:
	  localName="무거동,달동,신정동";
	break;
case 2: localName="방어동,화정동,일산동";
	break;
case 3: localName="호계동,매곡동,염포동";
	break;
case 4: localName=" 언양읍,범서읍.온산읍";
	break;


}
 out.println("주거하시는 지역은"+localName+"입니다");
%>


</body>
</html>