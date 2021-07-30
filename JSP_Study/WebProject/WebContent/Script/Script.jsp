<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" %> 
    <%-- <%@ %> : 디렉티브[지시문] JSP 속성 지정 , page : 지시어 language ,contentType : 속성 --%>
	<%-- page : 환경설정 , language : java용어로 해석 , contentType 클라이언트에게 줄 파일의 종류 선언 --%>
	<%-- java.util 다 가져오기 [java.util. 생략가능] --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요. <br>
<!-- html 주석 : 이것만 소스보기에서 나옴-->
<%-- JSP주석 --%>
<% 
	// 스크립트릿 주석내에 주석 /* */
	String bookTitle = "JSP 기초";
	String author = "김동양";
	Date da = new Date();
	out.println("<h5>" + bookTitle + "</h5>");
	// 내장객체 = 기본객체 이미 만들어져 있는 객체 : out
%> <%-- <% : 스크립트릿 자바문 선언 --%>
<%! String dddd = "난 선언부"; %>
<%-- <%! : 선언문 변수 선언은 : 필드(전역) : dddd, 스크립트릿에서 변수 선언은 : 지역변수 : bookTitle --%>
<h5> <%= bookTitle %></h5>
<%-- <%= : 표현식 [변수나 메소드 호출] --%>
저자는 (<%= author %>)입니다.
현재 날짜와 시간은 : <%= da %>
</body>
</html>