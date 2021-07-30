<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.* , java.util.*, com.member.*" %>
<jsp:useBean class="com.member.RegisterMgr" id="regMgr" scope="session" />

MEMBMER 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>아이디</td><td>비번</td><td>이름</td><td>이메일</td>
</tr>
<%
        Vector vResult= regMgr.getMemberList();
		
		for(int i=0; i<vResult.size(); i++){
		RegisterBean rs = (RegisterBean)vResult.get(i);
		%>
		<tr> 
		<td align="center"><%= rs.getMemberID() %></td>
		<td align="center"><%= rs.getPassword() %></td>
		<td align="center"><%= rs.getName() %></td>
		<td align="center"><%= rs.getEmail()%></td>
		
		</tr>
		<%}%>


</table>


