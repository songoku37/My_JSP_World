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

<header> <!-- 상단 부분  -->
	<%@ include file= "05top.jsp" %>
	<% out.println(a); %>	
	<%-- top.jsp에 코드를 카피해서 가져와서 실행 <%@ 지시문이라서 강하기 때문에 코드 카피 --%>
</header>

<section> <!-- linear layout과 유사 여러개 사용 가능 -->
	<h2> 메인 페이지입니다. </h2>
</section>

<footer> <!-- 하단 부분 -->
	<jsp:include page = "05footer.jsp" flush = "false"/>
	<%-- 액션태그는 해당 footer.jsp로 가서 실행후 다시 돌아감 main으로 돌아감
	main에 선언한 a변수가 있으면 그 a변수를 출력하라는 footer.jsp에 적어둬도 사용 불가
	--%>
	<% out.println(a); %>
	
</footer>

</body>
</html>