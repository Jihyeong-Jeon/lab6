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
		int a = 20;
		int b = 50;
		int result = a + b;
	%>
	
	
	<!-- 2. 출력 -->	
	<!-- out.print()과 동일한 기능을 수행한다. -->
	<!-- 형태 1 -->
	<%= 
		"out.print()과 동일 기능을 합니다."
		+ a
		+ b
	%><br/>
	
	<!-- 형태 2 -->
	<%= result %>

	<!-- 형태 3 -->
	<input type="button" value="<%= result %>" />

</body>
</html>