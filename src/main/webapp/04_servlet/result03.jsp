<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>result03페이지</h1>
	<h2>
		<%=request.getAttribute("s1") %> 
		<%=request.getAttribute("op") %>
		<%=request.getAttribute("s2") %>
		= <%=request.getAttribute("result") %>
		
	</h2>
	<h2>
		${s1} ${op} ${s2} = ${result} 		
	</h2>
</body>
</html>