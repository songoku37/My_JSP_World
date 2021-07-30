<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:forward page="page_control_end.jsp">
	<jsp:param name = "tel" value = "000-000-0000"/> 
</jsp:forward>

<%-- param태그는 추가적으로 전달하고 싶은 태그 --%>
<%-- page 저기로 이동시키면서 name 하고 value를 같이 보냄 --%>

