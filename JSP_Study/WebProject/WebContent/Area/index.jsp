<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- page 영역(pageContext)[1개 JSP파일] <= 
		 request 영역(request)[1개 화면에 해당되는 크기] <
		 session 영역(session)[[웹브라우저영역]  <
		 application 영역[그 상위버전 새 브라우저 열어도 남아있음, 서버에 남아 있어서](application) 
	--%>
	<h5> 4개의 영역과 속성 알아보기</h5>
	
	<% application.setAttribute("testId", "Yongmi"); %> 
	<%-- testId(속성) = "Yongmi" 
	pageContext는 jsp 한 페이지기 때문에 범위를 굳이 안 해줘도 된다 --%>  
	<form method = "post" action = "second.jsp">
		<input type ="submit" value = "2번째 페이지로">
	</form>
</body>
</html>