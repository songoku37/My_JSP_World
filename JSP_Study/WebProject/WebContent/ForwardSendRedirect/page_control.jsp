<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2>forward , sendRedirect 테스트</H2>
<HR>
<form method = post action = "forward_action2.jsp">
	forward action : <input type = text name = username>
	<input type = submit value = "확인"> <!-- URL이 forward_action을 가르킨다 -->
</form>

<form method = post action = "response_sendRedirect.jsp">
	response.sendRedirect : <input type = text name = username>
	<input type = submit value = "확인"> <!-- URL이 control_end를 가르킨다 -->
</form>
</body>
</html>