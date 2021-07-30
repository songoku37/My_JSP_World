<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="05style.css">
</head>
<body>

<header>
	<jsp:include page = "05top.jsp" flush = "false"/>
	<%-- <% out.print(a); %> --%>
</header>

<section>
	<h2> 첫번째 서브페이지입니다!!!!! </h2>
</section>

<footer>
	<jsp:include page = "05footer.jsp" flush = "false"/>
	<%-- <% out.print(a); %> --%>
</footer>

</body>
</html>