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
		<%
			TestProcess.score = 10;
		%>
		<font size="10" color="black">Scenario 1</font>
		<font size="5" color="red">Name: <%=TestProcess.name%> Current score: <%=TestProcess.score%></font>
		<br>
		<img src="/lab6/img/grr_bday.jpg" />   
		<br>
		<font size="6" color="green">Happy birthday! Now you are 1 year old! What do you want for the present?</font>
		<br>
		<br>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario2.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value="You are now 1 year old! You can\'t even read! (-5)" />
			<input type="submit" value="I want a book 'The C Programming Language' wrote by Dennis Ritchie!" name= "button1" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario2.jsp" />
			<input type="hidden" name="isCorrect" value="true" />
			<input type="hidden" name="message" value="You are correct! Prof. Gustavo\'s love towards computer started from here! (+5)" />
			<input type="submit" value="I want a computer!" name= "button2" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario2.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value="Wrong! Prof. Gustavo was able to code when he was 6 months old. (-5)" />
			<input type="submit" value="I am just 1 year old. I don't even know what I'm thinking!" name= "button3" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<br>
		<br>
</body>
</html>