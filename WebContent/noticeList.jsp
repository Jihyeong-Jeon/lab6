<%@page import="com.dao.NoticeEntity"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.NoticeDAO"%>
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
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일자</th>
		<th>조회수</th>
	</tr>
	
<%
	NoticeDAO dao = new NoticeDAO();
	ArrayList<NoticeEntity> noticeList = dao.selectAll();
	
	for (NoticeEntity notice : noticeList) {
%>
	<tr>
		<td><%= notice.getNo() %></td>
		<td><%= notice.getTitle() %></td>
		<td><%= notice.getId() %></td>
		<td><%= notice.getWriteDate() %></td>
		<td><%= notice.getHit() %></td>
	</tr>
<% 
	}
%>
</table>

</body>
</html>