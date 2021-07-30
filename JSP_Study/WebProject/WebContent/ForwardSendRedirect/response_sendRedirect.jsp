<% response.sendRedirect("page_control_end.jsp"); %>
<!--클라이언트가 a.jsp 를 요청했는데 a.jsp가 b.jsp로 가라고 response.sendRedirect를 하면 b.jsp로 바로 가는게 아니라
클라이언트에게 b.jsp로 가라고 명령하는 거로 클라이언트에게 간다음 거기서 b.jsp로 이동하기 때문에 받아왔던 변수들은 다 날아가게 된다
response가 강제 ~ 해라
-->

<%//	request.setCharacterEncoding("utf-8"); // post방식을 사용할때 utf-8 캐릭터셋 맞춰주기 + 한글 쓸 경우 사용 %> 
