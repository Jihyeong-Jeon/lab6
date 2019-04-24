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
		<%!
			public void adjust(int num) {
				TestProcess.score += num;
			}
		%>
		<%
			TestProcess.score = 10;
		%>
		<font size="10" color="black">Scenario 1</font>
		<br>
		<img src="/lab6/img/gustsda.jpg" />   
		<br>
		<font size="6" color="green">You are sick. But today we have a midterm. Would you cancel the midterm or still go? </font>
		<br>
		<br>
		
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario2.jsp" />
			<input type="hidden" name="isCorrect" value="false" />
			<input type="hidden" name="message" value="Wrong! Prof. Gustavo will never let us down! (-5)" />
			<input type="submit" value="Screw it. Cancel it!" name= "button1" style="height:200px;width:400px;font-size:25px;white-space: pre-line;" /> 
		</form>
		
		<form action = "NextScenarioServlet" method = "post">
			<input type="hidden" name="next_scenario" value="scenario2.jsp" />
			<input type="hidden" name="isCorrect" value="true" />
			<input type="hidden" name="message" value="You are correct! Prof. Gustavo never gives up! (+5)" />
			<input type="submit" value="No, I can't let my students down! I'm going!" name= "button2" style="height:200px;width:600px;font-size:25px;white-space: pre-line;" /> 
		</form>
		
		<script type="text/javascript">
 			function correctAnswer(pageURL){
 				alert("You are correct! Prof. Gustavo never gives up! (+5)");
 				window.location.href = pageURL;
 			}
 			
 			function wrongAnswer(pageURL) {
 				alert("Wrong! Prof. Gustavo will never let us down! (-5)");
 				window.location.href = pageURL;
 			}
		</script>
		<!-- <button style="height:200px;width:300px;font-size : 25px">Screw it. Cancel it!</button> 
		<button style="height:200px;width:300px;font-size : 25px">No, I can't let my students down! I am going!</button>-->
		<br>
		<br>
		<font size="5" color="red">Name: <%=TestProcess.name%> Current score: <%=TestProcess.score%></font>
		

		<!-- 
		<input type="submit" 
      	 value="HOME" 
      	 onclick="goHome()" 
       style="font-size : 20px; width: 100%; height: 100px;" /> 
		<input type="button" value="Screw it. Cancel it!">
		<input type="button" value="No I can't let my students down! I am going!"> -->
</body>
</html>