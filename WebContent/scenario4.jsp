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
		<font size="10" color="black">Scenario 4</font>
		<font size="5" color="red">Name: <%=TestProcess.name%> Current score: <%=TestProcess.score%></font>
		<br>
		<img src="/lab6/img/grr_scout.jpg" />   
		<br>
		<font size="4" color="green">It is recruiting day! But many companies already heard about you and want you! Where would you go?</font>
		<br>
		<br>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario5.jsp" />
			<input type="hidden" name="isCorrect" value="true" />
			<input type="hidden" name="message" value="Correct! Prof. Gustavo only choose true companies! (+5)" />
			<input type="submit" value="IBM" name= "button1" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario5.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value=" (-5)" />
			<input type="submit" value="Google" name= "button2" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario5.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value="(-5)" />
			<input type="submit" value="Facebook" name= "button3" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<br>
		<br>
</body>
</html>