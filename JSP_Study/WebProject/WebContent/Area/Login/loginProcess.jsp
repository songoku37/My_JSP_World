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
	String id = request.getParameter("id");
	if ( id.equals("dong")){
		session.setAttribute("MEMBERID",id);
		session.setAttribute("NAME","김동양");
		response.sendRedirect("loginForm.jsp");
	}else{
		out.print("<html>");
		out.print("<head><title> 로그인에 실패 </title></head>");
		out.print("<body>");
		out.print("잘못된 아이디입니다..");
		out.print("</body");
		out.print("</html>");
	}
%>
</body>
</html>