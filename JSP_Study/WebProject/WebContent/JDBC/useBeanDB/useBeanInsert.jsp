<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.member.*"%>

<jsp:useBean class = "com.member.RegisterBean" id= "regBean" scope ="session"/>
<jsp:setProperty property ="*" name = "regBean"/>
<jsp:useBean class = "com.member.RegisterMgr" id ="regMgr" scope = "session"/>

<% regMgr.insertMember(regBean);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>