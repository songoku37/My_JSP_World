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
	String id = (String)session.getAttribute("MEMBERID");
    // setAttribute()을 안 써도 getAttribute를 사용 가능 [null값]
    // Object를 반환하기 때문에 그 밑에 있는 String 하위 클래스로 캐스팅 가능
	if ( id == null){
%>
		<form action = "loginProcess.jsp" method = "get">
			아이디 : <input type = "text" name = "id" size = "10"> <br>
			비밀번호 : <input type = "password" name = "pwd" size = "10"> <br>
			<input type = "submit" value ="로그인">
		</form>
<%	}else{	
	out.print(id + "님");
%>
	<form action = "logoutProcess.jsp" method = "get">
		<input type = "submit" value = "로그아웃">
	</form>
<%	
	}
%>

	
</body>
</html>