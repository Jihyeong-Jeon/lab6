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
		<td><%= count %></td>
		<td><%= user.getName() %></td>
		<td><%= user.getScore() %></td>
	</tr>
<% 
	prev_score = user.getScore();
	}
%>
</table>

</body>
</html>