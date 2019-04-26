<%@page import="com.dao.UserEntity"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.UserDAO"%>
<%@page import="com.test.TestProcess"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Finish</title>
</head>
<body>
		<font size="8" color="green">Thank you for playing!</font>
		<br>
		<img src="/lab6/img/grr_end.jpg" />  
		<br>
		<%
			UserDAO dao = new UserDAO();
			if(TestProcess.alreadyUser) {
				dao.update(TestProcess.name, TestProcess.score);
			} else {
				dao.insert(TestProcess.name, TestProcess.score, TestProcess.newPW);
			}
			TestProcess.alreadyUser = false;
		%>
		Congratulation <%= TestProcess.name %> !!
		<br>
		Your score: <%= TestProcess.score %>
		<br>

		<input type="submit" value = "Back to main" onclick = "main()">

		
		<script type="text/javascript">
 			function main(){
 				window.location.href = "main.jsp";
 			}
		</script>
</body>
</html>