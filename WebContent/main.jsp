<%@page import="com.dao.UserEntity"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- Score Board --%>
<font size="10" color="red">Gustavo's Life Simulator</font>
<br>
<br>
<img src="/lab6/img/gustavo.jpg" /> 
<br>
<font size="5" color="blue">Ranking</font>
<br>
<table border="1">
	<tr>
		<th>Rank</th>
		<th>Name</th>
		<th>Score</th>
	</tr>
	
<%
	UserDAO dao = new UserDAO();
	ArrayList<UserEntity> userList = dao.selectAll();
	int count = 0;
	int prev_score = -1; 
	for (UserEntity user : userList) {
		if(user.getScore() != prev_score) {
			count++;
		}
%>
	<tr>
		<td WIDTH="200"><%= count %></td>
		<td WIDTH="200"><%= user.getName() %></td>
		<td WIDTH="200"><%= user.getScore() %></td>
	</tr>
<% 
	prev_score = user.getScore();
	}
%>
</table>

<%-- Game Start And User Id Validation --%>
<form action = "ValidationServlet" method = "post">
	<p>Name : <input type="text" name = "name" value = ""> </p>
	<input type="submit" value = "Game Start" style="height:100px;width:200px;font-size:25px;" >
</form>





</body>
</html>