<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %> 
<%-- 내장 객체(특별한 상황에 쓰이는)이기 때문에 객체 생성 없이 그냥 메소드 사용 가능 --%>
<%-- request된 것들이 한글이라면 받을 때 문제가 안 생기도록 utf-8로 설정 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align = "center">
	<H2>request 테스트 결과 - 1</H2>
	<HR>
	
	<table border = 1 cellspacing ="1" cellpadding = "5">
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("username") %>
		</tr>
		<tr>
			<td>직업</td>
			<td><%= request.getParameter("job") %></td>
		</tr>
		<tr>
			<td>지역</td>
			<td>
			<%
				String temp[] = request.getParameterValues("local");
				out.println(temp[0]);
			%></td>
		</tr>
		<tr>
			<td>관심분야</td>
			<td>
				<%
					String favorites[] = request.getParameterValues("favorite");
					//getParameterValues 문자열을 반환
				
					for (int i = 0 ; i < favorites.length; i++){
						out.println(favorites[i]+"<BR>");
					}
				%>
			</td>
		</tr>
	</table>
	<HR>
	<H2> request 테스트 결과 - 2 </H2>
	<table border = 0 >
		<tr> 
			<td>
				1. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %> <BR> <%-- IP주소 --%>
				2. 요청 메서드 : <%= request.getMethod() %> <BR> <%-- 어떤 방식으로 보내는지 Post get --%>
				<% Cookie cookie[] = request.getCookies(); %>
				3. <%= cookie[0].getName() %>에 설정된 쿠키값 : <%= cookie[0].getValue() %><BR>
				4. 프로토콜 : <%= request.getProtocol() %>
			</td>
		</tr>
	</table>
</div>
</body>
</html>