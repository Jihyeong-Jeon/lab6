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
		<font size="10" color="black">Scenario 2</font>
		<font size="5" color="red">Name: <%=TestProcess.name%> Current score: <%=TestProcess.score%></font>
		<br>
		<img src="/lab6/img/grr_school.jpg" />   
		<br>
		<font size="6" color="green">You are now in elementary school. You got caught by teacher while illegally tutoring other students!</font>
		<br>
		<br>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario3.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value="Prof. Gustavo never apologized someone in his life! (-5)" />
			<input type="submit" value="Apologize to the teacher and give back the money to the kids" name= "button1" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario3.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value="Prof. Gustavo is not good at fighting (-5)" />
			<input type="submit" value="Eleminate the teacher" name= "button2" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario3.jsp" />
			<input type="hidden" name="isCorrect" value="true" />
			<input type="hidden" name="message" value="Correct! Prof. Gustavo learned negotiating skills from early age! (+5)" />
			<input type="submit" value="Make a deal with the teacher. Give half to make her shut." name= "button2" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		<br>
		<br>
</body>
</html>