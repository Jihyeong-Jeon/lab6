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
		<font size="10" color="black">Scenario 8</font>
		<font size="5" color="red">Name: <%=TestProcess.name%> Current score: <%=TestProcess.score%></font>
		<br>
		<img src="/lab6/img/grr_old.jpg" />   
		<br>
		<font size="6" color="green">You are now the oldest professor at Purdue. When will you retire?</font>
		<br>
		<br>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenarioEnd.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value=" (-5)" />
			<input type="submit" value="Never. I will bury my bones at this school!" name= "button1" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenarioEnd.jsp" />
			<input type="hidden" name="isCorrect" value="true" />
			<input type="hidden" name="message" value=" (+5)" />
			<input type="submit" value="Right now. I am sick of boilermakers now." name= "button2" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<br>
		<br>
</body>
</html>