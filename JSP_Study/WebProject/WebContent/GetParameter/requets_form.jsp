<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	table td {border : 1px solid black; padding : 5px}
</style>
<title>Insert title here</title>
</head>
<body>
	<div>
		<H2> request 테스트 폼</H2>
		<HR>
		<form name = form1 method = post action = "request_result.jsp">
			<table>
				<tr>
					<td>이름</td>
					<td><input type = text size = 10 name = username></td>
				</tr>
				<tr>
					<td>직업</td>
					<td>
					<select name = job>
						<option selected> 무직</option>
						<option>회사원</option>
						<option>전문직</option>
					</select>
					</td>
				</tr>
				<tr>
					<td> 지역  </td>
				  	<td> 
				  		<input type = "radio" name ="local" value = "서울"> 서울
				  		<input type = "radio" name ="local" value = "인천"> 인천 <br> 
				  	</td>
				</tr>
				<tr>
					<td>관심분야</td>
					<td>
						<input type =checkbox name = favorite value ="정치">정치
						<input type =checkbox name = favorite value ="사회">사회
						<input type =checkbox name = favorite value ="정보통신">정보통신
					</td>
				</tr>
				<tr>
					<td colspan = 2 >
						<input type = submit value = "확인"><input type = reset value = "취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>