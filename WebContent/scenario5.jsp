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
		<font size="10" color="black">Scenario 5</font>
		<font size="5" color="red">Name: <%=TestProcess.name%> Current score: <%=TestProcess.score%></font>
		<br>
		<img src="/lab6/img/grr_baby.jpg" />   
		<br>
		<font size="6" color="green">You got married! How many babies do you want?</font>
		<br>
		<br>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario6.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value=" (-5)" />
			<input type="submit" value="0" name= "button1" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario6.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value=" (-5)" />
			<input type="submit" value="1" name= "button2" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario6.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value="(-5)" />
			<input type="submit" value="2" name= "button3" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario6.jsp" />
			<input type="hidden" name="isCorrect" value="true" />
			<input type="hidden" name="message" value="(+5)" />
			<input type="submit" value="5" name= "button4" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<br>
		<br>
</body>
</html>