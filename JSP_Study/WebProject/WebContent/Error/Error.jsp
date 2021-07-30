<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage = "true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch05 : 에러페이지</title>
</head>
<body>
<H2>처리중 문제가 발생했습니다.</H2>
<hr>
<table>
	<tr style="background-color:pink">
	<td>
	관리자에게 문의해주세요..<br>
	빠른 시일내 복구하겠습니다
	<hr>
	<%= exception %> 
	<%-- isErrorPage는 무슨 에러인지 보여주게 한다 : exception --%>
	<hr>
	</td>
	</tr>
</table>
</body>
</html>