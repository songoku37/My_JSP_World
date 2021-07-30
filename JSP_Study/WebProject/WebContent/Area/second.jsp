<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 2번째 페이지</h1>

<h3> setAttribute 내용 : <%= (String)application.getAttribute("testId") %> </h3>
<h3> setAttribute 내용 : <%= (String)application.getAttribute("wrongAttribute") %> </h3>
<%-- index에 선언한 session 범위 testId를 가져올때 사용 법 --%>

</body>
</html>