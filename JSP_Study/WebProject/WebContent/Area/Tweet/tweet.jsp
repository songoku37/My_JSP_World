<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
<!DOCTYPE html>

<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	Object username = session.getAttribute("user");
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	application.log("msgs는" + msgs);
	// msgs 는 null값이 처음에 들어가게 됨
	// application 영역으로 잡는 이유는 메세지를 보낸 로그들이 twitter_list에 보여져야 하기 떄문에
	
	if(msgs == null) {
		msgs = new ArrayList<String>(); // 빈 배열이 들어있음 []
		application.log("msgs2는" + msgs);
		application.setAttribute("msgs",msgs);
	}
	
	// 사용자 이름, 메시지, 날짜 정보를 포함하여 ArrayList에 추가
	Date date = new Date();
	SimpleDateFormat f = new SimpleDateFormat("E MMM dd HH:mm", Locale.KOREA);
	msgs.add(username+" :: " + msg + " , "+ f.format(date));
	
	// 이클립스 콘솔창에 로그를 띄움 확인용
	application.log(msg+"추가됨");
	
	// 목록 화면으로 리다이렉팅
	response.sendRedirect("twitter_list.jsp");
%>