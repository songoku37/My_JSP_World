<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "Error.jsp" %>
   	<%-- errorPage는 에러가 날시 저기로 연결시켜줌 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch05 : Error Test</title>
</head>
<body>
<H2>Error 테스트 페이지</H2>
<%
	String str = "test";
	int i = Integer.parseInt(str);
%>
</body>
</html>