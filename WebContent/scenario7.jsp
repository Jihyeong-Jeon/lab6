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
<title>Insert title here</title>
</head>
<body>
		<font size="10" color="black">Scenario 7</font>
		<font size="5" color="red">Name: <%=TestProcess.name%> Current score: <%=TestProcess.score%></font>
		<br>
		<img src="/lab6/img/adams cheating.jpg" />   
		<br>
		<font size="6" color="green">You saw a student cheating! What would you do?</font>
		<br>
		<br>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario8.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value="(-5)" />
			<input type="submit" value="Just act like you never saw it." name= "button1" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario8.jsp" />
			<input type="hidden" name="isCorrect" value="true" />
			<input type="hidden" name="message" value="(+5)" />
			<input type="submit" value="Wait until the midterm ends and tell him not to do it again. Give half score." name= "button2" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<br>
		<br>
</body>
</html>