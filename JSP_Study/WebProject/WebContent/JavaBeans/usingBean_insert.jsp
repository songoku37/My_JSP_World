<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>
<%  request.setCharacterEncoding("utf-8");%>

<jsp:useBean class = "ch06.memberRegister.RegisterBean" id = "regBean" scope = "session"/>
<!-- 위는 이와 같다 RegisterBean regBean = new RegisterBean(); 
class는 src 자바파일을 의미함-->

<jsp:setProperty name = "regBean" property = "memberid" value = "chang"/>
<!-- 위는 이와 같다 regBean.memberid = "chang" 기본값이 chang 넘어온 거에서 값이 있으면 getProperty에서 바뀜-->

<jsp:setProperty name ="regBean" property = "*" />
<!-- insertForm에 name과 RegisterBean에 필드명하고 같아야한다 -> *를 쓰면 다 입력할 필요 없음 

	private String memberid;
	private String password;
	private String name;
	private String email;
	<input type="text" name="memberid" size="10"></td>....
-->

<html>
<head><title>삽입</title></head>
<body>
<h3>회원정보</h3>
<table bordercolor="#0000ff" border="1">
<tr>
   <td><strong>ID</strong></td>
   <td><strong>PASSWD</strong></td>
   <td><strong>NAME</strong></td>
   <td><strong>EMAIL</strong></td>
</tr>
<td> <jsp:getProperty property="memberid" name="regBean"/>  </td> <!-- regBean.memberid를 가져옴 -->
<td> <jsp:getProperty property="password" name="regBean"/> </td>
<td> <%= regBean.getName() %></td> <!-- regBean 객체를 만들었으니 거기에 있는 값을 가져온다 -->
<td> <%= regBean.getEmail() %> </td> <!-- inserForm name과 regBean.java에 필드명하고 같아야함 email = private String email -->
</tr>
</table>
 


</body>
</html>
