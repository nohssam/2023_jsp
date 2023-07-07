<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>result01페이지</h1>
	<h2>
		${year}년 ${month }월 ${day} 일
	</h2>
	<hr>
	<h2>
		<%=request.getAttribute("year") %>년 
		<%= request.getAttribute("month") %>월 
		 <%= request.getAttribute("day") %> 일
	</h2>
</body>
</html>