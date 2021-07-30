<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2>forward action 및 sendRedirect() 결과</H2>
<HR>
이름 : <%= request.getParameter("username") %> <BR> 
<%-- null값 왜냐하면 control에 요청 Redirect에서 control_end를 요청해라 지시 다시 
클라이언트가 control_end 요청 즉 username은 비어있음 --%>
<%-- forward로 한 경우 control username값하고 forword에 tel도 같이 넘어옴 --%>
전화번호 : <%= request.getParameter("tel") %>	
</body>
</html>